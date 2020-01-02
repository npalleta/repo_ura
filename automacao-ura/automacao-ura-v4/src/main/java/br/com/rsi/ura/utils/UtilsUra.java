package br.com.rsi.ura.utils;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Properties;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.log4j.Logger;
import org.junit.Assert;

import br.com.rsi.ura.sheets.massa.PlanilhaDTO;
import br.com.rsi.ura.sheets.relatorioPorCenario.RelatorioValues;
import br.com.rsi.ura.sheets.suiteSantander.FactoryReportData;
import br.com.rsi.ura.sheets.suiteSantander.ReportTest;
import io.openbdt.speech.api.services.AssertAudioService;
import io.openbdt.speech.api.services.impl.AssertAudioServiceImpl;

/**
 * @author hugo.santos
 */
public class UtilsUra {

	private static final Logger LOG = Logger.getLogger(UtilsUra.class);
	private AssertAudioService assertAudioService = new AssertAudioServiceImpl();
	private ReportTest reportTestUtils = new ReportTest();

	/**
	 * @param regex   --> Expressão regular para validação.
	 * @param validar --> Texto que deseja validar a expressão.
	 * @return Valor Boolean: Se foi encontrado a expressão.
	 */
	public static boolean regularExpressionGenerator(String regex, String validar) {
		Pattern validaRegex = Pattern.compile(regex);
		Matcher textoValida = validaRegex.matcher(validar);
		if (textoValida.find()) {
			return true;
		} else {
			return false;
		}
	}

	/**
	 * @param formatHour --> Formato da hora.
	 * @param formatDay  --> Formato do dia.
	 * @return Data ou Hora, ou ambos indentado como String.
	 * @category Método genérico que retorna a data ou a hora ou ambos, caso passado
	 *           valores nulos retorna ambos indentados com o formato
	 *           "HH:mm;dd/MM/yyyy". Caso opte por um dos parâmetros, passar o outro
	 *           como nulo.
	 */
	public static String date(String formatHour, String formatDay) {
		Date dataHora = new Date();

		if (formatHour != null && (!formatHour.isEmpty()) && formatDay != null && (!formatDay.isEmpty())) {
			String hora = new SimpleDateFormat(formatHour).format(dataHora);
			String data = new SimpleDateFormat(formatDay).format(dataHora);
			return hora + ";" + data;
		} else if (formatHour != null && (!formatHour.isEmpty()) && (formatDay == null)) {
			return new SimpleDateFormat(formatHour).format(dataHora);
		} else if (formatDay != null && (!formatDay.isEmpty()) && (formatHour == null)) {
			return new SimpleDateFormat(formatDay).format(dataHora);
		} else {
			String hora = new SimpleDateFormat("HH:mm").format(dataHora);
			String data = new SimpleDateFormat("dd/MM/yyyy").format(dataHora);
			return hora + ";" + data;
		}
	}

	/**
	 * @param time --> Tempo de espera.
	 * @param msg  --> Mensagem caso tenha um informativo específico, caso contrário
	 *             pode ser passado este parâmetro como NULL ou "".
	 */
	public static void sleep(int time, String msg) {
		try {
			LOG.info(String.format("%s", (msg == null || msg.isEmpty()) ? "Aguardando por " + time + "..." : msg));
			Thread.sleep(time);
		} catch (InterruptedException e) {
			LOG.error(e.getMessage(), e);
		}
	}

	/**
	 * @param way --> Caminho para o arquivo.properties.
	 * @return Properties: As propriedades do arquivo.
	 */
	public static Properties getProp(String way) {
		Properties properties = new Properties();
		try {
			FileInputStream wayFile = new FileInputStream(way);
			properties.load(wayFile);
		} catch (FileNotFoundException e) {
			System.out.println(e.getMessage());
		} catch (IOException e) {
			System.out.println(e.getMessage());
		}
		return properties;
	}

	/**
	 * @return HoraString: Retorna a Hora + Data, neste formato
	 *         (YYYY-MM-DDTHH:MM:SS.MMM).
	 */
	public static String dateNoFormat() {
		LocalDateTime hora = LocalDateTime.now();
		String horaStr = hora.toString();
		return horaStr;
	}

	/**
	 * @param nomeCenario --> Nome do cenário.
	 * @return ID: Id do cenário informado.
	 */
	public static String lerID(String nomeCenario) {
		String id = null;
		Pattern pattern = Pattern.compile("(?<id>[^-|_]+).*");
		Matcher matcher = pattern.matcher(nomeCenario);
		if (matcher.matches()) {
			id = matcher.group("id");
		}
		return id;
	}

	/**
	 * Responsável por inicializar o relatório de dados: 'SuiteTests_UraSAntander'.
	 */
	public void inicializaArquivoDeDados() {
		String nomePlanilha = "SuiteTests_UraSAntander";
		String nomeCenario = PlanilhaDTO.getNomeCenario();
		LOG.info("Gerando arquivo do relatorio >>> " + nomeCenario);
		FactoryReportData report = FactoryReportData.getInstance();
		report.getDados().setNomeFeature(nomePlanilha);
		report.getDados().setCenario(nomeCenario);
		reportTestUtils.initializeReport(report);
	}

	/**
	 * Responsável por vincular o HostName com o usuário da automação.
	 */
	public static String capturaIP() {
		String hostName = null;
		try {
			hostName = InetAddress.getLocalHost().getHostName();

			if (hostName.equals("SKAR1200744")) {
				hostName = hostName + " -- " + "Hugo";
			} else if (hostName.equals("RSI0584")) {
				hostName = hostName + " -- " + "Romulo";
			} else if (hostName.equals("RSI1065")) {
				hostName = hostName + " -- " + "Aux2";
			} else if (hostName.equals("RSI4868")) {
				hostName = hostName + " -- " + "Aux3";
			} else if (hostName.equals("RSI0543")) {
				hostName = hostName + " -- " + "Aux1";
			} else {
				hostName = hostName + " -- " + "NÃO IDENFICADO";
			}
		} catch (UnknownHostException e) {
			LOG.error(e.getMessage(), e);
		}
		return hostName;
	}

	/**
	 * @param id --> Uma Lista de fraseologia gravada da URA.
	 * @return TextoCorrigido: Fraselogia garavada com manipulação.
	 */
	public static List<String> possiveisIDS(List<String> id) {
		LOG.info("Localizando os possiveis Ids...");
		List<String> textoCorrigido = new ArrayList<String>();
		for (String t : id) {
			String texto = verificarCodigo(t);
			if (texto != null) {
				textoCorrigido.add(texto);
			}
		}
		return textoCorrigido;
	}

	/**
	 * @param texto --> Gravação da fraseologia da URA.
	 * @param idLog --> O Possível ID fo teste.
	 * @return Frase: String com o texto manipulado.
	 */
	public static String alteraID(String texto, String idLog) {
		LOG.info("Corrigindo Fraseologia...");
		boolean index = texto.contains("B");
		if (index == true) {
			int cod = texto.indexOf("B");
			String fim = texto.substring(cod, texto.length());
			String frase = "Este é o teste " + idLog + " " + fim;
			return frase;
		}
		return texto;
	}

	/**
	 * @param texto --> Gravação da fraseologia da URA.
	 * @return Código: Uma String com o possível ID do teste.
	 */
	public static String localizarIdLog(String texto) {
		String codigo = "";
		texto = texto.toLowerCase();
		LOG.info("Procurando ID...");
		boolean index = texto.contains("teste");
		if (index) {

			int inicio = texto.indexOf("teste") + 5;
			int fim = texto.indexOf("bo");
			if (inicio >= 0 && fim >= 0) {
				codigo = texto.substring(inicio, fim);
			}
		}
		return codigo;
	}

	/**
	 * @param lista --> Uma lista com o possível ID.
	 * @return Texto: String com o ID corrigido. Ou retorna vazio.
	 */
	public static String corrigeString(List<String> lista) {
		LOG.info("Corrigindo os Ids...");
		for (String t : lista) {
			String texto = verificarCodigo(t);
			if (texto != null) {
				return texto;
			}
		}
		return "";
	}

	/**
	 * @param codigo --> Fraseologia da URA do código.
	 * @return Retorno: String com o código.
	 */
	public static String verificarCodigo(String codigo) {
		LOG.info("Validando o ID: " + codigo);
		String retorno = codigo.replaceAll("\\s", "").replaceAll("de", " d ").replaceAll("um", "1").replaceAll(" ", "")
				.replaceAll(" dois ", " 2 ").replaceAll(" três ", " 3 ").replaceAll(" quatro ", " 4 ")
				.replaceAll(" cinco ", " 5 ").replaceAll(" seis ", " 6 ").replaceAll(" sete ", " 7 ")
				.replaceAll(" oito ", " 8 ").replaceAll(" nove ", " 9 ").replaceAll("-", "");
		retorno = retorno.toUpperCase().trim();
		boolean isHex = retorno.matches("[0-9A-F]+");

		if (isHex) {
			if (retorno.length() == 5) {
				return retorno;
			} else {
				return null;
			}
		} else {
			return null;
		}
	}

	/**
	 * @param textoEsperado  --> Texto da para validação na Fraseologia.
	 * @param acaa           --> Valor setado com base na 'acao'.
	 * @param fraseTraduzida --> Fraseologia da gravação da URA.
	 * @param testePassou    --> Valor setado em relação se o teste foi executado.
	 * @param possiveisIds   --> Possível ID do cenário.
	 * @param absolutePath   --> Tempo de execução.
	 */
	public void populaDadosRelatorio(String textoEsperado, String acao, String fraseTraduzida, Boolean testePassou,
			List<String> possiveisIds, String absolutePath) {
		LOG.info("Populando o relatorio...");
		FactoryReportData report = FactoryReportData.getInstance();
		report.getDados().setCaminhoAudio(absolutePath);
		report.getDados().setFraseEsperada(textoEsperado);

		report.getDados().setAcao(acao);

		report.getDados().setFraseTraduzida(fraseTraduzida);
		report.getDados().setTesteAssert(testePassou);
		report.getDados().setPercentualAcerto(
				assertAudioService.calculaPorcentagemDeAcerto(textoEsperado, fraseTraduzida).doubleValue());

		if (possiveisIds != null) {
			report.getDados().setPossiveisIds(possiveisIds.toString().replace('[', ' ').replace(']', ' '));
		} else {
			report.getDados().setPossiveisIds(null);
		}
	}

	/**
	 * Usado para parar uma execução.
	 */
	public static void falhou() {
		Assert.assertTrue(false);
	}

	/**
	 * Limpa os os campos 'Tipo Erro', 'Erro' e 'Data Hora' na planilha 'Relatório
	 * Por Cenário'.
	 */
	public static void clearInfoCenario() {
		RelatorioValues.setTipoErro("");
		RelatorioValues.setErro("");
	}

	/**
	 * Commandos CMD.
	 */
	public static void cmdCommand() {
		try {
			Process process = Runtime.getRuntime().exec("cmd /c report.bat", null,
					new File("C:\\UraSantander\\reports\\"));

			StringBuilder output = new StringBuilder();

			BufferedReader reader = new BufferedReader(new InputStreamReader(process.getInputStream()));

			String line;
			while ((line = reader.readLine()) != null) {
				output.append(line + "\n");
			}

			int exitVal = process.waitFor();
			if (exitVal == 0) {
				System.out.println("Success!");
				System.out.println(output);
				System.exit(0);
			} else {
				// ...
			}

		} catch (IOException e) {
			e.printStackTrace();
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
	}

	public static void cmdCommand(String... params) {
		
		String execute = "";
		
		try {
			for (String command : params) {
				execute = command.concat(command);
			}

			Process process = Runtime.getRuntime().exec(execute);

			StringBuilder output = new StringBuilder();

			BufferedReader reader = new BufferedReader(new InputStreamReader(process.getInputStream()));

			String line;
			while ((line = reader.readLine()) != null) {
				output.append(line + "\n");
			}

			int exitVal = process.waitFor();
			if (exitVal == 0) {
				System.out.println("Success!");
				System.out.println(output);
				System.exit(0);
			} else {
				// ...
			}

		} catch (IOException e) {
			e.printStackTrace();
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
	}
}