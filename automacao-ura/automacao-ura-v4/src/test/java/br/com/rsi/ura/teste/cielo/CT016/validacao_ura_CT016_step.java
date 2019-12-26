package br.com.rsi.ura.teste.cielo.CT016;

import cucumber.api.java.en.When;

public class validacao_ura_CT016_step {

	validacao_ura_CT016_logic validUraCT016 = new validacao_ura_CT016_logic();

	@When("^digito o número do EC \"([^\"]*)\"$")
	public void digito_o_número_do_EC(String arg1) throws Throwable {
		validUraCT016.insereNumeroEC(arg1);
	}
	
	@When("^digito \"([^\"]*)\"$")
	public void digito(String arg1) throws Throwable {
	}
}