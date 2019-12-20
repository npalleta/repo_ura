package br.com.rsi.ura.teste.conta_corrente;

import cucumber.api.java.en.When;

public class ContaCorrenteStep {

	private ContaCorrenteLogic stepsUra = new ContaCorrenteLogic();

	@When("^clico nos numeros do talao de cheque$")
	public void clico_nos_numeros_do_talao_de_cheque() {
		stepsUra.numerosTalaoDeCheque();
	}

	@When("^clico nos numeros do talao de cheque transacional$")
	public void clico_nos_numeros_do_talao_de_cheque_transacional() {
		stepsUra.numerosTalaoDeChequeTransacional();
	}

	@When("^estou na opcao do menu do ura com o texto ' extrato ' verificando se a conta poupanca esta vinculada a corrente, com o tempo total de execução de \"([^\"]*)\" milissegundos$")
	public void estou_na_opcao_do_menu_do_ura_com_o_texto_extrato_verificando_se_a_conta_poupanca_esta_vinculada_a_corrente_com_o_tempo_total_de_execução_de_milissegundos(
			int arg1) {
		stepsUra.validaVinculoContaPoupancaECorrente(arg1);
	}
}