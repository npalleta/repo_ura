package br.com.rsi.ura.gherkin_geral;

import br.com.rsi.ura.logic_geral.SantanderUraLogic;
import br.com.rsi.ura.utils.UtilsWeb;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;


/**
 * @author romulo.lacerda
 * @category --> Classe resposável por executar todos os métodos de gherkin genéricos da URA.
 */
public class StepGherkinSantanderUra {

	private SantanderUraLogic stepsUra = new SantanderUraLogic();
	
	@When("^tradução contém \"([^\"]*)\" \\? TRUE\\( \"([^\"]*)\" - MSG: \"([^\"]*)\" \\) -- FALSE\\( \"([^\"]*)\" - MSG: \"([^\"]*)\" \\) com execução de \"([^\"]*)\" milissegundos$")
	public void tradução_contém_TRUE_FALSE_com_execução_de_milissegundos(String textoParaSerValidado, String trueClico, String msg1, String falseClico, String msg2, int tempoDeGravacao) {
		stepsUra.realizoValidacaoDeCaminhos(textoParaSerValidado, trueClico, msg1, falseClico, msg2, tempoDeGravacao);
	}
	
	@When("^digito o RAMAL transacional$")
	public void digito_o_RAMAL_transacional(){
		stepsUra.digitoRamal();
	}

	@When("^estou em codigo de barra indo para \"([^\"]*)\" como resultado esperado$")
	public void estou_em_codigo_de_barra_indo_para_resultado_esperado(String validar) {
		this.stepsUra.codigoDeBarrasIndoParaResultadoEsperado(validar);
	}

	@Given("^clico nos três primeiros numeros do 'CPF'$")
	public void clico_nos_três_primeiros_numeros_do_CPF() {
		this.stepsUra.tresPrimeirosNumerosCPF();
	}
	
	@Given("^clico nos três primeiros numeros do 'CPF' transacional$")
	public void clico_nos_três_primeiros_numeros_do_CPF_transacional() {
		this.stepsUra.tresPrimeirosNumerosCPFTransacional();
	}

	@Given("^inicializo o 'Relatorio de Dados'$")
	public void inicializo_o_Relatorio_de_Dados() {
		this.stepsUra.inicializaRelatorioDeDados();
	}
	
	@When("^clico o numero do telefone da 'Ura'$")
	public void clico_o_numero_do_telefone_da_Ura() {
		this.stepsUra.realizaLigacao();
	}
	
	@When("^estou na opcao do menu do ura com o TEXTO e ID \"([^\"]*)\", com o tempo total de execução de \"([^\"]*)\" milissegundos$")
	public void estou_na_opcao_do_menu_do_ura_com_o_TEXTO_e_ID_com_o_tempo_total_de_execução_de_milissegundos(
			String arg1, String arg2) {
		this.stepsUra.menuComTextoEID(arg1, arg2);		
	}

	@Then("^um dos textos \"([^\"]*)\" for validado, com o tempo de execução \"([^\"]*)\" em milissegundos$")
	public void validar_frases_alternativas(String arg1, int arg2) {
		this.stepsUra.validoUmDosTextosMenu(arg1, arg2);
	}
	
	@When("^estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança \"([^\"]*)\", com o tempo total de execução de \"([^\"]*)\" milissegundos$")
	public void estou_na_opção_do_menu_do_ura_onde_e_solicitado_a_posicao_do_cartão_de_segurança_com_tempo_total_de_execução_de_milissegundos(
			String arg1, int arg2) {
		this.stepsUra.posicaoCartaoDeSeguranca(arg1, arg2);
	}

	@When("^estou na opcao do menu do ura com o texto \"([^\"]*)\", com o tempo total de execução de \"([^\"]*)\" milissegundos$")
	public void estou_na_opcao_do_menu_do_ura_com_o_texto_com_o_tempo_total_de_execução_de_milissegundos(String arg1,
			String arg2) {
		this.stepsUra.opcaoDoMenuComOTexto(arg1, arg2);;
	}

	@When("^estou na opcao do menu ' desbloquear' para cliente que não solicita senha no topo, com o tempo total de execução de \"([^\"]*)\" milissegundos$")
	public void estou_na_opcao_do_menu_desbloquear_para_cliente_que_não_solicita_senha_no_topo_com_o_tempo_total_de_execução_de_milissegundos(
			String arg1) {
		this.stepsUra.desbloquearSemSenhaNoTopo("25000");
	}
	
	@When("^estou na opcao do menu do ura com o texto ' desbloquear', com o tempo total de execução de \"([^\"]*)\" milissegundos$")
	public void estou_na_opcao_do_menu_do_ura_com_o_texto_desbloquear_com_o_tempo_total_de_execução_de_milissegundos(
			String arg1) {
		this.stepsUra.desbloquearComSenhaNoTopo("25000");
	}
	
	@When("^clico no botao 'teclado' e clico nos numeros do 'CPF'$")
	public void clico_no_botao_teclado_e_clico_nos_numeros_do_CPF() {
		this.stepsUra.cpf();
	}

	@When("^clico nos numeros da senha$")
	public void clico_nos_numeros_da_senha() {
		this.stepsUra.senha();
	}
	
	@When("^clico nos numeros do 'cartao'$")
	public void clico_nos_numeros_do_cartão() {
		this.stepsUra.numerosDoCartao();
	}
	
	@When("^clico nos numeros do 'cartao' transacional$")
	public void clico_nos_numeros_do_cartão_transacional() {
		this.stepsUra.numerosDoCartaoTransacional();
	}

	@When("^clico nos numeros da senha transacional$")
	public void clico_nos_numeros_da_senha_transacional() {
		this.stepsUra.senhaTransacional();
	}
	
	@When("^clico nos numeros da assinatura eletronica$")
	public void clico_nos_numeros_da_assinatura_eletronica() {
		this.stepsUra.numerosAssinaturaEletronica();
	}
	
	@When("^clico nos numeros da assinatura eletronica transacional$")
	public void clico_nos_numeros_da_assinatura_eletronica_transacional() {
		this.stepsUra.numerosAssinaturaEletronicaTransacional();
	}
	
	@When("^clico na opcao do menu: \"([^\"]*)\"$")
	public void clico_na_opcao_do_menu(String arg1) {
		utilsWebSantander.clicarDiscadorCelular(arg1);
	}
	
	@When("^clico nos numeros do 'cvv'$")
	public void clico_nos_numeros_do_cvv() {
		this.stepsUra.cvv();
	}
	
	@When("^clico nos numeros do 'cvv' transacional$")
	public void clico_nos_numeros_do_cvv_transacional() {
		this.stepsUra.cvvTransacional();
	}
	
	@When("^clico na opcao do menu transacional: \"([^\"]*)\"$")
	public void clico_na_opcao_do_menu_transacional(String arg1) {
		this.stepsUra.opcaoDoMenuTransacional(arg1);
	}
	
	@When("^clico no \"([^\"]*)\" transacional$")
	public void clico_no_transacional(String arg1) {
		this.stepsUra.clicoNo(arg1);
	}
	
	@When("^clico na 'conta poupança' e 'agencia poupança'$")
	public void clico_na_conta_poupança_e_agencia_poupança() {
		this.stepsUra.agenciaEContaPoupanca();
	}
	
	@When("^clico na 'conta poupança' e 'agencia poupança' transacional$")
	public void clico_na_conta_poupança_e_agencia_poupança_transacional() {
		this.stepsUra.agenciaEContaPoupancaTransacional();
	}
	
	@When("^clico na 'conta' e 'agencia'$")
	public void clico_na_conta_e_agencia() {
		this.stepsUra.agenciaEConta();
	}
	
	@When("^clico na 'conta' e 'agencia' transacional$")
	public void clico_na_conta_e_agencia_transacional() {
		this.stepsUra.agenciaEContaTransacional();
	}
	
	@When("^clico no 'valor'$")
	public void clico_no_valor() {
		this.stepsUra.valor();
	}
	
	@When("^clico no 'valor' transacional$")
	public void clico_no_valor_transacional() {
		this.stepsUra.valorTransacional();
	}
	
	@When("^clico nos numeros da 'dataPassada'$")
	public void clico_nos_numero_da_dataInico() {
		this.stepsUra.dataPassada();
	}
	
	@When("^clico nos numeros da 'dataPassada' transacional$")
	public void clico_nos_numero_da_dataInico_transacional() {
		this.stepsUra.dataPassadaTransacional();
	}
	
	@When("^clico nos numeros da 'dataFutura'$")
	public void clico_nos_numero_da_dataFutura() {
		this.stepsUra.dataFutura();
	}
	
	@When("^clico nos numeros da 'dataFutura' transacional$")
	public void clico_nos_numero_da_dataFutura_transacional() {
		this.stepsUra.dataFuturaTransacional();
	}
	
	@When("^clico nos numeros da 'dataAtual'$")
	public void clico_nos_numero_da_dataAtual() {
		this.stepsUra.validacaoDataAtual();
	}
	
	@When("^clico nos numeros da 'dataAtual' transacional$")
	public void clico_nos_numero_da_dataAtual_transacional() {
		this.stepsUra.validacaoDataAtualTransacional();
	}
	
	@When("^clico nos numeros da 'dataAgendamento'$")
	public void clico_nos_numero_da_dataAgendamento() {
		this.stepsUra.validacaoDataAgendamento();
	}
	
	@When("^clico nos numeros da 'dataAgendamento' transacional$")
	public void clico_nos_numero_da_dataAgendamento_transacional() {
		this.stepsUra.validacaoDataAgendamentoTransacional();
	}
	
	@When("^estou na opcao do menu do ura com o texto ' cartão ' verificando se tem mais de um cartao, com o tempo total de execução de \"([^\"]*)\" milissegundos$")
	public void estou_na_opcao_do_menu_do_ura_com_o_texto_cartão_verificando_se_tem_mais_de_um_cartao_com_o_tempo_total_de_execução_de_milissegundos(
			int arg1) {
		this.stepsUra.verificaSePossuiMaisDeUmCartao(arg1);
	}
	
	@When("^estou na opcao de cartões indo ao menu principal$")
	public void estou_na_opcao_decartões_indo_ao_menu_principal() {
		this.stepsUra.opcaoCartaoIndoParaMenuPrincipal();
	}
	
	@When("^estou na opcao do menu do ura com o texto ' poupança ' verificando se tem mais de uma conta poupanca, com o tempo total de execução de \"([^\"]*)\" milissegundos$")
	public void estou_na_opcao_do_menu_do_ura_com_o_texto_poupança_verificando_se_tem_mais_de_uma_conta_poupanca_com_o_tempo_total_de_execução_de_milissegundos(
			int arg1) {
		this.stepsUra.verificaSePossuiMaisDeUmaContaPoupanca(arg1);
	}
	
	@When("^estou na opcao alterar senha com confirmação$")
	public void estou_na_opcao_alterar_senha() {
		this.stepsUra.alterarSenhaComConfirmacao();
	}
	
	@Given("^estou na opção do menu do ura onde e solicitado a data de nascimento com o texto \"([^\"]*)\",com tempo total de execução de \"([^\"]*)\" milissegundos$")
	public void estou_na_opção_do_menu_do_ura_onde_e_solicitado_a_data_de_nascimento_com_o_texto_com_tempo_total_de_execução_de_milissegundos(
			String arg1, String arg2) {
		this.stepsUra.dataDeNascimento(arg1, arg2);
	}
	
	@When("^clico nos numeros da 'dataNascimento' transacional$")
	public void clico_nos_numeros_da_dataNascimento_transacional() {
		this.stepsUra.dataDeNascimentoTransacional();
	}
	
	@When("^clico nos numeros da 'dataNascimento'$")
	public void clico_nos_numeros_da_dataNascimento() {
		this.stepsUra.dataDeNascimento();
	}
	
	@When("^estou na opcao de cartões buscando cartão adicional")
	public void estou_na_opcao_de_cartões_buscando_cartão_adicional() {
		this.stepsUra.procuraCartaoAdicional();
	}
	
	@When("^verifico se ha alguma mensagem informativa$")
	public void verifico_se_ha_alguma_mensagem_informativa() {
		this.stepsUra.verificaSeTemMensagemInformativa();
	}
	
	@When("^estou esperando por \"([^\"]*)\" milissegundos$")
	public void estou_esperando_por_milissegundos(String arg1) {
		this.stepsUra.esperando(arg1);
	}
	
	@Given("^estou indo para a opção cartão de crédito classico, exclusivo e vangogh fraseologia$")
	public void estou_indo_para_a_opção_cartão_de_crédito_classico_exclusivo_e_vangogh_fraseologia() {
		this.stepsUra.indoParaOpcaoDeCreditoClassicoVangoghExclusivo();
	}
	
	@Given("^estou indo ao menu principal Private ou Select Transacional$")
	public void estou_indo_ao_menu_principal_Private_ou_Select_Transacional() {
		this.stepsUra.indoParaMenuPrincipalPrivateOuSelectTransacional();
	}
	
	@When("^estou indo ao menu principal Private ou Select Fraseologia$")
	public void estou_indo_ao_menu_principal_Private_ou_Select_Fraseologia() {
		this.stepsUra.indoParaMenuPrincipalPrivateOuSelectFraseologia();
	}
	
	@Given("^estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional$")
	public void estou_indo_ao_menu_principal_Classico_ou_Exclusivo_ou_VanGogh_Transacional() {
		this.stepsUra.indoParaMenuPrincipalClassicoOuExclusivoOuVangoghTransacional();
	}
	
	@When("^estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Fraseologia$")
	public void estou_indo_ao_menu_principal_Classico_ou_Exclusivo_ou_VanGogh_Fraseologia() {
		this.stepsUra.indoParaMenuPrincipalClassicoOuExclusivoOuVangoghFraseologia();
	}
	
	@When("^estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de \"([^\"]*)\" milissegundos$")
	public void estou_na_opcao_do_menu_do_ura_com_o_texto_verificando_se_precisa_tecla_dois_com_o_tempo_total_de_execução_de_milissegundos(
			int arg1) {
		this.stepsUra.verificaSePrecisaPularMenusEmContaCorrente(arg1);
	}
	
	@When("^clico os numeros da data incio da viagem$")
	public void clico_os_numeros_da_data_incio_da_viagem() {
	this.stepsUra.validacaoDataInicioParaUsoNoExterior();
	}

	@When("^clico os numeros da data final da viagem$")
	public void clico_os_numeros_da_data_final_da_viagem() {
		this.stepsUra.validacaoDataFimParaUsoNoExterior();
	}
	
	private UtilsWeb utilsWebSantander = new UtilsWeb();
	@When("^digito o número \"([^\"]*)\" \"([^\"]*)\"$")
	public void digito_o_número_do(String arg1, String arg2) throws Throwable {
		switch (arg1) {
		case "do EC":
			utilsWebSantander.clicarTeclado();
			utilsWebSantander.clicarDiscadorCelular(arg2);
			break;
		default:
			utilsWebSantander.clicarDiscadorCelular(arg2);
			break;
		}
	}
	
	@When("^digito \"([^\"]*)\"$")
	public void digito(String arg1) throws Throwable {
	    this.stepsUra.digito(arg1);
	}
	
}