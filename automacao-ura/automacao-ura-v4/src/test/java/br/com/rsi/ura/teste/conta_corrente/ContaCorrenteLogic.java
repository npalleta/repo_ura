package br.com.rsi.ura.teste.conta_corrente;

import org.apache.log4j.Logger;

import br.com.rsi.ura.fraseologia.ValidacaoFraseologia;
import br.com.rsi.ura.logic_geral.CieloUraLogic;
import br.com.rsi.ura.sheets.massa.PlanilhaDTO;
import br.com.rsi.ura.sheets.relatorioPorCenario.RelatorioValues;
import br.com.rsi.ura.utils.UtilsWeb;

public class ContaCorrenteLogic {

	private final Logger LOG = Logger.getLogger(ContaCorrenteLogic.class);
	private ValidacaoFraseologia fraseContaCorrente = new ValidacaoFraseologia();
	private CieloUraLogic logicContaCorrente = new CieloUraLogic();
	private UtilsWeb utilsWebContaCorrente = new UtilsWeb();

	public void numerosTalaoDeCheque() {
		String talaoDeCheque = PlanilhaDTO.getTalaoCheque();
		if(talaoDeCheque == null || talaoDeCheque.isEmpty() || talaoDeCheque.length() < 6) 
			RelatorioValues.setTipoErro("MASSA");
			RelatorioValues.setErro("Nº do talão de cheque inválido.");
		LOG.info("Validado TALÃO DE CHEQUE >>> " + talaoDeCheque);
		utilsWebContaCorrente.clicarDiscadorCelular(talaoDeCheque);
	}

	public void numerosTalaoDeChequeTransacional() {
		String talaoDeCheque = PlanilhaDTO.getTalaoCheque();
		if(talaoDeCheque == null || talaoDeCheque.isEmpty() || talaoDeCheque.length() < 6) 
			RelatorioValues.setTipoErro("MASSA");
			RelatorioValues.setErro("Nº do talão de cheque inválido.");
		LOG.info("Validado TALÃO DE CHEQUE >>> " + talaoDeCheque);
		logicContaCorrente.clicarDiscadorCelularThreads(talaoDeCheque);
	}

	public void validaVinculoContaPoupancaECorrente(Integer arg1) {
		String texto = fraseContaCorrente.fraseologia(arg1);
		LOG.info("Validando se a conta poupanca esta vinculada a conta corrente...");
		if (texto.contains("extrato")) {
			LOG.info("Teclando (6) para ouvir o saldo da conta poupanca..");
			utilsWebContaCorrente.clicarDiscadorCelular("6");
			String agencia = PlanilhaDTO.getAgencia();
			String conta = PlanilhaDTO.getContaPoupanca();
			LOG.info("Validando a Agencia e Conta Poupanca >>> " + agencia + " - " + conta);
			utilsWebContaCorrente.clicarDiscadorCelular(agencia + conta);
		} else {
			LOG.info("Não precisou teclar (6) para ouvir o saldo da conta poupanca..");
		}
	}
}