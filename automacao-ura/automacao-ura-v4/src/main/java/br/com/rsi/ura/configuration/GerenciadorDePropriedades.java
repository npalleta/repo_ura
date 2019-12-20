package br.com.rsi.ura.configuration;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

import org.apache.log4j.Logger;

public final class GerenciadorDePropriedades {
	
	private static final Logger LOG = Logger.getLogger(GerenciadorDePropriedades.class);
	private static GerenciadorDePropriedades gerenciador;
	private String webdriverChromeDriver;
	private String reportOutputDirectory;
	private String reportExcelOutputDirectory;
	private String reportCsvOutputFile;
	private String reportPorCenarioExcelOutputFile;
	private String massaExcelInputFile;
	private boolean springActiveMqPackagesTrustAll;
	private String openbdtArquivosDados;
	private long openbdtUraDiasExpurgo;
	private String pathFeatures;
	private String rodar1h;
	private String SDK_LOCATION;
	private String ramal;
	
	public static GerenciadorDePropriedades getInstance() {
		if (gerenciador == null) {
			gerenciador = new GerenciadorDePropriedades();
			Properties properties = new Properties();
			InputStream inputStream = null;
			try {
				inputStream = new FileInputStream("./projeto.properties");
				properties.load(inputStream);
				gerenciador.webdriverChromeDriver = properties.getProperty("webdriver.chrome.driver");
				gerenciador.reportOutputDirectory = properties.getProperty("report.outputDirectory");
				gerenciador.reportExcelOutputDirectory = properties.getProperty("report.excel.outputDirectory");
				gerenciador.reportCsvOutputFile = properties.getProperty("report.csv.outputFile");
				gerenciador.reportPorCenarioExcelOutputFile = properties.getProperty("report.porcenario.excel.outputFile");
				gerenciador.massaExcelInputFile = properties.getProperty("massa.excel.inputFile");
				gerenciador.springActiveMqPackagesTrustAll = (properties.getProperty("spring.activemq.packages.trust-all").equals("true"));
				gerenciador.openbdtArquivosDados = properties.getProperty("openbdt.arquivos.dados");
				gerenciador.openbdtUraDiasExpurgo = Long.parseLong(properties.getProperty("openbdt.ura.dias.expurgo"));
				gerenciador.pathFeatures =  properties.getProperty("pathFeatures");
				gerenciador.ramal = properties.getProperty("ramal.ura.rsi");
				gerenciador.setRodar1h(properties.getProperty("trueFalse"));
				gerenciador.setSDK_LOCATION("SDK_LOCATION");
			} catch (IOException e) {
				LOG.error(e);
			} finally {
				if (inputStream != null) {
					try {
						inputStream.close();
					} catch (IOException e) {
						LOG.error(e);
					}
				}
			}
		}
		return gerenciador;
	}
	
	public String getWebdriverChromeDriver() {
		return webdriverChromeDriver;
	}
	public String getPathFeatures() {
		return pathFeatures;
	}
	public String getReportOutputDirectory() {
		return reportOutputDirectory;
	}
	public String getReportExcelOutputDirectory() {
		return reportExcelOutputDirectory;
	}
	public String getReportPorCenarioExcelOutputFile() {
		return reportPorCenarioExcelOutputFile;
	}
	public String getMassaExcelInputFile() {
		return massaExcelInputFile;
	}
	public boolean isSpringActiveMqPackagesTrustAll() {
		return springActiveMqPackagesTrustAll;
	}
	public String getOpenbdtArquivosDados() {
		return openbdtArquivosDados;
	}
	public long getOpenbdtUraDiasExpurgo() {
		return openbdtUraDiasExpurgo;
	}
	public String getReportCsvOutputFile() {
		return reportCsvOutputFile;
	}
	public String getRodar1h() {
		return rodar1h;
	}
	public void setRodar1h(String rodar1h) {
		this.rodar1h = rodar1h;
	}
	public String getSDK_LOCATION() {
		return SDK_LOCATION;
	}
	public void setSDK_LOCATION(String sDK_LOCATION) {
		SDK_LOCATION = sDK_LOCATION;
	}
	public String getRamal() {
		return ramal;
	}
}