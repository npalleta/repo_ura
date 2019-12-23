package br.com.rsi.ura.gherkin_geral;

import java.io.IOException;
import java.util.Date;

import org.apache.log4j.Logger;
import org.junit.Assume;

import br.com.rsi.ura.configuration.GerenciadorDePropriedades;
import br.com.rsi.ura.logic_geral.SantanderUraLogic;
import br.com.rsi.ura.saveResult.SaveResultTestCase;
import br.com.rsi.ura.serviceJson.jsonData.Json;
import br.com.rsi.ura.sheets.massa.GerenciadorDaPlanilhaDeMassa;
import br.com.rsi.ura.sheets.massa.PlanilhaDTO;
import br.com.rsi.ura.sheets.relatorioPorCenario.GerenciadorDeRelatorioPorCenario;
import br.com.rsi.ura.sheets.relatorioPorCenario.RelatorioValues;
import br.com.rsi.ura.sheets.reportLog.ValuesDateLog;
import br.com.rsi.ura.utils.FileUtil;
import br.com.rsi.ura.utils.UtilsUra;
import br.com.rsi.ura.utils.UtilsWeb;
import cucumber.api.Scenario;
import cucumber.api.java.After;
import cucumber.api.java.Before;

/**
 * @author romulo.lacerda
 */
public class BeforeAfter {
	
	private final Logger LOG = Logger.getLogger(BeforeAfter.class);
	private String[] dateHour = UtilsUra.date(null, null).split(";");

	/**
	 * @param scenario --> Nome do cenário.
	 * @category --> Resposavel por executar algumas tarefas antes do teste.
	 */
	@Before
	public void start(Scenario scenario) {
		
		LOG.info("INICIALIZE ----------------------------------------------------------------------------------------->>");
		ValuesDateLog.setDataInicio(new Date().toString());
		LOG.info(ValuesDateLog.getDataInicio());
		LOG.info("\n" + "  ___                                                   _   \r\n"
				+ " | __|  _ _   __ _   _ __    ___  __ __ __  ___   _ _  | |__\r\n"
				+ " | _|  | '_| / _` | | '  \\  / -_) \\ V  V / / _ \\ | '_| | / /\r\n"
				+ " |_|   |_|   \\__,_| |_|_|_| \\___|  \\_/\\_/  \\___/ |_|   |_\\_\\\n"
				+ "          _____                    _____                    _____                    _____          \r\n"
				+ "         /\\    \\                  /\\    \\                  /\\    \\                  /\\    \\         \r\n"
				+ "        /::\\    \\                /::\\    \\                /::\\____\\                /::\\    \\        \r\n"
				+ "        \\:::\\    \\              /::::\\    \\              /:::/    /               /::::\\    \\       \r\n"
				+ "         \\:::\\    \\            /::::::\\    \\            /:::/    /               /::::::\\    \\      \r\n"
				+ "          \\:::\\    \\          /:::/\\:::\\    \\          /:::/    /               /:::/\\:::\\    \\     \r\n"
				+ "           \\:::\\    \\        /:::/__\\:::\\    \\        /:::/    /               /:::/__\\:::\\    \\    \r\n"
				+ "            \\:::\\    \\      /::::\\   \\:::\\    \\      /:::/    /                \\:::\\   \\:::\\    \\   \r\n"
				+ "             \\:::\\    \\    /::::::\\   \\:::\\    \\    /:::/    /      _____    ___\\:::\\   \\:::\\    \\  \r\n"
				+ "              \\:::\\    \\  /:::/\\:::\\   \\:::\\    \\  /:::/____/      /\\    \\  /\\   \\:::\\   \\:::\\    \\ \r\n"
				+ "_______________\\:::\\____\\/:::/__\\:::\\   \\:::\\____\\|:::|    /      /::\\____\\/::\\   \\:::\\   \\:::\\____\\\r\n"
				+ "\\::::::::::::::::::/    /\\:::\\   \\:::\\   \\::/    /|:::|____\\     /:::/    /\\:::\\   \\:::\\   \\::/    /\r\n"
				+ " \\::::::::::::::::/____/  \\:::\\   \\:::\\   \\/____/  \\:::\\    \\   /:::/    /  \\:::\\   \\:::\\   \\/____/ \r\n"
				+ "  \\:::\\~~~~\\~~~~~~         \\:::\\   \\:::\\    \\       \\:::\\    \\ /:::/    /    \\:::\\   \\:::\\    \\     \r\n"
				+ "   \\:::\\    \\               \\:::\\   \\:::\\____\\       \\:::\\    /:::/    /      \\:::\\   \\:::\\____\\    \r\n"
				+ "    \\:::\\    \\               \\:::\\   \\::/    /        \\:::\\__/:::/    /        \\:::\\  /:::/    /    \r\n"
				+ "     \\:::\\    \\               \\:::\\   \\/____/          \\::::::::/    /          \\:::\\/:::/    /     \r\n"
				+ "      \\:::\\    \\               \\:::\\    \\               \\::::::/    /            \\::::::/    /      \r\n"
				+ "       \\:::\\____\\               \\:::\\____\\               \\::::/    /              \\::::/    /       \r\n"
				+ "        \\::/    /                \\::/    /                \\::/    /                \\::/    /        \r\n"
				+ "         \\/____/                  \\/____/                  \\/____/                  \\/____/        \r\n"
				+ "");

		/*SantanderUraLogic.contador = 0;
		SantanderUraLogic.numeroDocartao = 1;
		PlanilhaDTO.TipoSenha = null;*/
		String nomeCenario = scenario.getName();
		// String id = UtilsUra.lerID(nomeCenario);
		// RelatorioValues.setIp(UtilsUra.capturaIP());
		
		LOG.info("---- INICIANDO CENÁRIO: " + nomeCenario + " ----");
		LOG.info("---- Hora do inicio da Execução: " + dateHour[0] + " - " + dateHour[1] + " ----");
		// LOG.info("---- Verificando se o cenário de ID " + id + " já rodou com sucesso... ----");
		
		// SaveResultTestCase.rodouNao();
		// boolean jaDeuCerto = GerenciadorDeRelatorioPorCenario.seraQueJaDeuCerto(id);
		
		/*if (jaDeuCerto) {
			LOG.info("---- O cenário " + id + " já está OK, então será PULADO. ----");
			UtilsUra.clearInfoCenario();
		} else {
			LOG.info("---- O cenário " + id + " ainda NÃO ESTÁ OK, então será EXECUTADO. ----");
			UtilsUra.clearInfoCenario();
		}
		Assume.assumeFalse(GerenciadorDeRelatorioPorCenario.seraQueJaDeuCerto(id));

		GerenciadorDaPlanilhaDeMassa.lerPlanilhaID(id, nomeCenario);
		GerenciadorDePropriedades gerenciadorDeProp = GerenciadorDePropriedades.getInstance();
		String caminhoArquivos = gerenciadorDeProp.getOpenbdtArquivosDados();
		long diasExpurgo = gerenciadorDeProp.getOpenbdtUraDiasExpurgo();

		System.setProperty("openbdt.data.files", caminhoArquivos);
		LOG.info("Excluindo arquivos gerados a mais de " + diasExpurgo + " dia(s).");
		try {
			FileUtil.deleteOlderFiles(diasExpurgo, caminhoArquivos + "/audio");
		} catch (IOException e) {
			LOG.info("---- Erro no expurgo dos arquivos de áudio em: " + caminhoArquivos + "/audio ----");
			LOG.error(e.getMessage());
		}*/
	}
	
	/**
	 * @param scenario --> Nome do cenário.
	 * @category --> Responsável por executar as tarefas após o teste e salvar o resultado no BD e JSON.
	 */
	@After
	public void finish(Scenario scenario) {
		LOG.info("---- FINALIZANDO APLICAÇÃO ----");
		// if (SaveResultTestCase.getRodou()) {
			Json.setStatusScenario((scenario.getStatus().equals("passed") ? true : false));
			RelatorioValues.setDataHora("Data: " + dateHour[1] + " --Hr Inicio: " + dateHour[0]);
			new UtilsWeb().finalizaLigacao();
			LOG.info("---- Salvando o resultado do cenário. ----");
			LOG.info("---- Rodou? ---- " + SaveResultTestCase.getRodou());
			LOG.info("---- Passou? ---- " + Json.getStatusScenario());
			LOG.info("Cenário Executado - "  + scenario.getName() + " - " + scenario.getStatus() + " - " + dateHour[1] + " - " + dateHour[0]);
			ValuesDateLog.setDataFinal(new Date().toString());
			LOG.info(ValuesDateLog.getDataFinal());
//			GerenciadorDeRelatorioPorCenario.escreverResultado(PlanilhaDTO.getIdCenario(), Json.getStatusScenario(), scenario.getName(), SaveResultTestCase.getDirAudio());
//			SaveResultTestCase.finalizaBD(scenario);
//			SaveResultTestCase.finalizarJson(scenario);
		// }
		LOG.info("END ------------------------------------------------------------------------------------------------>>\n");
	}
}