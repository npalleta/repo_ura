package br.com.rsi.ura.sheets.alm;

import org.apache.log4j.Logger;

import br.com.rsi.ura.serviceJson.jsonData.Json;

public class ReportALM {

	private final Logger LOG = Logger.getLogger(ReportALM.class);
	protected final static String WAY_ALM_EVIDENCE = "\\msclusterh02fs\\evidencias\\_PROJETOS\\Monitoração continuada URA\\ALM\\evidencias";
	protected final static String WAY_WORKBOOK_REPORT_ALM = "C:\\testes\\ALM.xlsx";
	protected final static String STATUS_OK = "Passed";
	
	public void excuteALM() {
		if(Json.getStatusScenario()) {
			new EditInfoALM().editWorkbookALM();
		} else {
			LOG.info("Pulando Edição do ALM.");
		}
	}
}