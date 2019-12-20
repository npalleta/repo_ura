package br.com.rsi.ura.teste.meios_pagamentos;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;

public class MeiosPagamentosStep {

	private MeiosPagamentosLogic stepsUra = new MeiosPagamentosLogic();
	
	@And("^estou indo para o menu de FATURA$")
	public void estou_indo_para_o_menu_de_FATURA() {
		stepsUra.menuPagamentoDeFatura();
	}
	
	@And("^realizo o caminho validando as opções para pagamento ou agendamento de FATURA$")
	public void realizo_o_caminho_validando_as_opções_para_pagamento_ou_agendamento_de_FATURA() {
		stepsUra.pagamentosOuAgendamentosDeFaturas();
	}
	
	@Then("^consulto a FATURA, validando os textos \"([^\"]*)\", com execução de \"([^\"]*)\" milissegundos$")
	public void consulto_a_FATURA_validando_os_textos(String textoEsperado, int tempoGravacao) {
		stepsUra.validoConsultaFatura(textoEsperado, tempoGravacao);
	}
	
	@And("^realizando o caminho para a EMISSÃO de segunda via por EMAIL ou OUVIR CÓDIGO DE BARRAS$")
	public void realizando_o_caminho_para_a_EMISSÃO_de_segunda_via_por_EMAIL_ou_OUVIR_CÓDIGO_DE_BARRAS() {
		stepsUra.realizoCaminhoParaEmissaoSegundaVia();
	}
}