package br.com.rsi.ura.sheets.resultado;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.Writer;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.commons.csv.CSVFormat;
import org.apache.commons.csv.CSVPrinter;
import org.apache.log4j.Logger;

import br.com.rsi.ura.configuration.GerenciadorDePropriedades;

/**
 * 
 * @author hugo.santos
 * @category Responsável por popular o resultado.csv e criar arquivos.
 *
 */
public class EscritorCSV {

	private String caminhoDoArquivo = null;
	public SimpleDateFormat format = null;
	public String dataFormatted = null;
	private static final Logger LOG = Logger.getLogger(EscritorCSV.class);
	
	/**
	 * @category Atribui a uma variável um caminho do arquivo.csv e atribui a uma outra variável a data atual.
	 */
	public EscritorCSV() {
		format = new SimpleDateFormat("yyyyMMdd");
		this.dataFormatted = format.format(new Date());
		
		this.caminhoDoArquivo = GerenciadorDePropriedades.getInstance().getReportExcelOutputDirectory();
	}
	
	/**
	 * @category Excreve no o cabeçalho no resultado.csv.
	 */
	public void escreverCabecalho() {
		
		File file = new File(caminhoDoArquivo+"/"+dataFormatted+"/resultado.csv");
		if (!file.exists()) {
			PrintWriter writer = null;
			try {
				writer = new PrintWriter(
							new BufferedWriter(
								new FileWriter(caminhoDoArquivo+"/"+dataFormatted+"/resultado.csv")));
			} catch (IOException e) {
				e.printStackTrace();
			}
			writer.flush();
			writer.close();
		}
	}

	/**
	 * @param s --> Um Object.
	 * @category Responsável por escrever no resultado.csv e printar no console.
	 */
	private void escreverLinha(Object[] s) {
		Writer writer;
		CSVPrinter printer;
		try {
			writer = new BufferedWriter(
						new PrintWriter(
							new FileWriter(caminhoDoArquivo+"/"+dataFormatted+"/resultado.csv", true)));
			printer = new CSVPrinter(writer, CSVFormat.RFC4180.withDelimiter(';'));
			printer.printRecord(s);
			printer.flush();
			printer.close();
		} catch (IOException e) {
			LOG.error(e.getMessage());
		}
	}
	
	/**
	 * @param idCenario --> ID do cenário. 
	 * @param nomeCenario --> Descrição do cenário.
	 * @param passou --> Valor se o teste passou.
	 * @param data --> Data de execução.
	 * @param hora --> Hora da execução.
	 * @category Atribui os valores das variáveis a um Array de String e chama a função escreverLinha().
	 */
	public void escreverResultado(String idCenario, String nomeCenario, String passou, String data, String hora) {
		String[] s = new String[8];
		s[0] = idCenario;
		s[1] = nomeCenario;
		s[2] = passou;
		s[3] = data;
		s[4] = hora;
		this.escreverLinha(s);
	}
}