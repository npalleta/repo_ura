package br.com.rsi.ura.erroReport.stepErrorReTest;

import br.com.rsi.ura.erroReport.ErrorReport;

/**
 * @author hugo.santos
 */
public class Retest extends ErrorReport{
	
	private final String RETEST = "RE_TEST";
	private String translatedText;
	private String scenario;
	
	public Retest(String translatedText, String scenario) {
		this.translatedText = translatedText.toLowerCase().trim();
		this.scenario = scenario.toLowerCase().trim();
	}

	/**
	 * Possíveis erros para RE_TEST.
	 */
	public void reTeste() {
		//Nº digitado inválido
		if((translatedText.contains("realmente esse") && translatedText.contains("não vale então") && translatedText.contains("santander agradece")) ||
			  translatedText.contains("número que você digitou não é válido")
		  ) {
			upResult(RETEST, "Foi digitado um número inválido e talvez a URA finalizaou a ligação -- Texto Traduzido: '" +
			translatedText + "'", "<Nº DIGITADO NÃO É VALIDO>");
			}
		//Tentativa de pagamento de tributo fora do horário
		if(scenario.contains("tributo") && scenario.contains("tríbuto")) {
			if(translatedText.contains("das 9 horas às 16 horas") ||
				 translatedText.contains("19 horas e aos domingos") ||
					translatedText.contains("22 horas aos sábados") ||
					   translatedText.contains("atendimento para este serviço")
		  ) {
			upResult(RETEST, "Tentativa de pagamento de TRIBUTO fora do horário -- Texto Traduzido: '" + 
			translatedText + "'", "<PAGAMENTO DE TRIBUTO FORA DO HORÁRIO>");
			}
		}
	} 
}