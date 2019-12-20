package br.com.rsi.ura.erroReport.stepErrorApplication;

import br.com.rsi.ura.erroReport.ErrorReport;

/**
 * @author hugo.santos
 */
public class Application extends ErrorReport {
	
	private final String APPLICATION = "APLICAÇÃO";
	private String translatedText;
	
	public Application(String translatedText) {
		this.translatedText = translatedText.toLowerCase().trim();
	}

	/**
	 * Possíveis erros de APLICAÇÃO.
	 */
	public void application() {
		//Verbalização de digitação de algum símbolo
		if(translatedText.contains("você digitou algum símbolo") || translatedText.contains("você colocou algum símbolo")) {
			upResult(APPLICATION, "URA verbalizou que foi digitado símbolo -- Texto Traduzido: '" + 
			translatedText + "'", "<URA VERBALIZOU QUE FOI DIGITADO SÍMBOLOS>");
		}
	}
}