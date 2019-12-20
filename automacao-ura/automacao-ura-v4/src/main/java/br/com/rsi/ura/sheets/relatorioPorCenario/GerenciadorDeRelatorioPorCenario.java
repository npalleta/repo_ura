package br.com.rsi.ura.sheets.relatorioPorCenario;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import org.apache.log4j.Logger;
import org.apache.poi.common.usermodel.HyperlinkType;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.CreationHelper;
import org.apache.poi.ss.usermodel.Font;
import org.apache.poi.ss.usermodel.Hyperlink;
import org.apache.poi.ss.usermodel.IndexedColors;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import com.google.common.io.Files;

import br.com.rsi.ura.configuration.GerenciadorDePropriedades;
import br.com.rsi.ura.sheets.alm.ReportALM;
import br.com.rsi.ura.sheets.massa.PlanilhaDTO;
import br.com.rsi.ura.sheets.reportLog.LogGenerator;
import br.com.rsi.ura.utils.UtilsUra;

/**
 * 
 * @category Responsável por preencher o 'RelatórioPorCenário' com a informações
 *           de cada teste executado.
 * @author hugo.santos
 *
 */
public final class GerenciadorDeRelatorioPorCenario {

	private static final Logger LOG = Logger.getLogger(GerenciadorDeRelatorioPorCenario.class);
	private static String caminhoDoArquivo = GerenciadorDePropriedades.getInstance().getReportPorCenarioExcelOutputFile();
	private static String[] hourDate = UtilsUra.date("HHmm", "yyyyMMdd").split(";");

	/**
	 * @category Busca na planilha de relatorio por ID e por Segmento. Verifica se já houve um teste, e se o teste foi ou não bem-sucedido.
	 * @param id --> Identificador único de cada cenário, por exemplo, IBPJ_0001.
	 * @return valorBoolean: Verdadeiro se e somente se já houve um teste bem-sucedido para o cenário indicado.
	 */
	public static synchronized boolean seraQueJaDeuCerto(String id) {

		final int colunaID = 0;
		int colunaStatus = 2;
		boolean estaOk = false;
		XSSFWorkbook workbook = null;
		XSSFSheet planilha = null;
		InputStream fi = null;

		try {
			fi = new FileInputStream(new File(caminhoDoArquivo));
			workbook = new XSSFWorkbook(fi);
			planilha = workbook.getSheetAt(0);

			search: for (Row row : planilha) {
				Cell cellFn = row.getCell(colunaID);
				Cell cellSeg = row.getCell(colunaStatus);
				if (cellFn.toString().trim().equals(id)) {
					if (cellSeg.toString().trim().equals("ok")) {
						estaOk = true;
					}
					break search;
				}
			}
		} catch (IOException e) {
			LOG.info("---- Erro na leitura do arquivo do relatório de status por cenário em: " + caminhoDoArquivo
					+ " ----");
			RelatorioValues.setTipoErro("SCRIPT");
			RelatorioValues.setErro("Erro - RelatorioPorCenario.xlsx impossibilitado de ser acessado.");
			LOG.error(e.getMessage());
		} finally {
			try {
				fi.close();
			} catch (IOException e) {
				LOG.info("---- Erro no fechamento do arquivo do relatório de status por cenário em: " + caminhoDoArquivo
						+ " ----");
				RelatorioValues.setTipoErro("SCRIPT");
				RelatorioValues.setErro("Erro - RelatorioPorCenario.xlsx impossibilitado de ser acessado.");
				LOG.error(e.getMessage());
			}
		}
		return estaOk;
	}

	/**
	 * @param id
	 *            --> ID do teste que está sendo executado.
	 * @category Responsável por atualizar o Nº de execuções de cada teste.
	 */
	private static synchronized void pupulaQuantExeCenario(String id) {
		XSSFSheet planilha = null;

		try (InputStream fi = new FileInputStream(new File(caminhoDoArquivo)); 
				XSSFWorkbook workbook = new XSSFWorkbook(fi)) {
			
			planilha = workbook.getSheetAt(0);
			int rowNum = localizarLinhaPorID(planilha, id);
			double numQtd = planilha.getRow(rowNum).getCell(3).getNumericCellValue();

			if (numQtd == 0.0)
				planilha.getRow(rowNum).getCell(3).setCellValue(1.0);
			else
				planilha.getRow(rowNum).getCell(3).setCellValue(numQtd + 1);
			
			
			OutputStream out = new FileOutputStream(new File(caminhoDoArquivo));
			workbook.write(out);
			out.close();
			
		} catch (IOException e) {
			LOG.info("---- Erro na leitura do arquivo do 'RelatórioPorCenário' na coluna Quant.Execuções em: " + caminhoDoArquivo + " ----");
			LOG.error(e.getMessage());
		}
	}

	/**
	 * @category Encontra a primeira linha onde houver o ID. Idealmente, há um ID único para cada linha.
	 * @param planilha --> Onde fazer a busca (Sheet).
	 * @param id --> Identificador que serve para buscar cada linha.
	 * @return rowNumber: O índice da linha encontrada.
	 */
	private static synchronized int localizarLinhaPorID(XSSFSheet planilha, String id) {
		int rowNumber = -1;

		search: for (Row row : planilha) {
			Cell cell = row.getCell(0);
			if (cell.toString().trim().toUpperCase().equals(id)) {
				rowNumber = row.getRowNum();
				break search;
			}
		}
		return rowNumber;
	}

	private static synchronized String localizaCenarioComID(String id) {
		XSSFWorkbook workbook = null;
		OutputStream os = null;
		InputStream is = null;
		XSSFSheet planilha;

		try {
			is = new FileInputStream(new File(caminhoDoArquivo));
			workbook = new XSSFWorkbook(is);
			planilha = workbook.getSheetAt(0);
			int linha = localizarLinhaPorID(planilha, id);
			int colunaCenario = 1;
			String valueCenario = planilha.getRow(linha).getCell(colunaCenario).getStringCellValue();
			os = new FileOutputStream(new File(caminhoDoArquivo));
			workbook.write(os);
			return valueCenario;
		} catch (FileNotFoundException e) {
			LOG.error(e.getMessage(), e);
		} catch (IOException e) {
			LOG.error(e.getMessage(), e);
		} finally {
			try {
				if (workbook != null)
					workbook.close();
				if (os != null)
					os.close();
				if (is != null)
					is.close();
			} catch (IOException e) {
				LOG.error(e.getMessage(), e);
			}
		}
		return null;
	}

	/**
	 * @category Escreve na planilha de relatorio qual foi o resultado de um cenário testado.
	 * @param id --> Identificador único do cenário.
	 * @param segmento --> Em qual segmento o cenário foi testado.
	 * @param status --> Se o teste passou ou não.
	 */
	public static synchronized void escreverResultado(String id, boolean status, String nomeCenario, String audioPath) {

		//Verifica se o Get ID do idCenário está vazio, se estiver não popula a quantidade de execução do cenário.
		if ((PlanilhaDTO.getIdCenario() == null) ? false : true) {
			pupulaQuantExeCenario(PlanilhaDTO.getIdCenario().trim());
		} else {
			RelatorioValues.setIdLog("Audio");
		}

		XSSFWorkbook workbook = null;
		XSSFSheet planilha = null;
		OutputStream os = null;
		InputStream is = null;

		try {
			is = new FileInputStream(new File(caminhoDoArquivo));
			workbook = new XSSFWorkbook(is);
			planilha = workbook.getSheetAt(0);

			int linha = localizarLinhaPorID(planilha, id);

			if (nomeCenario == null || nomeCenario.isEmpty()) {
				if (id != null) {
					nomeCenario = localizaCenarioComID(id);
				}
			}

			int colunaCenario = 1;
			planilha.getRow(linha).getCell(colunaCenario).setCellValue(nomeCenario);
			int colunaStatus = 2;
			planilha.getRow(linha).getCell(colunaStatus).setCellValue(status ? "ok" : "nok");
			int codeRequest = 4;
			planilha.getRow(linha).getCell(codeRequest).setCellValue(RelatorioValues.getCodeRequest());
			int autom = 5;
			planilha.getRow(linha).getCell(autom).setCellValue(RelatorioValues.getIp());
			int colunaTipoErro = 6;
			planilha.getRow(linha).getCell(colunaTipoErro).setCellValue(RelatorioValues.getTipoErro());
			int colunaIdMassa = 7;
			planilha.getRow(linha).getCell(colunaIdMassa).setCellValue(RelatorioValues.getIdMassa());
			int colunaErro = 8;
			planilha.getRow(linha).getCell(colunaErro).setCellValue(RelatorioValues.getErro());
			int horaData = 11;
			planilha.getRow(linha).getCell(horaData).setCellValue(RelatorioValues.getDataHora());

			// AUDIO
			if (RelatorioValues.getIdLog() != null) {
				planilha.getRow(linha).getCell(10).setCellValue(RelatorioValues.getIdLog());
			} else {
				// ID da coluna
				int idLog = 10;
				String nomeArquivo = PlanilhaDTO.getIdCenario() + "_" + "HR_" + hourDate[0] + "_DATE_" + hourDate[1];
				String audioDestination = GerenciadorDePropriedades.getInstance().getReportExcelOutputDirectory();
				audioDestination = audioDestination + "/" + hourDate[1] + "/audios/" + nomeArquivo + ".wav";

				// Seta uma String na celula especificada
				planilha.getRow(linha).getCell(idLog).setCellValue(audioDestination.replace("//", "/").replace("/", "\\"));

				// Formata o hiper link
				CreationHelper createHelper = workbook.getCreationHelper();
				CellStyle hlink_style = workbook.createCellStyle();
				Font hlink_font = workbook.createFont();
				hlink_font.setUnderline(Font.U_SINGLE);
				hlink_font.setColor(IndexedColors.BLUE.getIndex());
				hlink_style.setFont(hlink_font);
				Hyperlink link = createHelper.createHyperlink(HyperlinkType.FILE);

				// Pega o endereço de memória especifico do audio de cada teste, gera o
				// HiperLink e salva o ultimo audio gravado em 'audios'.
				boolean gravouAudio = true;
				try {
					Files.copy(new File(audioPath), new File(audioDestination));
				} catch (FileNotFoundException e) {
					LOG.info("ÁUDIO NÃO EXISTE PARA SER COPIADO");
					planilha.getRow(linha).createCell(10).setCellValue("NÃO TEM ÁUDIO");
					planilha.getRow(linha).getCell(10).removeHyperlink();
					gravouAudio = false;
				}
				if (gravouAudio) {
					audioDestination = audioDestination.replace("\\", "//");
					link.setAddress(audioDestination);
					planilha.getRow(linha).getCell(idLog).setHyperlink(link);
					planilha.getRow(linha).getCell(idLog).setCellStyle(hlink_style);
				}
			}
			// LOG
			int evidenciaLog = 12;

			// Verifica se o LOG.txt está criado
			new LogGenerator();
			File arqLog = new File(LogGenerator.getNomeLog());
			if (!arqLog.exists()) {
				planilha.getRow(linha).getCell(evidenciaLog).setCellValue("SEM LOG");
			} else {
				// Seta uma String na celula especificada
				planilha.getRow(linha).getCell(evidenciaLog).setCellValue(LogGenerator.getNomeLog());

				// Formata o hiper link
				CreationHelper createHelper = workbook.getCreationHelper();
				CellStyle hlink_style = workbook.createCellStyle();
				Font hlink_font = workbook.createFont();
				hlink_font.setUnderline(Font.U_SINGLE);
				hlink_font.setColor(IndexedColors.BLUE.getIndex());
				hlink_style.setFont(hlink_font);
				Hyperlink link = createHelper.createHyperlink(HyperlinkType.FILE);

				// Pega o endereço de memória especifico da EvidenciaLog de cada teste e gera o HiperLink na planilha de RelatorioPorCenario.
				String evidenciaLogDestination = LogGenerator.getNomeLog();
				link.setAddress(evidenciaLogDestination.replace("\\", "//"));

				// Seta Link e Style
				planilha.getRow(linha).getCell(evidenciaLog).setHyperlink(link);
				planilha.getRow(linha).getCell(evidenciaLog).setCellStyle(hlink_style);
			}

			os = new FileOutputStream(new File(caminhoDoArquivo));
			workbook.write(os);
			os.flush();
			new ReportALM().excuteALM();
		} catch (IOException e) {
			LOG.error(e.getMessage(), e);
		} finally {
			try {
				if (workbook != null)
					workbook.close();
				if (os != null)
					os.close();
				if (is != null)
					is.close();
			} catch (IOException e) {
				LOG.error(e.getMessage(), e);
			}
		}
	}
}