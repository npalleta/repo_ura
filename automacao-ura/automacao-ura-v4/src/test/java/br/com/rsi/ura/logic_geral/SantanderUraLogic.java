 package br.com.rsi.ura.logic_geral;

import java.time.DayOfWeek;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Random;

import org.apache.log4j.Logger;

import br.com.rsi.ura.chrome.ConnectionDriver;
import br.com.rsi.ura.configuration.GerenciadorDePropriedades;
import br.com.rsi.ura.fraseologia.ValidacaoFraseologia;
import br.com.rsi.ura.saveResult.SaveResultTestCase;
import br.com.rsi.ura.sheets.massa.PlanilhaDTO;
import br.com.rsi.ura.sheets.relatorioPorCenario.RelatorioValues;
import br.com.rsi.ura.utils.UtilsUra;
import br.com.rsi.ura.utils.UtilsWeb;

public class SantanderUraLogic extends ConnectionDriver {

	private final Logger LOG = Logger.getLogger(SantanderUraLogic.class);
	private ValidacaoFraseologia recLogic = new ValidacaoFraseologia();
	private UtilsWeb utilsWebSantander = new UtilsWeb();
	public boolean tentativa = true;
	public String agenciaConta = null;
	public String acao = null;
	public int numeroCartao = 1;
	public static int numeroDocartao;
	public static int contador;
	private String texto;

	public void tresPrimeirosNumerosCPF() {
		String senha = PlanilhaDTO.getCpf().substring(0, 3);
		utilsWebSantander.clicarDiscadorCelular(senha);
	}
	
	public void esperando(String time) {
		try {
			LOG.info("Aguardando " + time + "...");
			Thread.sleep(Integer.parseInt(time));
		} catch (NumberFormatException | InterruptedException e) {
			LOG.error(e.getMessage(), e);
		}
	}
	
	public void fraseologiaDataNascimento(String textoEsperado, Integer timeout) {
		String data = PlanilhaDTO.getDataNascimento();
		String dataNacimento = data.replace("/", "").trim();
		String dia = dataNacimento.substring(0, 2);
		String mes = dataNacimento.substring(2, 4);
		String ano = dataNacimento.substring(4, dataNacimento.length());
		LOG.info("Digito a data de nascimento: " + dia + "/" + mes + "/" + ano);
		String digito = null;
		texto = recLogic.fraseologia(textoEsperado, timeout);

		if (texto.contains("mês")) {
			digito = mes;
		} else if (texto.contains("dia")) {
			digito = dia;
		} else if (texto.contains("4 número") || texto.contains("ano")) {
			digito = ano;
		}
		utilsWebSantander.clicarDiscadorCelular(digito);
	}
	
	public void clicarDiscadorCelularThreads(String num) {
		texto = recLogic.fraseologia(10000);
		LOG.info("\n\n[" + texto + "]\nDigito | " + num + " |\n");
		utilsWebSantander.clicarDiscadorCelular(num);
	}
	
	public void fraseologiaUraCartaoPosicao(String frase) {
		int pos = 4;
		frase = frase.replaceAll(" um ", " 1 ").replaceAll(" dois ", " 2 ").replaceAll(" três ", " 3 ")
				.replaceAll(" quatro ", " 4 ").replaceAll(" cinco ", " 5 ").replaceAll(" seis ", " 6 ")
				.replaceAll(" sete ", " 7 ").replaceAll(" oito ", " 8 ").replaceAll(" nove ", " 9 ");
		if (frase.contains("posição")) {
			pos = frase.indexOf("posição");
		}else if (frase.contains("número")) {
			pos = frase.indexOf("número");
		}
		frase = frase.substring(pos, frase.length());
		boolean index = frase.contains("online");
		if (index == true) {
			int cod = frase.indexOf("online");
			String fraseCorte = frase.substring(0, cod);
			frase = fraseCorte;
		}
		String numero = "";
		for (char digito : frase.toCharArray()) {
			if (Character.isDigit(digito)) {
				numero = numero + digito;
			}
		}
		if (numero == "100") {
			numero = "06";
			numero = numero + numero;
			tentativa = true;
		}
		if (numero.length() == 0 || numero.length() > 2) {
			if (tentativa) {
				this.fraseologiaUraCartaoPosicao(recLogic.fraseologia("úmero", 15000));
				tentativa = false;
				return;
			} else {
				tentativa = true;
				UtilsUra.falhou();
			}
		}
		if (numero.length() == 1) {
			numero = '0' + numero;
		}
		if (!numero.isEmpty() || numero == "") {
			numero = numero.substring(numero.length() - 2, numero.length());
		}
		numero = numero + numero;
		LOG.info("Posição do Cartão de Segurança: " + numero);
		tentativa = true;
		utilsWebSantander.clicarDiscadorCelular(numero);
	}

	public void tresPrimeirosNumerosCPFTransacional() {
		String senha = PlanilhaDTO.getCpf().substring(0, 3);
		utilsWebSantander.clicarDiscadorCelular(senha);
	}

	public void inicializaRelatorioDeDados() {
		SaveResultTestCase.rodouSim();
		new UtilsUra().inicializaArquivoDeDados();
	}

	public void realizaLigacao() {
		// String numero = PlanilhaDTO.getTelefone();
		String numero = "33829925";
		acao = "Ligando para: " + numero;
		LOG.info("Ligando para: " + numero);
		utilsWebSantander.realizaLigacao(numero);
	}

	public void menuComTextoEID(String arg1, String arg2) {
		UtilsUra.sleep(7000, "Coletando e validando TEXTO e ID...");
		LOG.info("Validando opcao inicial, texto esperado >>> " + arg1);
		recLogic.fraseologiaComValidacao(arg1, Integer.valueOf(arg2), 0, 4500, 10);
	}

	public void posicaoCartaoDeSeguranca(String arg1, int arg2) {
		arg1 = "continuar";
		arg2 = 20000;

		LOG.info("Validando opcao inicial, texto esperado >>> " + arg1);

		texto = recLogic.fraseologia(arg2);

		if (texto.contains("assinatura eletrônica")) {
			LOG.info("<MASSA> --- <CPF PEDIU ASSINATURA ELETRÔNICA>");
			RelatorioValues.setTipoErro("MASSA");
			RelatorioValues.setErro("CPF pedindo Assinatura Eletrônica");
			UtilsUra.falhou();
			
		} else if (texto.contains("código")) {
			String codigo = PlanilhaDTO.getCvv();
			utilsWebSantander.clicarDiscadorCelular(codigo);
		} else if (texto.contains("continuar")) {
			fraseologiaUraCartaoPosicao(texto);
		} 
	}

	public void opcaoDoMenuComOTexto(String arg1, String arg2) {
		LOG.info("Validando opcao inicial, texto esperado >>> " + arg1);
		recLogic.fraseologia(arg1, Integer.valueOf(arg2));
	}
	
	public void validaSegmentoPrivate(String txtEsperado) {
		String cenario = PlanilhaDTO.getNomeCenario();
		cenario = cenario.toLowerCase();
		if (txtEsperado == null || txtEsperado == "") {
			texto = recLogic.fraseologia(20000);
		} else {
			texto = recLogic.fraseologia(20000);
			if ((!texto.contains(txtEsperado)) && texto != null && texto != "") {
				RelatorioValues.setTipoErro("RE_TEST");
				RelatorioValues
						.setErro(">Texto Esperado: '" + txtEsperado + "'>Texto Traduzido: '" + texto + "'");
				LOG.info("<TRADUÇÃO ERRADA>");
				UtilsUra.falhou();
			}
			LOG.info("Resultado da validação Fraseologia 'conta' >>> true");
		}
		if ((!texto.contains("serviço")) && (!texto.contains("aproveitar")) && (!texto.contains("praticidade"))
				&& (cenario.contains("private")) && (texto.contains("assunto"))) {
			RelatorioValues.setTipoErro("MASSA");
			RelatorioValues
					.setErro("Segmento errado, cenário vinculado é Private -- CPF: " + PlanilhaDTO.getCpf());
			LOG.info("<SEGMENTO ERRADO, CENÁRIO VINCULADO É PRIVATE>");
			UtilsUra.falhou();
		}
	}

	public void desbloquearSemSenhaNoTopo(String arg1) {
		LOG.info("Indo do CPF até senha...");
		arg1 = "25000";
		texto = recLogic.fraseologia(Integer.parseInt(arg1));

		if (texto.contains("senha") && (texto.contains("agilizar"))) {
			LOG.info("CPF pediu senha, finalizando o teste...");
			RelatorioValues.setTipoErro("MASSA");
			RelatorioValues.setErro("CPF pediu senha no topo, cenário precisa que tenha mais de uma conta corrente ou poupança -- CPF: " + PlanilhaDTO.getCpf());
			LOG.info("<PEDIU SENHA NO TOPO>");
			UtilsUra.falhou();
		} else if (texto.contains("rendimentos financeiros") || 
					 (texto.contains("continuar") && texto.contains("tenho um recado")) || 
					  (texto.contains("transformar") && texto.contains("amigo"))
				   ) {
			UtilsUra.sleep(200, "Informativo URA...");
		} else if (texto.contains("bloquear") || texto.contains("desbloquear")) {
			LOG.info("<<<Pulando a opção de desbloquear cartão para um cliente que não solicita senha>>>");
			utilsWebSantander.clicarDiscadorCelular("2");
		} else if (texto.contains("protocolos pendentes") || texto.contains("protocolos pendente") || texto.contains("protocolos em aberto")) {
			LOG.info("Pulando os Protocolos...");
			utilsWebSantander.clicarDiscadorCelular("2");
		} else if (texto.contains("transferido") || texto.contains("transferir para um especialista") || texto.contains("central de renegociações") || texto.contains("renegociações")) {
			LOG.info("Pulando Renegociação...");
			utilsWebSantander.clicarDiscadorCelular("2");
		}
	}

	public void desbloquearComSenhaNoTopo(String arg1) {
		LOG.info("Indo do CPF até senha...");
		arg1 = "30000";
		texto = recLogic.fraseologia(Integer.parseInt(arg1)).toLowerCase();
		
		//erro para senha bloqueada
		if (texto.contains("nova senha") && texto.contains("cadastrar") || (texto.contains("cadastrar uma nova senha"))) {
			LOG.info("<SENHA BLOQUEADA>");
			RelatorioValues.setTipoErro("MASSA");
			RelatorioValues.setErro("CPF com senha bloqueada -- Texto Traduzido: " + texto + " CPF: " + PlanilhaDTO.getCpf());
			UtilsUra.falhou();
			
		//pulando a opção para desbloquear cartão	
		} else if (texto.contains("desbloquear") || texto.contains("chave de segurança") || texto.contains("bloquear o cartão santander")) {
			LOG.info("Pulando a opção de desbloquear cartão...");
			utilsWebSantander.clicarDiscadorCelular("2");
			desbloquearComSenhaNoTopo(arg1);
		
		//pulando protocolos 
		} else if (texto.contains("possui dois protocolos pendentes") || texto.contains("protocolos pendentes") || texto.contains("protocolos em aberto")) {
			LOG.info("Pulando os Protocolos...");
			utilsWebSantander.clicarDiscadorCelular("2");
			desbloquearComSenhaNoTopo(arg1);
		
		//Pulando Renegociação
		} else if (texto.contains("transferido") || texto.contains("transferir para um especialista") || texto.contains("central de renegociações") || texto.contains("renegociações")) {
				LOG.info("Pulando Renegociação...");
				utilsWebSantander.clicarDiscadorCelular("2");
				desbloquearComSenhaNoTopo(arg1);
				
		//aumenta o tempo de espera caso a ura verbalize o recado	
		} else if ((texto.contains("continuar") && texto.contains("tenho um recado")) || 
					(texto.contains("transformar") && texto.contains("amigo")) ||
					  texto.contains("rendimentos financeiros") ||
					   texto.contains("recado")
				  ) {
			LOG.info("Informativo URA...");
			desbloquearComSenhaNoTopo(arg1);
		
		//erro caso não peça senha no topo	
		} else if ((texto.contains("pagamento") && texto.contains("boleto")) && (texto.contains("fatura")) && 
					(!PlanilhaDTO.getNomeCenario().contains("maisdeumaconta"))) {
						LOG.info("<NÃO PEDIU SENHA NO TOPO>");
						RelatorioValues.setTipoErro("MASSA");
						RelatorioValues.setErro("Não pediu senha no topo, CPF com mais de uma conta ou instabilidade -- Texto Traduzido: " + texto);
						UtilsUra.falhou();

		//caso a ura verbalize a senha de 4 digitos				
		} else if (texto.contains("quatro") || texto.contains("4") && !texto.contains("54")) {
			LOG.info("Definindo senha para 4 digitos.");
			PlanilhaDTO.TipoSenha = "4";

		//caso a ura verbalize a senha de 6 digitos	
		} else if (texto.contains("seis") || texto.contains("6")) {
			LOG.info("Definindo senha para 6 digitos.");
			PlanilhaDTO.TipoSenha = "6";
		
		//caso não identifique o tipo de senha	
		} else if (texto.contains("senha") || (texto.contains("por favor") && texto.contains("aplicativos")) || 
					(texto.contains("agilizar") && texto.contains("atendimento")) || 
					  (texto.contains("por favor") && texto.contains("Internet Banking")) || 
					    (texto.contains("continuar") && texto.contains("atendimento")) || 
					      (texto.contains("por favor") && texto.contains("pausadamente")) || 
					        (texto.contains("por favor") && texto.contains("digitar")) || 
					          (texto.contains("número") && texto.contains("Internet Banking")) || 
					            (texto.contains("por favor") && texto.contains("acessar")) || 
					              (texto.contains("só digitar") && texto.contains("aplicativo")) ||
					                (texto.contains("Santander")) ||
					                  (texto.contains("encontrei")) ||
					                    (texto.contains("por favor"))) {

			LOG.info("<SENHA NÃO IDENTIFICADA, DIGITANDO A SENHA DE 6 DÍGITOS>");
		} else if (texto.contains("notícia")) {
			LOG.info("Tentando novamente, pois a URA verbalizou um chute de notícia...");
			desbloquearComSenhaNoTopo(arg1);
		} else {
			RelatorioValues.setTipoErro("AMBIENTE");
			RelatorioValues.setErro("Tradução inválida, não foi possível validar a senha -- Texto Traduzido: " + texto);
			LOG.info("<NÃO FOI IDENTIFICADA A VALIDAÇÃO DA SENHA NA TRADUÇÃO>");
			UtilsUra.falhou();
		}
	}

	public void cpf() {
		String cpf = PlanilhaDTO.getCpf();
		if (cpf == null || cpf.length() < 11 || cpf == "") {
			RelatorioValues.setTipoErro("MASSA");
			RelatorioValues.setErro("CPF inválido ou vazio -- CPF: " + PlanilhaDTO.getCpf());
			LOG.info("<CPF INVÁLIDO OU VAZIO>");
			UtilsUra.falhou();
		}
		LOG.info("CPF validado >>> " + cpf);
		utilsWebSantander.clicarTeclado();
		utilsWebSantander.clicarDiscadorCelular(cpf);
	}

	public void senha() {
		String senha = null;

		if (PlanilhaDTO.TipoSenha == "4") {
			if (PlanilhaDTO.getSenha4Dig().length() == 4) {
				senha = PlanilhaDTO.getSenha4Dig();
			} else {
				RelatorioValues.setTipoErro("MASSA");
				RelatorioValues
						.setErro("Senha de 4 dígitos está inválida ou vazia -- CPF: " + PlanilhaDTO.getCpf());
				LOG.info("<SENHA DE 4 DIGITOS INVÁLIDA OU VAZIO>");
				UtilsUra.falhou();
			}

		} else if (PlanilhaDTO.TipoSenha == "6") {

			if (PlanilhaDTO.getSenha6Dig().length() == 6) {
				senha = PlanilhaDTO.getSenha6Dig();
			} else {
				RelatorioValues.setTipoErro("MASSA");
				RelatorioValues
						.setErro("Senha de 6 dígitos está inválida ou vazia -- CPF: " + PlanilhaDTO.getCpf());
				LOG.info("<SENHA DE 6 DIGITOS INVÁLIDA OU VAZIO>");
				UtilsUra.falhou();
			}

		} else {
			senha = PlanilhaDTO.getSenha6Dig();
			senha = !senha.isEmpty() ? senha : PlanilhaDTO.getSenha4Dig();
		}
		LOG.info("Senha validada >>> " + senha);
		utilsWebSantander.clicarDiscadorCelular(senha);
	}

	public void numerosDoCartao() {
		String cartao = PlanilhaDTO.getNumeroCartao();

		if (cartao.length() < 16 || cartao.isEmpty()) {
			RelatorioValues.setTipoErro("MASSA");
			RelatorioValues
					.setErro("Número do cartão inválido ou vazio -- CPF: " + PlanilhaDTO.getCpf());
			LOG.info("<Nº DO CARTÃO INVÁLIDO OU VAZIO>");
			UtilsUra.falhou();
		}
		cartao = cartao.substring(cartao.length() - 4, cartao.length());
		LOG.info("Nº cartão validado >>> " + cartao);
		utilsWebSantander.clicarDiscadorCelular(cartao);
	}

	public void numerosDoCartaoTransacional() {
		String cartao = PlanilhaDTO.getNumeroCartao();
		if (cartao.length() < 16 || cartao.isEmpty()) {
			RelatorioValues.setTipoErro("MASSA");
			RelatorioValues
					.setErro("Número do cartão inválido ou vazio -- CPF: " + PlanilhaDTO.getCpf());
			LOG.info("<Nº DO CARTÃO INVÁLIDO OU VAZIO>");
			UtilsUra.falhou();
		}
		cartao = cartao.substring(cartao.length() - 4, cartao.length());
		LOG.info("Nº cartão validado >>> " + cartao);
		clicarDiscadorCelularThreads(cartao);
	}

	public void senhaTransacional() {
		senha();
	}

	public void numerosAssinaturaEletronica() {
		String assinaturaEletronica = PlanilhaDTO.getAssinaturaEletronica();
		LOG.info("Validadando a assinatura eletronica >>> " + assinaturaEletronica);
		utilsWebSantander.clicarDiscadorCelular(assinaturaEletronica);
	}

	public void numerosAssinaturaEletronicaTransacional() {
		String assinaturaEletronica = PlanilhaDTO.getAssinaturaEletronica();
		LOG.info("Validadando a assinatura eletronica >>> " + assinaturaEletronica);
		clicarDiscadorCelularThreads(assinaturaEletronica);
	}

	public void opcaoDoMenu(String arg1) {
		utilsWebSantander.clicarDiscadorCelular(arg1);
	}

	public void cvv() {
		String cvv = PlanilhaDTO.getCvv();

		if (cvv.length() < 3 || cvv.isEmpty()) {
			RelatorioValues.setTipoErro("MASSA");
			RelatorioValues.setErro("CVV inválido ou vazio -- CPF: " + PlanilhaDTO.getCpf());
			LOG.info("<CVV INVÁLIDO OU VAZIO>");
			UtilsUra.falhou();
		}
		LOG.info("CVV validado >>> " + cvv);
		utilsWebSantander.clicarDiscadorCelular(cvv);
	}

	public void cvvTransacional() {
		String cvv = PlanilhaDTO.getCvv();

		if (cvv.length() < 3 || cvv.isEmpty()) {
			RelatorioValues.setTipoErro("MASSA");
			RelatorioValues.setErro("CVV inválido ou vazio -- CPF: " + PlanilhaDTO.getCpf());
			LOG.info("<CVV INVÁLIDO OU VAZIO>");
			UtilsUra.falhou();
		}
		LOG.info("CVV validado >>> " + cvv);
		clicarDiscadorCelularThreads(cvv);
	}

	public void opcaoDoMenuTransacional(String arg1) {
		clicarDiscadorCelularThreads(arg1);
		LOG.info("Validando a Opcao do Menu >>> " + arg1);
	}

	public void clicoNo(String arg1) {
		LOG.info("Digito os digitos >>> " + arg1);
		clicarDiscadorCelularThreads(arg1);
	}

	public void agenciaEContaPoupanca() {
		String agencia = PlanilhaDTO.getAgencia();
		String conta = PlanilhaDTO.getContaPoupanca();

		if (conta.length() == 9) {
			agenciaConta = agencia + "-" + conta;
		} else if (conta.length() == 13) {
			agenciaConta = conta.substring(0, 4) + "-" + conta.substring(4, 13);
		} else {
			RelatorioValues.setTipoErro("MASSA");
			RelatorioValues.setErro("Agência e conta poupança inválida ou vazia -- CPF: " + PlanilhaDTO.getCpf());
			LOG.info("<AGÊNCIA E CONTA INVÁLIDA>");
			UtilsUra.falhou();
		}
		LOG.info("Validado a Agência + Poupança >>> " + agenciaConta);
		utilsWebSantander.clicarDiscadorCelular(agenciaConta);
	}

	public void agenciaEContaPoupancaTransacional() {
		String agencia = PlanilhaDTO.getAgencia();
		String conta = PlanilhaDTO.getContaPoupanca();

		if (conta.length() == 9) {
			agenciaConta = agencia + "-" + conta;
		} else if (conta.length() == 13) {
			agenciaConta = conta.substring(0, 4) + "-" + conta.substring(4, 13);
		} else {
			RelatorioValues.setTipoErro("MASSA");
			RelatorioValues
					.setErro("Agência e conta poupança inválida ou vazia -- CPF: " + PlanilhaDTO.getCpf());
			LOG.info("<AGÊNCIA E CONTA INVÁLIDA>");
			UtilsUra.falhou();
		}
		LOG.info("Agência e Conta Poupanca validado >>> " + agenciaConta);
		clicarDiscadorCelularThreads(agenciaConta);
	}

	public void agenciaEConta() {
		String agencia = PlanilhaDTO.getAgencia();
		String conta = PlanilhaDTO.getContaCorrente();

		if (conta.length() == 9) {
			agenciaConta = agencia + "-" + conta;
		} else if (conta.length() == 13) {
			agenciaConta = conta.substring(0, 4) + "-" + conta.substring(4, 13);
		} else {
			RelatorioValues.setTipoErro("MASSA");
			RelatorioValues
					.setErro("Agência e conta poupança inválida ou vazia -- CPF: " + PlanilhaDTO.getCpf());
			LOG.info("<AGÊNCIA E CONTA INVÁLIDA>");
			UtilsUra.falhou();
		}
		LOG.info("Conta e Agência validado >>> " + agencia + " - " + conta);
		utilsWebSantander.clicarDiscadorCelular(agencia + conta);
	}

	public void agenciaEContaTransacional() {
		String agencia = PlanilhaDTO.getAgencia();
		String conta = PlanilhaDTO.getContaCorrente();
		if (conta.length() == 9) {
			agenciaConta = agencia + "-" + conta;
		} else if (conta.length() == 13) {
			agenciaConta = conta.substring(0, 4) + "-" + conta.substring(4, 13);
		} else {
			RelatorioValues.setTipoErro("MASSA");
			RelatorioValues
					.setErro("Agência e conta poupança inválida ou vazia -- CPF: " + PlanilhaDTO.getCpf());
			LOG.info("<AGÊNCIA E CONTA INVÁLIDA>");
			UtilsUra.falhou();
		}
		LOG.info("Conta e Agência validado  >>> " + agencia + " - " + conta);
		clicarDiscadorCelularThreads(agencia + conta);
	}

	public void valor() {
		String valor = PlanilhaDTO.getValor();
		String codBarras = PlanilhaDTO.getCodigoBarra();

		if (valor.length() == 0 && codBarras.length() > 0) {
			valor = codBarras.substring(codBarras.length() - 8, codBarras.length());
			int inteiro = Integer.parseInt(valor);
			valor = "";
			valor += inteiro == 0 ? 5000 : inteiro;
		} else if (valor.length() == 0 && codBarras.length() == 0) {
			valor = "5000";
		}
		LOG.info("Digitando o Valor: " + valor);
		utilsWebSantander.clicarDiscadorCelular(valor);
	}

	public void valorTransacional() {
		String valor = PlanilhaDTO.getValor();
		String codBarras = PlanilhaDTO.getCodigoBarra();

		if (valor.length() == 0 && codBarras.length() > 0) {
			valor = codBarras.substring(codBarras.length() - 8, codBarras.length());
			int inteiro = Integer.parseInt(valor);
			valor = "";
			valor += inteiro == 0 ? 5000 : inteiro;
		} else if (valor.length() == 0 && codBarras.length() == 0) {
			valor = "5000";
		}
		LOG.info("Valor Validado >>> " + valor);
		clicarDiscadorCelularThreads(valor);
	}

	public void dataPassada() {
		String dataPassada = PlanilhaDTO.getDataPassada();

		if (dataPassada.length() == 0) {
			dataPassada = dataAgendamento(-7);
		}
		LOG.info("Validando DATA INICIO >>> " + dataPassada);
		utilsWebSantander.clicarDiscadorCelular(dataPassada);
	}

	public void dataPassadaTransacional() {
		String dataPassada = PlanilhaDTO.getDataPassada();

		if (dataPassada.length() == 0) {
			dataPassada = dataAgendamento(-7);
		}
		LOG.info("Validando DATA INICIO >>> " + dataPassada);
		clicarDiscadorCelularThreads(dataPassada);
	}

	public void dataFutura() {
		String dataFutura = PlanilhaDTO.getDataFutura();

		LOG.info("Validando DATA FIM >>> " + dataFutura);
		utilsWebSantander.clicarDiscadorCelular(dataFutura);
	}

	public void dataFuturaTransacional() {
		String dataFutura = PlanilhaDTO.getDataFutura();

		LOG.info("Validando DATA FIM >>> " + dataFutura);
		clicarDiscadorCelularThreads(dataFutura);
	}

	public void validacaoDataAtual() {
		String dataAtual = dataAtual();

		LOG.info("Validando DATA ATUAL >>> " + dataAtual);
		utilsWebSantander.clicarDiscadorCelular(dataAtual);
	}

	public void validacaoDataAtualTransacional() {
		String dataAtual = dataAtual();

		LOG.info("Validando DATA ATUAL >>> " + dataAtual);
		clicarDiscadorCelularThreads(dataAtual);
	}

	public void validacaoDataInicioParaUsoNoExterior() {
		String dataAgendamento = dataAgendamento(10);

		LOG.info("Validando DATA INICIO >>> " + dataAgendamento);
		utilsWebSantander.clicarDiscadorCelular(dataAgendamento);
	}
	
	public void validacaoDataFimParaUsoNoExterior() {
		String dataAgendamento = dataAgendamento(20);

		LOG.info("Validando DATA INICIO >>> " + dataAgendamento);
		utilsWebSantander.clicarDiscadorCelular(dataAgendamento);
	}
	
	public void validacaoDataAgendamento() {
		String dataAgendamento = dataAgendamento();

		LOG.info("Validando DATA INICIO >>> " + dataAgendamento);
		utilsWebSantander.clicarDiscadorCelular(dataAgendamento);
	}

	public void validacaoDataAgendamentoTransacional() {
		String dataAgendamento = dataAgendamento();

		LOG.info("Validando DATA INICIO >>> " + dataAgendamento);
		clicarDiscadorCelularThreads(dataAgendamento);
	}

	public void verificaSePossuiMaisDeUmCartao(Integer arg1) {
		texto = recLogic.fraseologia(arg1);

		LOG.info("Validando se possui mais de um cartão >>> ");
		if (texto.contains("possui")) {
			LOG.info("Teclando (1) para escolher o primeiro cartão");
			utilsWebSantander.clicarDiscadorCelular("1");
		} else {
			LOG.info("Cliente só possui um cartão");
		}
	}

	public void opcaoCartaoIndoParaMenuPrincipal() {
		LOG.info("Indo ao menu principal de cartões...");
		texto = recLogic.fraseologia(25000).toLowerCase();

		if (texto.contains("pagamento ou emissão") || 
				texto.contains("contestação de compra") || 
					texto.contains("saber mais do programa esfera") || 
						texto.contains("habilitar o cartão para uso") || 
							texto.contains("para bloqueio desbloqueio") || 
								texto.contains("segunda via do cartão") || 
									texto.contains("sobre outros assuntos")) {
			
			LOG.info("Chegou no menu principal...");

		} else if ((texto.contains("greve") && texto.contains("correios") && texto.contains("devido")) || 
					(texto.contains("correios"))) {
			
			LOG.info("Informativo URA...");
			opcaoCartaoIndoParaMenuPrincipal();

		} else if(texto.contains("um aumento") ||
					texto.contains("pré-aprovado") || 
						texto.contains("resumo") ||
					    	texto.contains("sistema não identificou") ||
						     	texto.contains("desconsidere essa informação") ||
						     		texto.contains("fazer o pagamento agora") ||
						     			(texto.contains("sido paga") && texto.contains("fazer o pagamento")) ||
						     				(texto.contains("aproveitar") && texto.contains("fazer o pagamento"))
				  ) {
			LOG.info("Pulando Informações...");
			utilsWebSantander.clicarDiscadorCelular("2");
			opcaoCartaoIndoParaMenuPrincipal();

		} else if (texto.contains("mais de um cartão") || 
						texto.contains("possui") && texto.contains("mais") && texto.contains("cartão") || 
							texto.contains("agora se quiser") && texto.contains("cartão") || 
								texto.contains("agora se quer") && texto.contains("cartão") ||
									texto.contains("falar do cartão")) {
									
			LOG.info("Escolhendo o 1º Cartão...");
			utilsWebSantander.clicarDiscadorCelular("1");
			opcaoCartaoIndoParaMenuPrincipal();

		} else if (texto.contains("crédito") && texto.contains("débito") && texto.contains("falar")) {
			LOG.info("Escolhendo o Cartão de Crédito...");
			utilsWebSantander.clicarDiscadorCelular("1");
			opcaoCartaoIndoParaMenuPrincipal();
		
		} else if (texto.contains("opções")) {
			LOG.info("Pulando Opções...");
			utilsWebSantander.clicarDiscadorCelular("2");
			opcaoCartaoIndoParaMenuPrincipal();

		} else {
			contador++;
			if (contador > 3) {
				UtilsUra.falhou();
			} else {
				opcaoCartaoIndoParaMenuPrincipal();
			}
		}
	}

	public void verificaSePossuiMaisDeUmaContaPoupanca(Integer arg1) {
		arg1 = 15000;
		texto = recLogic.fraseologia(arg1).toLowerCase();

		LOG.info("Validando se possui mais de uma Conta Poupança...");
		if (texto.contains("agência") || 
			(texto.contains("possui") && texto.contains("conta"))
		   ) {
			LOG.info("CPF com mais de uma Conta Poupança, digitando Agência + Poupança...");
			agenciaEContaPoupanca();
		} else {
			LOG.info("CPF só possui uma Conta Poupança");
		}
	}

	public void alterarSenhaComConfirmacao() {
		String senhaNova = "" + new Random().nextInt(999999);

		LOG.info("Validando se solicita nova senha");
		recLogic.fraseologia("senha", 15000);
		LOG.info("Digitando senha nova como >>> " + senhaNova);
		utilsWebSantander.clicarDiscadorCelular(senhaNova);
		LOG.info("Validando se solicita confirmação da nova senha");
		recLogic.fraseologia("senha", 15000);
		LOG.info("Confirmando senha nova como >>> " + senhaNova);
		utilsWebSantander.clicarDiscadorCelular(senhaNova);
		PlanilhaDTO.setSenha6Dig(senhaNova);
	}

	public void dataDeNascimento(String arg1, String arg2) {
		LOG.info("Validando a Opcao do Menu >>> " + arg1);
		fraseologiaDataNascimento(arg1, Integer.valueOf(arg2));
		UtilsUra.sleep(10000, "Data de Nascimento...");
	}

	public void dataDeNascimentoTransacional() {
		String dataNascimento = PlanilhaDTO.getDataNascimento().replaceAll("[^0-9]", "");
		LOG.info("Validando data de nascimento >>> " + dataNascimento);
		clicarDiscadorCelularThreads(dataNascimento);
	}

	public void dataDeNascimento() {
		String dataNascimento = PlanilhaDTO.getDataNascimento().replaceAll("[^0-9]", "");
		LOG.info("Validando data de nascimento >>> " + dataNascimento);
		utilsWebSantander.clicarDiscadorCelular(dataNascimento);
	}

	public void indoParaOpcaoDeCreditoClassicoVangoghExclusivo() {
		opcaoDoMenuComOTexto("pagamento", "26000");
	}

	public void indoParaMenuPrincipalPrivateOuSelectTransacional() {
		menuComTextoEID("você está", "30000");
		cpf();
		desbloquearComSenhaNoTopo("25000");
		senhaTransacional();
		validaSegmentoPrivate("");
		opcaoDoMenuTransacional("1");
	}

	public void indoParaMenuPrincipalPrivateOuSelectFraseologia() {
		menuComTextoEID("você está", "30000");
		cpf();
		desbloquearComSenhaNoTopo("25000");
		senha();
		validaSegmentoPrivate("conta");
		opcaoDoMenu("1");
	}

	public void indoParaMenuPrincipalClassicoOuExclusivoOuVangoghTransacional() {
		menuComTextoEID("você está", "30000");
		cpf();
		desbloquearComSenhaNoTopo("25000");
		senhaTransacional();
	}

	public void indoParaMenuPrincipalClassicoOuExclusivoOuVangoghFraseologia() {
		menuComTextoEID("você está", "30000");
		cpf();
		desbloquearComSenhaNoTopo("25000");
		senha();
	}

	public String dataAtual() {
		LOG.info("Digito a data Hoje...");
		LocalDate hoje = LocalDate.now();
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("ddMMuu");
		acao = hoje.format(formatter);
		return hoje.format(formatter);
	}

	public String dataAgendamento() {
		LOG.info("Digito a data Hoje com acréscimo de 7 dias");
		LocalDate hojeMaisSete = LocalDate.now().plusDays(7);
		if (hojeMaisSete.getDayOfWeek().equals(DayOfWeek.SATURDAY)
				|| hojeMaisSete.getDayOfWeek().equals(DayOfWeek.SUNDAY)) {
			hojeMaisSete = hojeMaisSete.plusDays(2);
		}
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("ddMMuuuu");
		acao = hojeMaisSete.format(formatter);
		return hojeMaisSete.format(formatter);
	}

	public String dataAgendamento(int dias) {
		DateTimeFormatter formatter;
		if (dias <= 1) {
			formatter = DateTimeFormatter.ofPattern("ddMMuu");
		} else {
			formatter = DateTimeFormatter.ofPattern("ddMMuuuu");
		}

		LocalDate hojeMaisSete = LocalDate.now().plusDays(dias);
		if (hojeMaisSete.getDayOfWeek().equals(DayOfWeek.SATURDAY)
				|| hojeMaisSete.getDayOfWeek().equals(DayOfWeek.SUNDAY)) {
			hojeMaisSete = hojeMaisSete.plusDays(2);
		}
		acao = hojeMaisSete.format(formatter);
		LOG.info("Digito a data " + hojeMaisSete.format(formatter));
		return hojeMaisSete.format(formatter);
	}

	public void cso(String arg1, int arg2, String texto) {
		arg1 = "continuar";
		arg2 = 15000;
		LOG.info("Validando opcao inicial, texto esperado >>> " + arg1);

		if (texto.contains("assinatura eletrônica")) {
			String assinatura = "258369";
			utilsWebSantander.clicarDiscadorCelular(assinatura);
			UtilsUra.sleep(5000, "CSO...");
		} else if (texto.contains("continuar")) {
			fraseologiaUraCartaoPosicao(texto);
		} else if (texto.contains("código")) {
			String codigo = PlanilhaDTO.getCvv();
			utilsWebSantander.clicarDiscadorCelular(codigo);
		}
	}

	public void verificaSePrecisaPularMenusEmContaCorrente(int arg1) {
		texto = recLogic.fraseologia(30000).toLowerCase();
		
		if (texto.contains("saldo da sua conta corrente é de") || 
			 texto.contains("extrato") || 
			   texto.contains("talão de chque") ||
			     texto.contains("fazer pagamentos") ||
				  (texto.contains("greve") && texto.contains("correios") && texto.contains("devido")) || 
				   texto.contains("correios")
		   ) {
			LOG.info("Não precisou teclar (2).");

		} else if (texto.contains("corrente") || texto.contains("se não é o dois")
				|| texto.contains("quer que eu fale") || texto.contains("saldo dela agora")) {

			LOG.info("Teclando (2) para não ouvir o saldo novamente da Conta-Corrente...");
			utilsWebSantander.clicarDiscadorCelular("2");

		} else {
			LOG.info("<MENU ERRADO> --- <NÃO FOI POSSÍVEL VALIDAR A OPÇÃO DA CONTA-CORRENTE>");
			RelatorioValues.setTipoErro("AMBIENTE");
			RelatorioValues.setErro("Devido a alguma instabilidade ou massa, entrou no menu errado");
			UtilsUra.falhou();
		}
	}

	public void codigoDeBarrasIndoParaResultadoEsperado(String validar) {
		String codigoBarra = PlanilhaDTO.getCodigoBarra();

		if (codigoBarra.isEmpty() || codigoBarra == null) {
			LOG.info("Planilha de Massa sem código de Barras...");
			RelatorioValues.setTipoErro("MASSA");
			RelatorioValues.setErro("Planilha de Massa sem Código de Barras");
			LOG.info("<NÃO TEM CÓDIGO DE BARRAS NA PLANILHA DE MASSA PARA O CENÁRIO>");
			UtilsUra.falhou();
		}
		texto = recLogic.fraseologia(32000);

		if (texto.contains(validar)) {
			LOG.info("Palavra chave " + validar + " validada >>> [ OK ]");

		} else if (texto.contains("confirmar")
				|| (texto.contains("pagamento") && (texto.contains("título") || texto.contains("titulo"))
						&& (texto.contains("número") || texto.contains("numero")))) {
			opcaoDoMenu("1");
			codigoDeBarrasIndoParaResultadoEsperado(validar);

		} else if (texto.contains("código de barra")) {
			contador++;
			if (contador > 3) {
				LOG.info(">>>EXCEDEU 3 TENTATIVAS<<<");
				UtilsUra.falhou();
			}

			LOG.info("Validando CODIGO DE BARRA >>> " + codigoBarra);
			utilsWebSantander.clicarDiscadorCelular(codigoBarra);
			UtilsUra.sleep(21000, "Indo Código de Barras...");
			codigoDeBarrasIndoParaResultadoEsperado(validar);

		} else if (texto.contains("valor")) {
			valor();
			codigoDeBarrasIndoParaResultadoEsperado(validar);

		} else if (texto.contains("vencimento")) {
			dataPassada();
			codigoDeBarrasIndoParaResultadoEsperado(validar);

		}

		else if (texto.contains("possui") || texto.contains("mais de um cartão") || texto.contains("mais um cartão")) {
			LOG.info("Teclando (1) para escolher o primeiro cartão");
			utilsWebSantander.clicarDiscadorCelular("1");
			codigoDeBarrasIndoParaResultadoEsperado(validar);
		} else {
			UtilsUra.falhou();
		}
	}

	public void validoUmDosTextosMenu(String valor, int tempo) {
		texto = recLogic.fraseologia(tempo);
		boolean resultado = menuComUmDosTextos(valor, texto);

		if(resultado) {
			LOG.info("VALIDAÇÂO BEM-SUCEDIDA");
		} else {
			LOG.info("<RE_TEST> --- <NÃO FOI POSSÍVEL VALIDAR AS OPÇÕES>");
			LOG.info("<TRADUÇÃO ERRADA>");
			RelatorioValues.setTipoErro("RE_TEST");
			RelatorioValues.setErro("Erro de Tradução -- Validações: " + valor + " -- Texto traduzido: " + texto);
			UtilsUra.falhou();
		}
	}
	
	public boolean menuComUmDosTextos(String txt, String textoTraduzido) {
		LOG.info("Validando a EXISTÊNCIA de alguns dos textos: '" + txt.replaceAll(";", " - ") + "'");
		String[] alternativasEsperadas = txt.split(";");

		boolean foiEncontrado = false;
		for (String alternativa : alternativasEsperadas) {
			if (alternativa != null && !alternativa.isEmpty()) {
				if (textoTraduzido.toLowerCase().contains(alternativa.trim().toLowerCase())) {
					LOG.info("ALTERNATIVA VALIDADA: '" + alternativa + "'");
					foiEncontrado = true;
					break;
				}
			}
		}
		return foiEncontrado;
	}

	public void digitoRamal() {
		utilsWebSantander.clicarDiscadorCelular(GerenciadorDePropriedades.getInstance().getRamal());
		UtilsUra.sleep(7000, "<< RAMAL >>");
	}
	
	public void verificaSeTemMensagemInformativa() {
		LOG.info("Verificando se há mensagem informativa...");
		texto = recLogic.fraseologia(23000).toLowerCase();
		if (texto.contains("fatura fechada") || texto.contains("cartão de crédito")
				|| texto.contains("conta corrente é de")) {
			LOG.info("Aguardando mensagem informativa...");
			verificaSeTemMensagemInformativa();

		} else if (texto.contains("agora se quer") && texto.contains("outro cartão")
				|| texto.contains("falar do cartão") && texto.contains("outro cartão")) {

			LOG.info("Teclando (2) para a escolha de outro cartão...");
			utilsWebSantander.clicarDiscadorCelular("2");
			verificaSeTemMensagemInformativa();
			if (numeroCartao > 1) {
				numeroCartao--;
			}
		}
		else if (texto.contains("agora se quer") || texto.contains("falar do cartão") || texto.contains("cartão final")
				|| texto.contains("mais de um cartão")) {

			LOG.info("Estou no CARTÃO número: " + "(" + numeroCartao + ")");
			utilsWebSantander.clicarDiscadorCelular(Integer.toString(numeroCartao));
			this.numeroCartao = 1;
		}
	}
	
	public void procuraCartaoAdicional() {
		if (numeroCartao < 4) {
			texto = recLogic.fraseologia(35000).toLowerCase();
			
			if ((texto.contains("resumo")) || 
					(texto.contains("sistema não identificou")) || 
						(texto.contains("pré-aprovado"))) {
				
				LOG.info("Teclando (2) para pular informações...");
				utilsWebSantander.clicarDiscadorCelular("2");
				procuraCartaoAdicional();
			
			} else if (texto.contains("agora se quer") && texto.contains("outro cartão") || 
							texto.contains("falar do cartão") && texto.contains("outro cartão")) {

				LOG.info("Teclando (2) para a escolha de outro cartão...");
				utilsWebSantander.clicarDiscadorCelular("2");
				procuraCartaoAdicional();
			} 
			
			else if (texto.contains("agora se quer") || 
							texto.contains("falar do cartão") || 
								texto.contains("cartão final") ||
									texto.contains("mais de um cartão")) {
				
				LOG.info("Estou no CARTÃO número: " + "("+numeroCartao+")");
				utilsWebSantander.clicarDiscadorCelular(Integer.toString(numeroCartao));
				procuraCartaoAdicional();
			}  
			
			else if (texto.contains("posição número") || texto.contains("continuar")) {
				
				LOG.info("Identificando e Digitando a Posição de Segurança do Cartão...");
				fraseologiaUraCartaoPosicao(texto);
				procuraCartaoAdicional();
				
			} else if (texto.contains("pagamento ou emissão") || 
							texto.contains("contestação de compra") ||
								texto.contains("parcelamento pagamento") ||
									texto.contains("limite disponível")) {
				
				LOG.info("Chegou ao menu principal de CARTÕES...");
				utilsWebSantander.clicarDiscadorCelular("1");
				procuraCartaoAdicional();
			
			} else if (texto.contains("cartão adicional")) {
				LOG.info("CARTÃO ADICIONAL ENCONTRADO: " + texto);
				utilsWebSantander.clicarDiscadorCelular("0");
				utilsWebSantander.clicarDiscadorCelular("2");
			
			} else if (texto.contains("não está dísponivel") || 
							texto.contains("precisa da segunda via") ||
								texto.contains("um novo parcelamento")) {

				UtilsUra.sleep(5000, "Cartão adicional, não foi encontrado, voltando ao menu principal da URA...");
				utilsWebSantander.clicarDiscadorCelular("0");
				LOG.info("Indo ao menu principal de CARTÕES...");
				utilsWebSantander.clicarDiscadorCelular("2");
				numeroCartao++;
				procuraCartaoAdicional();
			} 
		
		} else {
			RelatorioValues.setTipoErro("MASSA");
			RelatorioValues.setErro("Não foi encontrado cartão adicional em nenhum dos cartões -- CPF: " + PlanilhaDTO.getCpf());
			LOG.info("<NÃO FOI ENCONTRADO CARTÃO ADICIONAL EM NENHUM DOS CARTÕES>");
			this.numeroCartao = 1;
			UtilsUra.falhou();
		}
	}

	public void realizoValidacaoDeCaminhos(String textoParaSerValidado, String trueClico, String msg1, String falseClico, String msg2, int tempoDeGravacao) {
		texto = recLogic.fraseologia(tempoDeGravacao).toLowerCase();
		if(menuComUmDosTextos(textoParaSerValidado, texto)) {
			LOG.info("TRUE - Realizando Ação: CLICAR > " + trueClico + " - MOTIVO: " + msg1);
			utilsWebSantander.clicarDiscadorCelular(trueClico);
		} else {
			LOG.info("FALSE - Realizando Ação: CLICAR > " + falseClico + " - MOTIVO: " + msg2);
			utilsWebSantander.clicarDiscadorCelular(falseClico);
		}
	}
} 