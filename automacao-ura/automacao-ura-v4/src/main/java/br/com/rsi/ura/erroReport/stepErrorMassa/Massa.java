package br.com.rsi.ura.erroReport.stepErrorMassa;

import br.com.rsi.ura.configuration.GerenciadorDePropriedades;
import br.com.rsi.ura.erroReport.ErrorReport;
import br.com.rsi.ura.sheets.massa.PlanilhaDTO;
import br.com.rsi.ura.sheets.relatorioPorCenario.RelatorioValues;
import br.com.rsi.ura.utils.UtilsUra;
import br.com.rsi.ura.utils.UtilsWeb;

/**
 * @author hugo.santos
 */
public class Massa extends ErrorReport {

	private final String MASSA = "MASSA";
	private String idMassa = PlanilhaDTO.getIdMassa();
	private String cpf = PlanilhaDTO.getCpf();
	private String translatedText;
	private String scenario;
	private String id;

	public Massa(String translatedText, String id, String scenario) {
//		this.translatedText = translatedText.toLowerCase().trim();
//		this.scenario = scenario.toLowerCase().trim();
//		this.id = id;
	}
	
	/**
	 * TRUE se o cenário em questão não pode transferir e FALSE caso ao contrário.
	 */
	public static void vdn(String translatedText) {
		translatedText = translatedText.toLowerCase();
		boolean resultVdn = UtilsUra.regularExpressionGenerator("\\d{4,8}", translatedText);
		String[] vdnOk = {"URA0144","URA0145","URA0176","URA0177","URA0184","URA0215","URA0225","URA0227","URA0252","URA0256","URA0328",
						  "URA0329","URA0336","URA0341","URA0343","URA0342","URA0353","URA0354","URA0364","URA0365","URA0377","URA0381",
						  "URA0400","URA0401","URA0403","URA0404","URA0566","URA0574","URA0586","URA0637","URA0648","URA0657","URA0664",
						  "URA0691","URA0699","URA0711","URA1106","URA1119","URA1124","URA1129","URA1138","URA1145","URA1149","URA1180",
						  "URA1187","URA1191","URA1198","URA1204","URA1221","URA1228","URA1232","URA1256","URA1257","URA1260","URA1261",
						  "URA1263","URA1264","URA1386","URA1387","URA1108","URA0152","URA0333"};
		
		boolean result = false;
		if(translatedText.contains("ramal") || 
			translatedText.contains("vou te transferir") || 
			 translatedText.contains("assistentes e para sua segurança") ||
			  (translatedText.contains("ver") && resultVdn && (!translatedText.contains("você está") && 
					  										     !translatedText.contains("central de atendimento") && 
					  										        !translatedText.contains("saldo")))
		  ) {
			result = true;
			for(int posi = 0; posi < vdnOk.length; posi++) {
				if(PlanilhaDTO.getIdCenario().contains(vdnOk[posi])) {
					result = false;
					break;
				}
			}
		}
		if(result) {
			LOG.info("<RE_TEST> --- <VDN>");
			new UtilsWeb().clicarDiscadorCelular(GerenciadorDePropriedades.getInstance().getRamal());
			UtilsUra.sleep(7000, "<RAMAL DIGITADO>");
			RelatorioValues.setTipoErro("MASSA");
			RelatorioValues.setErro("VDN -- Texto Traduzido: " + translatedText);
			UtilsUra.falhou();
		}
	}

	/**
	 * Possíveis erros de MASSA.
	 */
	public void massa() {
		// Caso peça o ID Santander
//		if (translatedText.contains("vou precisar") && translatedText.contains("código")
//				&& translatedText.contains("santander")) {
//			upResult(MASSA,
//					"A Massa está solicitando ID Santander -- Texto Traduzido: '" + translatedText + "' -- CPF: " + cpf,
//					"<MASSA INVÁLIDA, SOLICITA ID SANTANDER>");
//		}
//		// Cartão bloqueado ou o CSO
//		if ((translatedText.contains("cartão de segurança online foi cancelado")
//				|| translatedText.contains("por excesso de tentativas"))
//				|| (translatedText.contains("bloqueada") && translatedText.contains("excesso de tentativas"))) {
//			upResult(MASSA, "O CSO foi cancelado ou o cartão está bloqueado -- Texto Traduzido: '" + translatedText
//					+ "' -- CPF: " + cpf, "<CARTÃO CANCELADO OU O CSO>");
//		}
//		// Caso o cenário não tenha nenhuma massa vinculada
//		if (idMassa == null || idMassa.isEmpty()) {
//			upResultMassa(MASSA, "Cenário com o ID: " + id + ", não possui nenhuma MASSA vinculada",
//					"<CENÁRIO NÃO POSSUI NENHUMA MASSA VINCULADA>");
//		}
//		// Nenhum favorecido cadastrado
//		if (scenario.contains("comfavorecidocadastrado")
//				|| scenario.contains("favorecidocadastrado") && (!scenario.contains("semfavorecidocadastrado"))) {
//			if (translatedText.contains("não possui nenhum") && translatedText.contains("favorecido")) {
//				upResult(MASSA, "Nenhum favorecido cadastrado para o CPF vinculado -- Texto Traduzido: '"
//						+ translatedText + "' -- CPF: " + cpf, "<NENHUM FAVORECIDO CADASTRADO>");
//			}
//		}
//		// Conta salário
//		if (translatedText.contains("você possui uma conta salário")) {
//			upResult(MASSA, "CPF vinculado possui uma conta salário -- Texto Traduzido: '" + translatedText
//					+ "' -- CPF: " + cpf, "<CPF POSSUI UMA CONTA SALÁRIO>");
//		}
//		// Van Gogh Direct
//		if (translatedText.contains("van gogh direct")) {
//			upResult(MASSA,
//					"Segmento errado Van Gogh Direct -- Texto Traduzido: '" + translatedText + "' -- CPF: " + cpf,
//					"<SEGMENTO ERRADO -- VAN GOGH DIRECT>");
//		}
//		// Valida se o CPF vinculado possuí mais de uma conta, tanto corrente como
//		// poupança
//		if (!scenario.contains("clientecommaisdeumacontacorrente") && 
//			  !scenario.contains("clientecommultiplascontas") && 
//			  	!scenario.contains("clientenaocorrentista") && 
//			  	   !scenario.contains("clientecommaisdeumaconta") && 
//			  	     !scenario.contains("clientenãocorrentistaecommaisdeumacontapoupança") && 
//			  	       !scenario.contains("multiplascontascorrenteepoupança")
//		    ) {
//			if (translatedText.contains("possui") &&  translatedText.contains("mais de") && translatedText.contains("conta") 
//					&& (!translatedText.contains("cheques") && !translatedText.contains("compensados"))) {
//				upResult(
//						MASSA, "CPF com mais de uma conta-poupança ou conta-corrente -- Texto Tarduzido: '"
//								+ translatedText + "' -- CPF: " + cpf,
//						"<CPF COM MAIS DE UMA CONTA POUNPANÇA OU CORRENTE>");
//			}
//		}
//		// Se os cenários de pagamento de fatura não tiver nehuma fatura para pagamento
//		if ((scenario.contains("mínimoeototal") || 
//			 scenario.contains("minimoeototal") || 
//			  scenario.contains("minimodafatura") || 
//			   scenario.contains("mínimodafatura") || 
//			    scenario.contains("totaldafatura") || 
//			     scenario.contains("faturacartãodecrédito")) && (scenario.contains("consulta"))
//		   ) {
//			if (translatedText.contains("não possui nenhum saldo devedor para fatura") ||
//				 (translatedText.contains("não possui") && translatedText.contains("saldo devedor"))
//			   ) {
//				upResult(MASSA,
//						"CPF não possui nenhum saldo devedor para pagamento de fatura -- Texto Traduzido: '"
//								+ translatedText + "' -- CPF: " + cpf,
//						"<CPF NÃO POSSUI NENHUMA FATURA PARA PAGAMENTO>");
//
//			}
//		}
//		// Se o cenáriio for Select e não for verbalizado
//		if ((!translatedText.contains("select")) && scenario.contains("select")
//				&& translatedText.contains("agilizar o atendimento") && translatedText.contains("por favor")
//				&& (translatedText.contains("senha") || translatedText.contains("saldo"))
//				&& (!scenario.contains("clientenãocorrentista") && !scenario.contains("clientecommultiplascontas")
//						&& !scenario.contains("monoprodutista"))) {
//			upResult(MASSA, "Segmento errado, cenário vinculado é Select -- Texto Traduzido: '" + translatedText
//					+ "' -- CPF: " + cpf, "<SEGMENTO ERRADO, CENÁRIO VINCULADO É SELECT>");
//		}
//		// Se o cenáriio não for Select
//		if (translatedText.contains("select") && (!scenario.contains("select"))) {
//			upResult(MASSA, "Segmento errado, cenário vinculado NÃO é Select -- Texto Traduzido: '" + translatedText
//					+ "' -- CPF: " + cpf, "<SEGMENTO ERRADO, CENÁRIO VINCULADO NÃO É SELECT>");
//		}
//		// Se o cenáriio for Van Gogh e não for verbalizado
//		if ((!translatedText.contains("van gogh")) && scenario.contains("vangogh")
//				&& translatedText.contains("agilizar o atendimento") && translatedText.contains("por favor")
//				&& (translatedText.contains("senha") || translatedText.contains("saldo"))
//				&& (!scenario.contains("clientenãocorrentista") && !scenario.contains("clientecommultiplascontas")
//						&& !scenario.contains("monoprodutista"))) {
//			upResult(MASSA, "Segmento errado, cenário vinculado é Van Gogh -- Texto Traduzido: '" + translatedText
//					+ "' -- CPF: " + cpf, "<SEGMENTO ERRADO, CENÁRIO VINCULADO É VAN GOGH>");
//		}
//		// Se o cenáriio não for Van Gogh
//		if (translatedText.contains("vangogh") && (!scenario.contains("vangogh"))) {
//			upResult(MASSA, "Segmento errado, cenário vinculado NÃO é Van Gogh -- Texto Traduzido: '" + translatedText
//					+ "' -- CPF: " + cpf, "<SEGMENTO ERRADO, CENÁRIO VINCULADO NÃO É VAN GOGH>");
//		}
//		// Boleto inválido
//		if (translatedText.contains("não pode ser pago") || translatedText.contains("emissão de um novo boleto")) {
//			upResult(MASSA,
//					"Boleto inválido, verificar se o boleto está de acordo com a exigência do cenário -- Texto Traduzido: '"
//							+ translatedText + "' -- CPF: " + cpf,
//					"<NÃO FOI POSSÍVEL PAGAR O BOLETO>");
//		}
//		// Para os cenários de consulta fatura que não tiver fatura para consulta
//		if ((scenario.contains("consulta") && scenario.contains("fatura"))
//				&& (translatedText.contains("cartão de crédito") && 
//						translatedText.contains("não possui nenhum saldo devedor") && 
//							translatedText.contains("fatura"))
//		   ) {
//			upResult(MASSA, "Usuário sem fatura vinculado ao CPF ou fatura inválida para o teste -- Texto Traduzido: '"
//					+ translatedText + "' -- CPF: " + cpf, "<CPF SEM FATURA VINCULADA PARA CONSULTA>");
//		}
//		// Sem lançamentos para consulta de extrato
//		if (translatedText.contains("não encontrei lançamento")
//				&& ((scenario.contains("extratodoultimodia") || scenario.contains("extratoporperiodo")
//						|| scenario.contains("extratoporperíodo") || scenario.contains("consultaultimos7dias")))) {
//			upResult(MASSA, "Sem lançamentos na conta para consulta de extrato -- Texto Traduzido: '" + translatedText
//					+ "' -- CPF: " + cpf, "<CPF SEM LANÇAMENTOS PARA CONSULTA DE EXTRATO>");
//		}
//		// Para cenários de desbloqueio de cheque e ele não está bloqueado
//		if ((scenario.contains("desbloqueiodetalao") || scenario.contains("desbloqueartalaodecheques"))
//				&& ((translatedText.contains("talão de cheque") || translatedText.contains("pelo número"))
//						&& translatedText.contains("ele não está bloqueado"))) {
//			upResult(MASSA,
//					"Cheque vinculado não está bloqueado -- Texto Traduzido: '" + translatedText + "' -- CPF: " + cpf,
//					"<CHEQUE NÃO ESTÁ BLOQUEADO>");
//		}
//
//		// Para cenários de consulta de cpf com e sem cheques compensados
//		if (scenario.contains("consulta") && (scenario.contains("chequescompensados"))) {
//			//consulta com cheques compensados
//			if ((scenario.contains("consulta")) && (scenario.contains("chequescompensados")) && 
//				  (!scenario.contains("semchequescompensados")) && 
//					 (translatedText.contains("não possui") || translatedText.contains("não foi compensado") || translatedText.contains("fazer outra consulta"))
//			   ) {
//				upResult(MASSA, "CPF vinculado não possui cheques compensados para consulta -- Texto Traduzido: '"
//						+ translatedText + "' -- CPF: " + cpf, "<NÃO POSSUI CHEQUES COMPENSADOS>");
//			}
//			// consulta sem cheques compensados
//			if ((scenario.contains("consulta")) && (scenario.contains("semchequescompensados"))
//					&& (translatedText.contains("você possui")) || (translatedText.contains("no valor de"))) {
//				upResult(MASSA, "CPF não pode ter cheque compensado -- Texto Traduzido: '"
//						+ translatedText + "' -- CPF: " + cpf, "<CPF POSSUI CHEQUES COMPENSADOS>");
//			}
//		}
//		// Para cenários que necessita que CPF não seja correntista
//		if ((scenario.contains("clientenãocorrentista") || scenario.contains("clientenaocorrentista"))
//				&& (translatedText.contains("sobre conta corrente") || translatedText.contains("conta corrente"))) {
//			upResult(MASSA, "Cenário necessita que o CPF não seja correntista -- Texto Traduzido: '" + translatedText
//					+ "' -- CPF: " + cpf, "<CPF POSSUI UMA CONTA CORRENTE>");
//		}
	}
}