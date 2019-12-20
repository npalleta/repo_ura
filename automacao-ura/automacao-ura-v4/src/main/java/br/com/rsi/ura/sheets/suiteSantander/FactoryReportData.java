package br.com.rsi.ura.sheets.suiteSantander;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Properties;

import org.apache.log4j.Logger;

import br.com.rsi.ura.sheets.massa.PlanilhaDTO;


public class FactoryReportData {

	private static final Logger LOG = Logger.getLogger(FactoryReportData.class);
	private RelatorioDadosDTO dados = null;
	private static FactoryReportData data;
	private SimpleDateFormat format = null;
	private SimpleDateFormat formatHour = null;
	private String dataFormatted;
	private String pathPlanilha;
	private final String LOG_FOLDER = "LOGS";
	private final String EXTENSION_REPORT = ".xlsx";
	private final String EXTENSION_AUDIO = PlanilhaDTO.getIdCenario() + ".wav";
	private final String AUDIO_FOLDER = "audios";
	private final String JSON_REPORT_ERRO = "jsonErrorService.json";
	
	private FactoryReportData() {
		super();
	}
	
	public static FactoryReportData getInstance() {
		if(data == null) {
			data = new FactoryReportData();
			Properties properties = new Properties();
			InputStream inputStream = null;
			try {
				inputStream = new FileInputStream(".\\projeto.properties");
				properties.load(inputStream);
				data.pathPlanilha = properties.getProperty("report.excel.outputDirectory");
				data.format =  new SimpleDateFormat("yyyyMMdd");
				data.formatHour =  new SimpleDateFormat("HHmmssS");
				data.dataFormatted = data.format.format(new Date());
				data.dados = new RelatorioDadosDTO();
			} catch(Exception e ) {
				LOG.error(e.getMessage(), e);
			} finally {
				if (inputStream != null) {
					try {
						inputStream.close();
					} catch (IOException e) {
						LOG.error(e.getMessage(), e);
					}
				}
			}
		}
		return data;
	}

	public void populaDados(
			String nomeFeature, 
			String cenario, 
			String fraseEsperada, 
			String acao,
			String fraseTraduzida,
			Boolean testeAssert, 
			String caminhoAudio, 
			Double percentualAcerto, 
			String possiveisIds, 
			String erroSistemico, 
			String erroFerramenta) {
		dados = new RelatorioDadosDTO(nomeFeature, cenario, fraseEsperada, acao , fraseTraduzida, 
				testeAssert, caminhoAudio, percentualAcerto, possiveisIds, erroSistemico, erroFerramenta);
	}
	
	public String getAbsoluteFolderLOG() {
		if(dados.getNomeFeature() != null) {
			return pathPlanilha+"/"+data.format.format(new Date())+"/"+LOG_FOLDER+"/OK";
		}
		return null;
	}

	public String getAbsoluteReportName() {
		if(dados.getNomeFeature() != null) {
		return pathPlanilha+"/"+data.format.format(new Date())+"/"+dados.getNomeFeature()+"_"+EXTENSION_REPORT;
		}else {
			return null;
		}
	}
	
	public String getAbsoluteFolder() {
		if(pathPlanilha != null && dataFormatted!= null) {
		return pathPlanilha+"/"+data.format.format(new Date())+"/"+AUDIO_FOLDER;
		}else {
			return null;
		}
	}
	
	public String getJsonReportErro() {
		if(pathPlanilha != null && dataFormatted!= null) {
			return pathPlanilha+"/"+data.format.format(new Date())+"/"+JSON_REPORT_ERRO;
			}else {
				return null;
			}
	}
	
	public String getAbsoluteAudioName() {
		if(pathPlanilha!= null && dataFormatted != null) {
		return pathPlanilha+"/"+data.format.format(new Date())+"/"+AUDIO_FOLDER+"/"+formatHour.format(new Date())+ "_" +EXTENSION_AUDIO;
		}else {
			return null;
		}
	}
	
	public String getPartialPathAudioName(int rownum) {
		if(dataFormatted != null && dados.getNomeFeature() != null) {
		return AUDIO_FOLDER+"/"+rownum+EXTENSION_AUDIO;
		}else {
			return null;
		}
	}
	public String getDataFormatted() {
		return dataFormatted;
	}
	public String getPathPlanilha() {
		return pathPlanilha;
	}
	public RelatorioDadosDTO getDados() {
		return dados;
	}
}