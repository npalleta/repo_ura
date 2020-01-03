package br.com.rsi.ura.teste.cielo.CT016;

import org.apache.log4j.Logger;

import br.com.rsi.ura.fraseologia.ValidacaoFraseologia;
import br.com.rsi.ura.logic_geral.CieloUraLogic;
import br.com.rsi.ura.sheets.massa.PlanilhaDTO;
import br.com.rsi.ura.sheets.relatorioPorCenario.RelatorioValues;
import br.com.rsi.ura.teste.transferencias_recursos.TransferenciasRecursosLogic;
import br.com.rsi.ura.utils.UtilsUra;
import br.com.rsi.ura.utils.UtilsWeb;

public class validacao_ura_CT016_logic {

	private final Logger LOG = Logger.getLogger(TransferenciasRecursosLogic.class);
	private ValidacaoFraseologia recLogic = new ValidacaoFraseologia();
	private UtilsWeb utilsWebTransf = new UtilsWeb();

	public void insereNumeroEC(String estabelCliente) {
		// EC: 2007733832
		// String estabelCliente = PlanilhaDTO.getDocTed();
		if (estabelCliente.length() >= 12 || estabelCliente == null || estabelCliente == "") {
			// RelatorioValues.setTipoErro("MASSA");
			// RelatorioValues.setErro("CPF do favorecido inválido ou vazio");
			LOG.info("<CPF FAVORECIDO INVÁLIDO OU VAZIO>");
			UtilsUra.falhou();
		}
		LOG.info("EC validado >>> " + estabelCliente);
		utilsWebTransf.clicarTeclado();
		utilsWebTransf.clicarDiscadorCelular(estabelCliente);
	}
}