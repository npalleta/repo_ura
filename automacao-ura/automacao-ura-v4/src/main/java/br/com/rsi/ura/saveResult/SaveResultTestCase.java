package br.com.rsi.ura.saveResult;

import java.util.Properties;

import org.apache.log4j.Logger;

import br.com.rsi.ura.serviceJson.ZgenAPI;
import br.com.rsi.ura.serviceJson.jsonData.Json;
import br.com.rsi.ura.serviceSql.SQLConnectionManager;
import br.com.rsi.ura.sheets.resultado.EscritorCSV;
import br.com.rsi.ura.utils.UtilsUra;
import cucumber.api.Scenario;

/**
 * @author hugo.santos
 */
public final class SaveResultTestCase {

	private static final Logger LOG = Logger.getLogger(SaveResultTestCase.class);
	private static String[] dateHour = UtilsUra.date("HH:mm:ss", "yyyy/MM/dd").split(";");
	private static String dirAudio = "";
	private static boolean rodou = false;
	
	public static String getDirAudio() {
		return dirAudio;
	}
	public static void setDirAudio(String dirAudio) {
		SaveResultTestCase.dirAudio = dirAudio;
	}
	public static void rodouSim() {
		rodou = true;
	}
	public static void rodouNao() {
		rodou = false;
	}
	public static boolean getRodou() {
		return rodou;
	}
	
	/**
	 * @param scenario --> Nome do cenário que está sendo executado.
	 * @category Responsável por enviar o resultado da execução de cada cenário via BD.
	 */
	public static void finalizaBD(Scenario scenario) {
		if (rodou) {
			boolean status = false;
			String statu = "FAILED";
			String nomeCenario = scenario.getName();
			String id = UtilsUra.lerID(nomeCenario);
			try {
				if (scenario.getStatus().equals("passed")) {
					status = true;
					statu = "PASSED";
					UtilsUra.clearInfoCenario();
				}
			} catch (Exception e) {
				LOG.error("Erro ao pegar o status final do cenário: " + nomeCenario, e);
			}
			EscritorCSV escritorCSV = new EscritorCSV();
			escritorCSV.escreverResultado(id, scenario.getName(), statu, dateHour[1], dateHour[0]);
			// SQLConnectionManager.salvaStatusExecucaoTabelaFuncionalidade(id, status, dateHour[1], dateHour[0]);
		}
	}
	
	/**
	 * @param scenario --> Nome do cenário que está sendo executado.
	 * @category Responsável por enviar o resultado da execução de cada cenário via JSON.
	 */
	public static void finalizarJson(Scenario scenario) {
		Properties properties = UtilsUra.getProp(Json.getWayProperties());
		ZgenAPI apiComunication = new ZgenAPI();
		
		apiComunication.POST_Token(properties.getProperty("urlToken"));
		apiComunication.GET_ProjectCaseCode(properties.getProperty("urlProject+CaseCode"), scenario);
		apiComunication.POST_Json(Json.getJson(), properties.getProperty("urlJson"));
	} 
}