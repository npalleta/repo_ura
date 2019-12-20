package br.com.rsi.ura.erroReport.stepErrorEnvironment;

import br.com.rsi.ura.erroReport.ErrorReport;

/**
 * @author hugo.santos
 */
public class Environment extends ErrorReport {
	
	private final String ENVIRONMENT = "AMBIENTE";
	private String translatedText;
	private String scenario;

	public Environment(String translatedText, String scenario) {
		this.translatedText = translatedText.toLowerCase().trim();
		this.scenario = scenario.toLowerCase().trim();
	}

	/**
	 * Possíveis erros de AMBIENTE.
	 */
	public void environment() {
		//Nº discado está inválido ou não existe
		if ((translatedText.contains("chamada") && translatedText.contains("verifique") && translatedText.contains("número discado")) ||
			  (translatedText.contains("não foi possível completar") && translatedText.contains("chamada")) ||
			    (translatedText.contains("telefone não existe") && translatedText.contains("verifique o número")) ||
			      (translatedText.contains("não existe ") && translatedText.contains("fora de serviço"))
		   ) {
			upResult(ENVIRONMENT, "Foi verbalizado que o Nº digitado para ligação está inválido -- Texto Traduzido: '" + translatedText + "'",
					"<VERBALIZADO QUE O Nº DA CHAMADA ESTÁ INVÁLIDO>");
		}
		//URA em silêncio
		if(translatedText.isEmpty()) {
			upResult(ENVIRONMENT, "URA ficou em silêncio ou demorou muito pra responder em alguma parte nos menus", 
					"<URA FICOU EM SILÊNCIO>");
		}
		//URA não identificou o CPF ou caiu no menu de perda e roubo
		if((translatedText.contains("não consegui te identificar") && translatedText.contains("mas vou te ajudar")) || 
			 (translatedText.contains("bloqueio do cartão ou cheque") && translatedText.contains("perda ou roubo") && 
			   (!translatedText.contains("repita as opções") && !translatedText.contains("cpf") && !translatedText.contains("caixa eletrônico"))) ||
			     (translatedText.contains("você ainda está") && translatedText.contains("preciso mesmo")) ||
				    (translatedText.contains("não encontrei esse cpf") && translatedText.contains("preciso mesmo") && translatedText.contains("pausadamente") && translatedText.contains("cpf")) || 
					  (translatedText.contains("digito não vale") && translatedText.contains("preciso mesmo") && translatedText.contains("pausadamente") && translatedText.contains("cpf"))
		  ) {
		    upResult(ENVIRONMENT, "URA não indentificou o CPF ou caiu no menu de perda ou roubo -- Texto Traduzido: '" + 
			translatedText + "'", "<NÃO FOI IDENTIFICADO O CPF OU CAIU NO MENU DE PERDA E ROUBO>");
		}
		//Não identificou o digito
		if((translatedText.contains("você ficou em silêncio") && translatedText.contains("para gente começar") && 
			 (!translatedText.contains("você está") && !translatedText.contains("cpf"))) ||
				(translatedText.contains("não consegui") && translatedText.contains("solicitação")) ||
					(translatedText.contains("quantidade necessária") && translatedText.contains("você digite") && translatedText.contains("não"))
			) {
			 upResult(ENVIRONMENT, "URA não indentificou o digito ou demorou muito para responder -- Texto Traduzido: '" + 
			 translatedText + "'", "<NÃO FOI IDENTIFICADO O DIGITO OU DEMOROU PARA RESPONDER>");
		}
		//Instabilidade no sistema ou erro no sistema
		if(translatedText.contains("estabilidade aqui no sistema") || 
			 translatedText.contains("instabilidade aqui no sistema") ||
				translatedText.contains("não consegui realizar a transação") || 
				   translatedText.contains("foi possível continuar sua solicitação") ||
				  	(translatedText.contains("erro no sistema") && translatedText.contains("não foi possível")) && 
				  	 !scenario.contains("maiorqueopermitido")
		  ) {
			upResult(ENVIRONMENT, "Aconteceu uma instabilidade ou erro no sistema e não finalizou a solicitação -- Texto Traduzido: '" + 
		    translatedText + "'", "<DEVIDO A ALGUMA INSTABILIDADE A URA NÃO FINALIZOU A SOLICITAÇÃO>");
		}
		//Instabilidade na hora do pagamento
		if((scenario.contains("títulosecontas") || scenario.contains("titulosecontas")) && 
			 (translatedText.contains("agradece a sua ligação") || translatedText.contains("tente outra vez mais tarde")) && 
				 (!translatedText.contains("realmente") && !translatedText.contains("não vale"))
		  ) {
			upResult(ENVIRONMENT, "Por alguma instabilidade a URA não conseguiu prosseguir com o pagamento -- Texto Traduzido: '" + 
			translatedText + "'", "<NÃO FOI POSSÍVEL COMPLETAR A SOLICITAÇÃO DE PAGAMENTO>");
		}
	}
}