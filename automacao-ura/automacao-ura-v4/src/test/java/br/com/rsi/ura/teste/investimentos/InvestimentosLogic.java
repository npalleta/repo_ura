package br.com.rsi.ura.teste.investimentos;

import org.apache.log4j.Logger;

import br.com.rsi.ura.fraseologia.ValidacaoFraseologia;
import br.com.rsi.ura.sheets.relatorioPorCenario.RelatorioValues;
import br.com.rsi.ura.utils.UtilsUra;
import br.com.rsi.ura.utils.UtilsWeb;

public class InvestimentosLogic {

	private final Logger LOG = Logger.getLogger(InvestimentosLogic.class);
	private ValidacaoFraseologia rec = new ValidacaoFraseologia();
	private UtilsWeb webInv = new UtilsWeb();
	
	public void validoMenuInvestimentosRenegociacao() {
		LOG.info("Validando o Menu de Investimentos e a Exitência da Opção de Renegociação...");
		String text = rec.fraseologia(20000).toLowerCase();
		
		if(text.contains("adquirir novos produtos") ||
			text.contains("seguros") ||
			  text.contains("capitalização") ||
			    text.contains("previdência") ||
				  text.contains("empréstimo") ||
				    text.contains("falar sobre sua poupança") ||
				      text.contains("novos produtos e serviços") ||
				        text.contains("algum produto que você já")
		  ) {
			LOG.info("<<Menu INVESTIMENTOS Validado>>");
		} else if(text.contains("ajudar a manter sua vida financeira") ||
				   text.contains("financeira em ordem") || 
				   	(text.contains("renegociação") && text.contains("transferir")) ||
				   	  (text.contains("contas atrasadas") && text.contains("transferido")) ||
				   	  	(text.contains("organizar") && text.contains("posso te passar agora")) ||
				   	      text.contains("renegociação")
				 ) {
			LOG.info("Pulando Opção de Transferir para Renegociação...");
			webInv.clicarDiscadorCelular("2");
			validoMenuInvestimentosRenegociacao();
		} else {
			LOG.info("<RE_TEST> --- <NÃO FOI POSSÍVEL VALIDAR O MENU DE INVESTIMENTOS>");
			RelatorioValues.setTipoErro("RE_TEST");
			RelatorioValues.setErro("Não foi possível validar o menu de Investimentos - Texto Traduzido: " + text);
			UtilsUra.falhou();
		}
	}
}