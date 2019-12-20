package br.com.rsi.ura.teste.pagamentos;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;

public class PagamentosStep {

	private PagamentosLogic stepsUra = new PagamentosLogic();
	
	@Then("^realizo o caminho para PAGAMENTO de UM ou DOIS TRIBUTOS e valido resultado$")
	public void realizo_o_caminho_para_PAGAMENTO_de_TRIBUTO_validando_como_resultado_esperado() {
		stepsUra.pagamentoTributoIpvaDpvat();
	}
	
	@Then("^realizo o caminho para PGT de TÍTULOS validando RESULTADO$")
	public void realizo_o_caminho_para_PGT_de_TÍTULOS_validando_como_resultado_esperado() {
		stepsUra.realizoCaminhoParaPgtTitulo();
	}

	@And("^clico nos numeros do Renavam transacional$")
	public void clico_nos_numeros_do_revanam_transacional() {
		stepsUra.primeiroRenavam();
	}
}