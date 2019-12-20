package br.com.rsi.ura.erroReport;

import org.apache.log4j.Logger;

import br.com.rsi.ura.erroReport.stepErrorApplication.Application;
import br.com.rsi.ura.erroReport.stepErrorEnvironment.Environment;
import br.com.rsi.ura.erroReport.stepErrorMassa.Massa;
import br.com.rsi.ura.erroReport.stepErrorReTest.Retest;
import br.com.rsi.ura.sheets.relatorioPorCenario.RelatorioValues;
import br.com.rsi.ura.utils.UtilsUra;

/**
 * @author hugo.santos
 */
public class ErrorReport {
	
	public static final Logger LOG = Logger.getLogger(ErrorReport.class);
	
	public ErrorReport() {
	}
	
	public ErrorReport(String translatedText, String id, String scenario) {
		new Massa(translatedText, id, scenario).massa();
		new Application(translatedText).application();
		new Retest(translatedText, scenario).reTeste();
		new Environment(translatedText, scenario).environment();
	}
	
	/**
	 * @param typeError --> Tipo do erro.
	 * @param error --> Descrição do erro.
	 * @param message --> Mensagem para ser aprensentada que condiz com o erro.
	 */
	protected void upResult(String typeError, String error, String message) {
		RelatorioValues.setTipoErro(typeError);
		RelatorioValues.setErro(error);
		LOG.info("<" + typeError + "> --- " + message);
		UtilsUra.falhou();
	}
	
	/**
	 * @param typeError --> Tipo do erro.
	 * @param error --> Descrição do erro.
	 * @param message --> Mensagem para ser aprensentada que condiz com o erro.
	 */
	protected void upResultMassa(String typeError, String error, String message) {
		RelatorioValues.setTipoErro(typeError);
		RelatorioValues.setErro(error);
		RelatorioValues.setIdMassa("SEM MASSA");
		RelatorioValues.setIdLog("SEM MASSA VINCULADA");
		LOG.info(message);
		UtilsUra.falhou();
	}
}