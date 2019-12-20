package br.com.rsi.ura.teste.transferencias_recursos;

import cucumber.api.java.en.When;

public class TransferenciasRecursosStep {
	
	private TransferenciasRecursosLogic stepsUra = new TransferenciasRecursosLogic();
	
	@When("^clico no 'cpf favorecido'$")
	public void clico_no_cpf_favorecido() {
		stepsUra.cpfFavorecido();
	}
		
	@When("^clico no 'cpf favorecido' transacional$")
	public void clico_no_cpf_favorecido_transacional() {
		stepsUra.cpfFavorecidoTransacional();
	}

	@When("^clico na 'conta favorecido' e 'agencia favorecido'$")
	public void clico_na_conta_favorecido_e_agencia_favorecido() {
		stepsUra.agenciaEContaFavorecido();
	}
		
	@When("^clico na 'conta favorecido' e 'agencia favorecido' transacional$")
	public void clico_na_conta_favorecido_e_agencia_favorecido_transacional() {
		stepsUra.agenciaEContaFavorecidoTransacional();
	}
	
	@When("^verifico se está fora do horário$")
	public void verifico_se_está_fora_do_horário() {
		stepsUra.verificoSeEstaForaDoHorario();
	}
	
	
	
	
}