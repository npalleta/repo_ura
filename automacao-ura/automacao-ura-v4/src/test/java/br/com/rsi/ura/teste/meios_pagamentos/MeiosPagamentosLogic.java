package br.com.rsi.ura.teste.meios_pagamentos;

import org.apache.log4j.Logger;

import br.com.rsi.ura.fraseologia.ValidacaoFraseologia;
import br.com.rsi.ura.logic_geral.CieloUraLogic;
import br.com.rsi.ura.sheets.massa.PlanilhaDTO;
import br.com.rsi.ura.sheets.relatorioPorCenario.RelatorioValues;
import br.com.rsi.ura.utils.UtilsUra;
import br.com.rsi.ura.utils.UtilsWeb;

public class MeiosPagamentosLogic {

	private final Logger LOG = Logger.getLogger(MeiosPagamentosLogic.class);
	private String cenario = PlanilhaDTO.getNomeCenario().toLowerCase().trim();
	private String[] formatoPgt = {};
	private String tipoPgmt;
	private String texto;
	
	private ValidacaoFraseologia recMeioPgt = new ValidacaoFraseologia();
	private CieloUraLogic logicMeiosPgmt = new CieloUraLogic();
	private UtilsWeb meioPgtWeb = new UtilsWeb();
	
	public void menuPagamentoDeFatura() {
		logicMeiosPgmt.validoUmDosTextosMenu("pagamento;conta;saldo", 26000);
		logicMeiosPgmt.opcaoDoMenu("1");
		texto = recMeioPgt.fraseologia(18000);
		if(texto.contains("posso te passar agora mesmo para um especialista") ||
			texto.contains("contas atrasadas") ||
			  texto.contains("precisa de ajuda para organizar")
			) {
			LOG.info("Pulando Renegociação...");
			logicMeiosPgmt.opcaoDoMenu("2");
			texto = recMeioPgt.fraseologia(12000);
		}
		if(texto.contains("voltar") ||
			texto.contains("títulos") ||
			  texto.contains("fatura") || 
			   texto.contains("transferências")
		   ) {
			LOG.info("Indo para o menu de PAGAMENTO DE FATURA...");
			logicMeiosPgmt.opcaoDoMenu("2");
		} else {
			LOG.info("<RE_TEST> --- <MENU ERRADO FATURA OU TRADUÇÃO ALGUMA INCOERÊNCIA NA TRADUÇÃO>");
			RelatorioValues.setTipoErro("RE_TEST");
			RelatorioValues.setErro("Menu errado - Meio Pagamentos - Texto Traduzido: " + texto);
			UtilsUra.falhou();
		}
	}
	
	private String validoMenuFatura(String texto) {
		if(texto.contains("assinatura eletrônica")) {
			LOG.info("<MASSA> --- <CPF PEDIU ASSINATURA ELETRÔNICA>");
			RelatorioValues.setTipoErro("MASSA");
			RelatorioValues.setErro("CPF pedindo Assinatura Eletrônica");
			UtilsUra.falhou();
		}
		
		if(texto.contains("posição número") || 
		    texto.contains("continuar")
		  ) {
			LOG.info("Identificando e digitando a POSIÇÃO DE SEGURANÇA DO CARTÃO...");
			logicMeiosPgmt.fraseologiaUraCartaoPosicao(texto);
			return validoMenuFatura(recMeioPgt.fraseologia(20000).toLowerCase());
			
		} else if ((texto.contains("possui") && texto.contains("cartão") && texto.contains("quiser falar")) || 
				     (texto.contains("mais de um") && texto.contains("cartão"))
				  ) {
			LOG.info("Possui mais de um CARTÃO, seleciondo o 1º CARTÃO...");
			meioPgtWeb.clicarDiscadorCelular("1");
			return validoMenuFatura(recMeioPgt.fraseologia(20000).toLowerCase());
			
		} else if(texto.contains("resumo") || 
				    texto.contains("sistema não identificou") ||
				      (texto.contains("um aumento") && texto.contains("pré-aprovado"))
				 ) {
			LOG.info("Pulando alguma INFORMAÇÂO...");
			meioPgtWeb.clicarDiscadorCelular("2");
			return validoMenuFatura(recMeioPgt.fraseologia(20000).toLowerCase());
			
		} else if(texto.contains("fatura parcial") || 
				   texto.contains("compras realizadas") || 
				    (texto.contains("limite disponível") && texto.contains("compra")) ||
				      texto.contains("contempladas nesse valor") ||
				       texto.contains("limite para saque")
			     ) {
			LOG.info("Informativo da FATURA DO CARTÃO, iniciando uma nova Gravação...");
			return recMeioPgt.fraseologia(20000).toLowerCase();
			
		} else {
			LOG.info("Seguindo com a transação da FATURA...");
			return texto;
		}
	}
	
	private void validaPossiveisFinaisDaTransacao(String texto) {
		if (texto.contains("digite o valor da fatura") || 
			 texto.contains("digite o valor")
		   ) {
			logicMeiosPgmt.valor();
			validaPossiveisFinaisDaTransacao(recMeioPgt.fraseologia(20000).toLowerCase());
			
		} else if ((texto.contains("confirmar") && texto.contains(this.tipoPgmt.toLowerCase())) || 
					(texto.contains("agendada") && (texto.contains("confirmar o agendamento") || texto.contains("não confere"))) ||
					 (texto.contains("paga hoje") && texto.contains("agora") && texto.contains("passei")) ||
					  texto.contains("confirmar")
				  ) {
			LOG.info("Confirmando...");
			meioPgtWeb.clicarDiscadorCelular("1");
		}
	}
	
	private String defineDetalhesDoPgmt() {
		String resultado;
		if((cenario.contains("mínimo") || cenario.contains("minimo")) &&
		    !cenario.contains("total")
		  ) {
			resultado = "2;MÍNIMO";
		} else if (cenario.contains("total") && 
			        (!cenario.contains("mínimo") && !cenario.contains("minimo"))
		          ) {
			resultado = "1;TOTAL";
		} else {
			resultado = "3;ENTRE O MÍNIMO E O TOTAL";
		}
		return resultado += (cenario.contains("pagamento") ? ";1" : ";2");
	}

	public void pagamentosOuAgendamentosDeFaturas() {
		this.formatoPgt = defineDetalhesDoPgmt().split(";");
		this.tipoPgmt = (formatoPgt[2].equals("1") ? "PAGAMENTO" : "AGENDAMENTO");
		LOG.info("<< " + this.tipoPgmt + " - " + formatoPgt[1] + " >>");
		
		LOG.info("Validando as POSSIBILIDADES no menu de FATURA...");
		texto = validoMenuFatura(recMeioPgt.fraseologia(22000).toLowerCase());
		
		if((texto.contains("pagar") && texto.contains("total")) || 
		    (texto.contains("pagar") && texto.contains("mínimo")) ||
		     (texto.contains("pagar") && texto.contains("total e o mínimo")) ||
		       texto.contains("você quer parcelar") || 
		        texto.contains("parcelar")
		   ) {
			
			if(texto.contains("você quer parcelar") || 
			    texto.contains("parcelar")
			  ) {
				LOG.info("Opção de PARCELAMENTO localizada no menu, redefinindo o digito da opção de " + 
					     (formatoPgt[2].equals("1") ? "PAGAMENTO " : "AGENDAMENTO ") + formatoPgt[1] + "...");
					formatoPgt[0] = (Integer.toString(1 + (Integer.parseInt(formatoPgt[0]))));
			}
			LOG.info("Selecionando Opção: " + formatoPgt[0] + " - " + formatoPgt[1]);
			meioPgtWeb.clicarDiscadorCelular(formatoPgt[0]);
		} else {
			LOG.info("<RE_TEST> --- <MENU ERRADO FATURA OU TRADUÇÃO ALGUMA INCOERÊNCIA NA TRADUÇÃO>");
			RelatorioValues.setTipoErro("RE_TEST");
			RelatorioValues.setErro("Menu errado - Meio Pagamentos - Texto Traduzido: " + texto);
			UtilsUra.falhou();
		}
		UtilsUra.sleep(25000, "Aguardando Possível Informativo da FATURA...");
		LOG.info("Selecionando Opção: " + formatoPgt[2] + " - " + this.tipoPgmt);
		meioPgtWeb.clicarDiscadorCelular(formatoPgt[2]);
		
		texto = validoMenuFatura(recMeioPgt.fraseologia(20000).toLowerCase());
		validaPossiveisFinaisDaTransacao(texto);
		LOG.info("Validando resultado da transação da FATURA...");
	}

	public void validoConsultaFatura(String textoEsperado, int tempoGravacao) {
		LOG.info("Estou no menu de cartões para CONSULTA DE FATURA...");
		texto = recMeioPgt.fraseologia(tempoGravacao);
		
		if(logicMeiosPgmt.menuComUmDosTextos(textoEsperado, texto)) {
			LOG.info("Consulta de FATURA REALIZADA com sucesso");
			
		} else if (texto.contains("pode ter um resumo") || 
				    texto.contains("resumo")
				   ) {
			LOG.info("Indo para ouvir o RESUMO e validando a CONSULTA DA FATURA...");
			meioPgtWeb.clicarDiscadorCelular("1");
			logicMeiosPgmt.validoUmDosTextosMenu(textoEsperado, 20000);
			
		} else if (texto.contains("mais de um cartão") ||
				 	(texto.contains("possui") && texto.contains("mais") && texto.contains("cartão"))
				  ) {
			LOG.info("Teclando (1) para escolher o primeiro cartão...");
			meioPgtWeb.clicarDiscadorCelular("1");
			validoConsultaFatura(textoEsperado, 20000);
			
		} else if (texto.contains("sistema não identificou") || 
					texto.contains("não identificou") ||
					 (texto.contains("venceu") && 
					                             texto.contains("fatura") && 
					                              texto.contains("paga") && 
					                               texto.contains("fazer") && 
					                                texto.contains("pagamento"))
				  ) {
			LOG.info("Teclando (2) para não fazer o PAGAMENTO agora...");
			meioPgtWeb.clicarDiscadorCelular("2");
			validoConsultaFatura(textoEsperado, 20000);
			
		} else if (texto.contains("greve") && texto.contains("correios") && texto.contains("devido")) {
			LOG.info("Informativo URA...");
			validoConsultaFatura(textoEsperado, 20000);
		} else {
			RelatorioValues.setTipoErro("RE_TEST");
			RelatorioValues.setErro("TEXTOS ESPERADOS: '" + textoEsperado.replaceAll(";", " - ") + "' - TEXTO TRADUZIDO: '" + texto + "'");
			LOG.info("<TRADUÇÃO ERRADA>");
			UtilsUra.falhou();
		}
	}

	public void realizoCaminhoParaEmissaoSegundaVia() {
		this.formatoPgt = (cenario.contains("email") ? "2;SEGUNDA VIA POR EMAIL" : "1;SEGUNDA VIA OUVINDO O CÓDIGO DE BARRAS").split(";");
		LOG.info("Realizo Transação: " + formatoPgt[1]);
		texto = recMeioPgt.fraseologia(25000);
		UtilsUra.sleep(4000, "Indo para o menu de SEGUNDA VIA...");
		meioPgtWeb.clicarDiscadorCelular("2");
		
		UtilsUra.sleep(5000, null);
		LOG.info("Selecionando a Opção: " + formatoPgt[0] + " - " + formatoPgt[1]);
		meioPgtWeb.clicarDiscadorCelular(formatoPgt[0]);
		
		if(formatoPgt[1].contains("EMAIL") && 
			(texto.contains("nenhum e-mail seu cadastrado") ||
			  texto.contains("atualizar o seu cadastro") ||
				texto.contains("preciso que você acesse"))
			) {
			LOG.info("<MASSA> --- <NENHUM EMAIL CADASTRADO PARA ENVIO DA 2º VIA DA FATURA>");
			RelatorioValues.setTipoErro("MASSA");
			RelatorioValues.setErro("Nenhum email cadastrado para emissão de segunda via - Texto Traduzido: " + texto);
			UtilsUra.falhou();
		}
		if(formatoPgt[1].contains("EMAIL")) {
			texto = recMeioPgt.fraseologia(20000);
			if ((texto.contains("fatura para o email que eu tenho aqui cadastrado") ||
					texto.contains("receber nele mesmo") ||
					  texto.contains("tenho aqui cadastrado"))
			   ) {
				LOG.info("Confirmando as informaçãoes para envio da SEGUNDA VIA POR EMAIL");
				meioPgtWeb.clicarDiscadorCelular("1");
			}
		}
		LOG.info("Validando resultado da transação de EMISSÃO DE SEGUNDA VIA...");
	}
}