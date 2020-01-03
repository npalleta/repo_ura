package br.com.rsi.ura.teste.pagamentos;

import org.apache.log4j.Logger;

import br.com.rsi.ura.fraseologia.ValidacaoFraseologia;
import br.com.rsi.ura.logic_geral.CieloUraLogic;
import br.com.rsi.ura.sheets.massa.PlanilhaDTO;
import br.com.rsi.ura.sheets.relatorioPorCenario.RelatorioValues;
import br.com.rsi.ura.utils.UtilsUra;
import br.com.rsi.ura.utils.UtilsWeb;

public class PagamentosLogic {
	
	private final Logger LOG = Logger.getLogger(PagamentosLogic.class);
	private String cenario = PlanilhaDTO.getNomeCenario().toLowerCase();
	private String validacaoFinalPgt = (cenario.contains("invalido") || cenario.contains("inválido") || cenario.contains("permitido") ? "maior que o permitido;barras digitado é inválido;barras está incompleto;barras é inválido;inválido" : "realizado com sucesso;sucesso");
	private int execTributos = 0;
	private String texto;
	
	private ValidacaoFraseologia recPtg = new ValidacaoFraseologia();
	private CieloUraLogic logicPgt = new CieloUraLogic();
	private UtilsWeb pgtWeb = new UtilsWeb();
	
	private String mensagemInformativaPgt() {
		texto = recPtg.fraseologia(22000).toLowerCase();
		if(texto.contains("ajudar a manter sua vida financeira") ||
				texto.contains("financeira em ordem") || 
					(texto.contains("renegociação") && texto.contains("transferir")) ||
						(texto.contains("contas atrasadas") && texto.contains("transferido")) ||
							(texto.contains("organizar") && texto.contains("posso te passar agora")) ||
								texto.contains("renegociação")) {
			LOG.info("Pulando Opção de Transferir para Renegociação...");
			pgtWeb.clicarDiscadorCelular("2");
			return mensagemInformativaPgt();
		} else {
			LOG.info("Chegou ao MENU");
			return texto;
		}
	}
	
	private String validoManeiraPgt(int opcaoDefinicao) {
		String maneiraPgt = "";
		switch (opcaoDefinicao) {
			case 1:
				if (cenario.contains("dpvat") && !cenario.contains("2ipvas") && !cenario.contains("2dpvats")) {
					maneiraPgt = "DPVAT";
				} else if (cenario.contains("ipva") && !cenario.contains("2ipvas") && !cenario.contains("2dpvats")) {
					maneiraPgt = "IPVA";
				} else {
					maneiraPgt = (cenario.contains("2ipva") ? "2 IPVA" : "2 DPVAT");
				}
			case 2:
				if((cenario.contains("debito") || cenario.contains("débito") || (cenario.contains("consumo") || !cenario.contains("crédito"))) && !cenario.contains("agendado")) {
					maneiraPgt = "PGT DÉBITO EM CONTA;1;1";
				} else if ((cenario.contains("credito") || cenario.contains("crédito")) && !cenario.contains("agendado")) {
					maneiraPgt = "PGT NO CARTÃO DE CRÉDITOs;2";
				} else {
					maneiraPgt = "PGT DÉBITO EM CONTA AGENDADO;1;2";
				}
		}
		return maneiraPgt;
	}
	
	public void pagamentoTributoIpvaDpvat() {
		texto = mensagemInformativaPgt();
		LOG.info("PAGAMENTOS TRIBUTOS -- " + texto);
		String maneiraPgt = validoManeiraPgt(1);
		if(texto.contains("continuar")) logicPgt.fraseologiaUraCartaoPosicao(texto);
		
		int quatPgtTrbt = (maneiraPgt.contains("2 IPVA") || maneiraPgt.contains("2 DPVAT") ? 2 : 1);
		for(int exe = 1; exe <= quatPgtTrbt; exe++) {
			
			if(exe == 2) {  
				UtilsUra.sleep(5000, "Indo Novamente ao Menu de PTG de TRIBUTOS...");
				pgtWeb.clicarDiscadorCelular("2");
				pgtWeb.clicarDiscadorCelular("5");
			}
			
			pgtWeb.clicarDiscadorCelular("2");
			UtilsUra.sleep(10000, "Pagando com o RENAVAM...");
			if(exe == 1) primeiroRenavam(); else segundoRenavam();
			texto = recPtg.fraseologia(25000).toLowerCase();
			
			if(!cenario.contains("incorreto") && 
				 !cenario.contains("nãocadastrado") && 
				 	!cenario.contains("naocadastrado")) {
				if(texto.contains("pagamento de dpvat e ipva é preciso cadastrar") || 
					texto.contains("é preciso cadastrar")) {
					LOG.info("<MASSA> --- <O " + exe + "º TRIBUTO, NÃO ESTÁ CADASTRADO, NECESSÁRIO CADASTRO PARA PGT>");
					RelatorioValues.setTipoErro("MASSA");
					RelatorioValues.setErro("O " + exe + "º Tributo, não está cadastrado para o pagamento, cenário necessita o cadastro");
					UtilsUra.falhou();
				}
			}
			
			if(texto.contains("este renavam tem ipva e dpvat") || 
				(texto.contains("pagar o dpvat") && texto.contains("pagamento do ipva"))) {
				LOG.info("RENAVAM possuí IPVA e DPVAT para pagamento, realizando PTG do " + exe + "º - " + exe);
				pgtWeb.clicarDiscadorCelular(maneiraPgt.contains("IPVA") ? "2" : "1");
			} else if(texto.contains("dpvat em aberto") || 
						texto.contains("ipva em aberto") || 
							texto.contains("exercício do ano")) {
				LOG.info("Informativo do " + exe + (maneiraPgt.contains("IPVA") ? "º IPVA" : "º DPVAT") + "...");
				texto = recPtg.fraseologia(25000).toLowerCase();
			}
			
			if(texto.contains("confirmar") || 
					texto.contains("pagamentos de taxas realizadas") || 
						texto.contains("terão a data de compensação")) {
				LOG.info("Confirmando PGT DO " + quatPgtTrbt + "º TRIBUTO...");
				pgtWeb.clicarDiscadorCelular("1");
			}
			
			if(logicPgt.menuComUmDosTextos(validacaoFinalPgt, recPtg.fraseologia(27000))) {
				LOG.info("PGT do " + exe + "º TRIBUTO foi realizado com SUCESSO");
			} else {
				LOG.info("<RE_TEST> --- <NÃO FOI POSSÍVEL REALIZAR O PAGAMENTO DO " + exe + "º TRIBUTO>");
				RelatorioValues.setTipoErro("RE_TEST");
				RelatorioValues.setErro("Por algum motivo não foi possível completar o pagamento do " + exe + "º Tributo");
				UtilsUra.falhou();
			}
		}
	}
	
	public void realizoCaminhoParaPgtTitulo() {
		if(execTributos == 0) texto = mensagemInformativaPgt();
		else texto = recPtg.fraseologia(22000);
		execTributos++;
		
		if (texto.contains("continuar")) {
			logicPgt.fraseologiaUraCartaoPosicao(texto);
			String[] pgtTitulo = validoManeiraPgt(2).split(";");
			
			for(int i = 0; i < pgtTitulo.length; i++) {
				System.out.println(pgtTitulo[0]);
			}
			
			System.out.println(pgtTitulo.length);
			
			LOG.info("PAGAMENTOS TÍTULOS -- " + pgtTitulo[0]);
			pgtWeb.clicarDiscadorCelular(pgtTitulo[1]);
			if(pgtTitulo.length > 2) { 
				pgtWeb.clicarDiscadorCelular(pgtTitulo[2]);
				if(pgtTitulo[2].contains("2")) logicPgt.validacaoDataAgendamentoTransacional();
			}
			realizoCaminhoParaPgtTitulo();
			
		} else if (texto.contains("digita pra mim o código de barras") || 
					 texto.contains("código de barra")) {
			codigoDeBarras();
			texto = recPtg.fraseologia(20000).toLowerCase();
			
			if(!cenario.contains("invalido") && !cenario.contains("inválido") && 
				(texto.contains("inválido") || texto.contains("incompleto"))) {
				LOG.info("<MASSA> --- <CÓDIGO DE BARRAS INVÁLIDO, CENÁRIO DE PGT VÁLIDO>");
				RelatorioValues.setTipoErro("MASSA");
				RelatorioValues.setErro("Código de barras inválido, cenário de pagamento válido");
				UtilsUra.falhou();
			} else if (cenario.contains("invalido") && cenario.contains("inválido") && 
						logicPgt.menuComUmDosTextos(validacaoFinalPgt, texto)) {
				LOG.info("VALIDAÇÃO DE TENTATIVA DE PGT TÍTULO --INVÁLIDO REALIZADO-- COM SUCESSO");
			} else if(cenario.contains("permitido") && 
						logicPgt.menuComUmDosTextos(validacaoFinalPgt, texto)) {
				LOG.info("VALIDAÇÃO DE TENTATIVA DE PGT TÍTULO COM --VALOR MAIOR QUE O PERMITIDO-- REALIZADO COM SUCESSO");
			} else realizoCaminhoParaPgtTitulo();

		} else if (texto.contains("digite o valor") || 
					texto.contains("valor")) {
			logicPgt.valor();
			realizoCaminhoParaPgtTitulo();

		} else if (texto.contains("digite a data de vencimento") || 
					 texto.contains("data de vencimento") ||
					   texto.contains("vencimento")) {
			logicPgt.dataPassada();
			realizoCaminhoParaPgtTitulo();

		} else if (texto.contains("possui") || 
					 texto.contains("mais de um cartão") || 
					   texto.contains("mais um cartão")) {
			LOG.info("Escolhendo o 1º CARTÃO...");
			pgtWeb.clicarDiscadorCelular("1");
			realizoCaminhoParaPgtTitulo();
			
		} else if (texto.contains("confirmar") || 
					(texto.contains("pagamento") && (texto.contains("título") || 
					  texto.contains("titulo")) && (texto.contains("número") || texto.contains("numero")))) {
						pgtWeb.clicarDiscadorCelular("1");
			if (logicPgt.menuComUmDosTextos(validacaoFinalPgt, recPtg.fraseologia(25000))) 
				LOG.info("PAGAMENTO DO TÍTULO --VÁLIDO-- REALIZADO COM SUCESSO");
		} else {
			LOG.info("<RE_TEST> --- <POR ALGUM MOTIVO NÃO FOI POSSÍVEL CONCLUIR O PGT DO TÍTULO>");
			RelatorioValues.setTipoErro("RE_TEST");
			RelatorioValues.setErro("Por algum motivo não foi possível concluir o pagamento do título");
			UtilsUra.falhou();
		}
	}
		
	public void codigoDeBarras() {
		String codigoBarra = PlanilhaDTO.getCodigoBarra();
		if(codigoBarra == null || codigoBarra.isEmpty()) {
			LOG.info("<MASSA> --- <SEM CÓDIGO DE BARRAS ASSOCIADO AO CENÁRIO>");
			RelatorioValues.setTipoErro("MASSA");
			RelatorioValues.setErro("Planilha de massa sem CÓDIGO DE BARRAS");
			UtilsUra.falhou();
		}
		LOG.info("CODIGO DE BARRA: " + codigoBarra);
		pgtWeb.clicarDiscadorCelular(codigoBarra);
	}
		
	public void primeiroRenavam() {
		String renavam1 = PlanilhaDTO.getRenavam1();
		if(renavam1 == null || renavam1.isEmpty()) {
			LOG.info("<MASSA> --- <SEM RENAVAM - 1 ASSOCIADO AO CENÁRIO>");
			RelatorioValues.setTipoErro("MASSA");
			RelatorioValues.setErro("Planilha de massa sem RENAVAM - 1");
			UtilsUra.falhou();
		}
		LOG.info("RENAVAM - 1: " + renavam1);
		pgtWeb.clicarDiscadorCelular(renavam1);
	}

	public void segundoRenavam() {
		String renavam2 = PlanilhaDTO.getRenavam2();
		if(renavam2 == null || renavam2.isEmpty()) {
			LOG.info("<MASSA> --- <SEM RENAVAM - 2 ASSOCIADO AO CENÁRIO>");
			RelatorioValues.setTipoErro("MASSA");
			RelatorioValues.setErro("Planilha de massa sem RENAVAM - 2");
			UtilsUra.falhou();
		}
		LOG.info("RENAVAM - 2: " + renavam2);
		pgtWeb.clicarDiscadorCelular(renavam2);
	}
}