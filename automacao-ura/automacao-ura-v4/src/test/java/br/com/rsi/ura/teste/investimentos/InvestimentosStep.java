package br.com.rsi.ura.teste.investimentos;

import cucumber.api.java.en.When;

public class InvestimentosStep {
	
	private InvestimentosLogic logicInv = new InvestimentosLogic();
	
	@When("^valido a existência da opção de Renegociação no menu Investimentos$")
	public void valido_a_existência_da_opção_de_Renegociação_no_menu_Investimentos() {
		logicInv.validoMenuInvestimentosRenegociacao();
	}
}