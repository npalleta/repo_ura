package br.com.rsi.ura.teste.transferencias_recursos;

import java.time.LocalTime;
import org.apache.log4j.Logger;
import br.com.rsi.ura.fraseologia.ValidacaoFraseologia;
import br.com.rsi.ura.logic_geral.CieloUraLogic;
import br.com.rsi.ura.sheets.massa.PlanilhaDTO;
import br.com.rsi.ura.sheets.relatorioPorCenario.RelatorioValues;
import br.com.rsi.ura.utils.UtilsUra;
import br.com.rsi.ura.utils.UtilsWeb;

public class TransferenciasRecursosLogic {

	private final Logger LOG = Logger.getLogger(TransferenciasRecursosLogic.class);
	private ValidacaoFraseologia recLogic = new ValidacaoFraseologia();
	private CieloUraLogic logicTransf = new CieloUraLogic();
	private UtilsWeb utilsWebTransf = new UtilsWeb();
	public String agenciaConta;
	private String texto;

	public void cpfFavorecido() {
		String cpfFavorecido = PlanilhaDTO.getDocTed();
		if (cpfFavorecido.length() < 11 || cpfFavorecido == null || cpfFavorecido == "") {
			RelatorioValues.setTipoErro("MASSA");
			RelatorioValues.setErro("CPF do favorecido inválido ou vazio");
			LOG.info("<CPF FAVORECIDO INVÁLIDO OU VAZIO>");
			UtilsUra.falhou();
		}
		LOG.info("CPF do favorecido validado >>> " + cpfFavorecido);
		logicTransf.clicarDiscadorCelularThreads(cpfFavorecido);
	}

	public void cpfFavorecidoTransacional() {
		String cpfFavorecido = PlanilhaDTO.getDocTed();

		if (cpfFavorecido.length() < 11 || cpfFavorecido == null) {
			RelatorioValues.setTipoErro("MASSA");
			RelatorioValues.setErro("CPF do favorecido inválido ou vazio -- CPF: " + PlanilhaDTO.getCpf());
			LOG.info("<CPF FAVORECIDO INVÁLIDO OU VAZIO>");
			UtilsUra.falhou();
		}
		LOG.info("CPF do favorecido validado >>> " + cpfFavorecido);
		logicTransf.clicarDiscadorCelularThreads(cpfFavorecido);
		UtilsUra.sleep(10000, "Aguardando após digitar o CPF do favorecido...");
	}

	public void agenciaEContaFavorecido() {
		String agencia = PlanilhaDTO.getAgenciaFavorecido();
		String conta = PlanilhaDTO.getContaFavorecido();

		if (conta.length() == 9) {
			agenciaConta = agencia + "-" + conta;
		} else if (conta.length() == 13) {
			agenciaConta = conta.substring(0, 4) + "-" + conta.substring(4, 13);
		} else {
			RelatorioValues.setTipoErro("MASSA");
			RelatorioValues.setErro("Agência e conta favorecido inválida ou vazia -- CPF: " + PlanilhaDTO.getCpf());
			LOG.info("<AGÊNCIA E CONTA DO FAVORECIDO INVÁLIDA OU VAZIO>");
			UtilsUra.falhou();
		}
		LOG.info("Conta e Agência do Favorecido Validado >>> " + agencia + " - " + conta);
		utilsWebTransf.clicarDiscadorCelular(agencia + conta);
	}

	public void agenciaEContaFavorecidoTransacional() {
		String agencia = PlanilhaDTO.getAgenciaFavorecido();
		String conta = PlanilhaDTO.getContaFavorecido();

		if (conta.length() == 9) {
			agenciaConta = agencia + "-" + conta;
		} else if (conta.length() == 13) {
			agenciaConta = conta.substring(0, 4) + "-" + conta.substring(4, 13);
		} else {
			RelatorioValues.setTipoErro("MASSA");
			RelatorioValues.setErro("Agência e conta favorecido inválida ou vazia -- CPF: " + PlanilhaDTO.getCpf());
			LOG.info("<AGÊNCIA E CONTA DO FAVORECIDO INVÁLIDA OU VAZIO>");
			UtilsUra.falhou();
		}
		LOG.info("Conta e Agência do Favorecido Validado >>> " + agencia + " - " + conta);
		logicTransf.clicarDiscadorCelularThreads(agencia + conta);
		UtilsUra.sleep(10000, "Aguardando após digitar a Agência + Conta do favorecido...");
	}

	public void verificoSeEstaForaDoHorario() {
		LocalTime verificaHorarioAtual = LocalTime.now().minusHours(1);
		LocalTime verifica15h30 = LocalTime.now().withHour(15).withMinute(30);
		LocalTime verifica08h00 = LocalTime.now().withHour(8).withMinute(00);
		texto = recLogic.fraseologia(20000).toLowerCase();

		if (verificaHorarioAtual.isAfter(verifica15h30) && verificaHorarioAtual.isBefore(verifica08h00)) {
			if (texto.contains("mas como eu te disse") || texto.contains("devem ser agendados")
					|| texto.contains("realizados após às 16:30")) {

				LOG.info("Teste [OK], não permitiu realizar um TED fora do horário(15:30h) -- " 
						+ "Horário Atual: " + verificaHorarioAtual + "Texto traduzido: " + texto);
			}

		} else if (verificaHorarioAtual.isAfter(verifica15h30) && verificaHorarioAtual.isBefore(verifica08h00)) {
			if (texto.contains("digite por favor") || texto.contains("cpf ou cnpj do favorecido")
					|| texto.contains("pode começar")) {

				LOG.info("Teste [NOK], está sendo permitido transações de TED após as 15:30 e antes das 06:00h -- "
						+ "Horário Atual: " + verificaHorarioAtual);

				RelatorioValues.setTipoErro("BUG");
				RelatorioValues.setErro("Está sendo permitido transações de TED após as 15:30 e antes das 06:00h "
						+ "-- Horário Atual: " + verificaHorarioAtual + " Texto traduzido: " + texto);
				LOG.info("<BUG -- ESTÁ SENDO PERMITIDO TRANSAÇÕES DE TED APÓS AS 15:30H E ANTES DAS 08:00H>");
				UtilsUra.falhou();
			}

		} else if (verificaHorarioAtual.isBefore(verifica15h30) && verificaHorarioAtual.isAfter(verifica08h00)) {
			if (texto.contains("digite por favor") || texto.contains("cpf ou cnpj do favorecido")
					|| texto.contains("pode começar")) {

				LOG.info("Teste [NOK], teste está sendo realizado dentro do horário permitido -- "
						+ "Horário Atual: " + verificaHorarioAtual);

				RelatorioValues.setTipoErro("RE_TEST");
				RelatorioValues.setErro("Teste está sendo realizado dentro do horário permitido -- "
						+ "-- Horário Atual: " + verificaHorarioAtual + " Texto traduzido: " + texto);
				LOG.info("<RE_TEST -- O TESTE ESTÁ SENDO REALIZADO DENTRO DO HORÁRIO PERMITIDO>");
				UtilsUra.falhou();
			}

		} else if (verificaHorarioAtual.isBefore(verifica15h30) && verificaHorarioAtual.isAfter(verifica08h00) ) {
			if (texto.contains("mas como eu te disse") || texto.contains("devem ser agendados")
					|| texto.contains("realizados após às 16:30")) {

				LOG.info("Teste [NOK], chave para TED foi virada antes das 15:30h e após às 08:00h -- " 
						+ "Horário Atual: "	+ verificaHorarioAtual);
				
				RelatorioValues.setTipoErro("AMBIENTE");
				RelatorioValues.setErro("Chave para não permitir TED fora do horário foi virada antes das 15:30h e após às 08:00h "
						+ "-- Horário Atual: " + verificaHorarioAtual + " Texto traduzido: " + texto);
				LOG.info("<CHAVE PARA NÃO PERMITIR TED FORA DO HORÁRIO FOI VIRADA ANTES DAS 15:30H E APÓS ÀS 08:00H>");
				UtilsUra.falhou();
			}
		}
	}
}