package br.com.rsi.ura.sheets.reportLog;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;

import br.com.rsi.ura.serviceJson.jsonData.Json;
import br.com.rsi.ura.sheets.massa.PlanilhaDTO;
import br.com.rsi.ura.utils.UtilsUra;

public class LogGenerator {
	
	private final Logger LOG = Logger.getLogger(LogGenerator.class);
	private List<String> conteudo = new ArrayList<String>();
	private static String caminhoLog;
	private static String nameArq;
	private static String nomeLogNok;
	private static String nomeLogOk;
	private static String way_final;
	private String dataIni;
	private String dataFim;

	public LogGenerator() {
		if(ValuesDateLog.getDataInicio() == null)
			this.dataIni = "O cenário " + PlanilhaDTO.getIdCenario() + " ainda NÃO";
		else
			this.dataIni = ValuesDateLog.getDataInicio();
		if(ValuesDateLog.getDataFinal() == null)
			this.dataFim = "Passou?";
		else
			this.dataFim = ValuesDateLog.getDataFinal();
		String[] horaData = UtilsUra.date("HH.mm", "yyyyMMdd").split(";");
		caminhoLog = "C:\\relatorio\\" + horaData[1];
		nameArq = PlanilhaDTO.getIdCenario() + ".txt";
		nomeLogNok = caminhoLog + "\\LOGS\\" + nameArq;
		nomeLogOk = caminhoLog + "\\LOGS\\OK\\" + nameArq;
		gravarArquivo();
	}
	
	public static String getNomeLog() {
		return way_final;
	}
	
	public static String getNomeArquivo() {
		return nameArq;
	}

	public void leArquivoLog() {
		BufferedReader leArquivo = null;
		boolean encontrouDataFim = false;
		
		try {
			String linhaLog;
			leArquivo = new BufferedReader(new FileReader(caminhoLog + "\\ura.log"));
		
			//Procura a data Inicial
			while ((linhaLog = leArquivo.readLine()) != null) {
				if (linhaLog.contains(dataIni)) {
					conteudo.add(linhaLog);
					
					// Procura a data Final
					while ((linhaLog = leArquivo.readLine()) != null) {
						conteudo.add(linhaLog);
						if (linhaLog.contains(dataFim)) {
							encontrouDataFim = true;
							break;
						}
					}
				}
			}
			
			if(!encontrouDataFim) {
				LOG.info(">>> Não foi possível gerar o LOG para o cenário " + PlanilhaDTO.getIdCenario() + " <<<");
				UtilsUra.falhou();
			} 
			
		} catch (IOException e) {
			LOG.error(e.getMessage(), e);
		} finally {
			try {
				leArquivo.close();
			} catch (IOException e) {
				LOG.error(e.getMessage(), e);
			}
		}
	}

	public void gravarArquivo() {
		leArquivoLog();
		FileWriter gravaNoArquivo = null;
		try {
			if(Json.getStatusScenario()) {
				gravaNoArquivo = new FileWriter(new File(nomeLogOk));
				way_final = nomeLogOk;
			} else {
				gravaNoArquivo = new FileWriter(new File(nomeLogNok));
				way_final = nomeLogNok;
			}
			for (int posi = 0; posi < conteudo.size(); posi++) {
				gravaNoArquivo.write(conteudo.get(posi) + "\r\n");
			}
			
			LOG.info("LOG gerado com sucesso -- " + PlanilhaDTO.getIdCenario());
		} catch (Exception e) {
			LOG.error(e.getMessage(), e);
		} finally {
			try {
				gravaNoArquivo.flush();
				gravaNoArquivo.close();
			} catch (IOException e) {
				LOG.error(e.getMessage(), e);
			}
		}
	}
}