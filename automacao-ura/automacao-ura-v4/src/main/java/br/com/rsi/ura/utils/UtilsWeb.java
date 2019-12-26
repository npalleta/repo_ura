package br.com.rsi.ura.utils;

import java.util.List;

import org.apache.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.PageFactory;

import br.com.rsi.ura.chrome.ConnectionDriver;
import br.com.rsi.ura.chrome.Driver;
import br.com.rsi.ura.chrome.PageObjectDialerWEB;

public class UtilsWeb extends ConnectionDriver {

	private final Logger LOG = Logger.getLogger(UtilsWeb.class);

	/**
	 * @param numero --> Número para realizar a ligação.
	 * @category Responsável por realizar o caminho para o teclado VOIP.
	 */
	public void realizaLigacao(String numero) {
		setUpDriver();
		setUpUrl("https://my.jive.com/domain/05a7d5ed-a6ec-423c-bbb5-675ea582e427/user/a46b4814-3612-4132-8218-adda64115a3c/main");

		sendKeys(getPageDialerWeb().txtLogin(), "romulo.lacerda@rsinet.com.br");
		click(getPageDialerWeb().btnNextPassword());
		// sendKeys(getPageDialerWeb().txtPassword(), "Asdfg.002");
		sendKeys(getPageDialerWeb().txtPassword(), "uraSantander.222");
		click(getPageDialerWeb().btnSignIn());
		isPresentAndClick(getPageDialerWeb().btnAceccpt());

		if (isVisibleSetTimeWait(getPageDialerWeb().loadingJive(), 10)
				&& isVisibleSetTimeWait(getPageDialerWeb().btnBanner(), 5)) {
			LOG.info("Refresh Jive...");
			getDriver().navigate().refresh();
		}
		/*
		 * if(isVisibleSetTimeWait(getPageDialerWeb().popUp1(), 1)) {
		 * LOG.info("Junping PopUp - 1 ...");
		 * click(getPageDialerWeb().linkSkipPopUp1());
		 * if(isVisibleSetTimeWait(getPageDialerWeb().popUp2(), 1)) {
		 * LOG.info("Junping PopUp - 2 ...");
		 * click(getPageDialerWeb().linkSkipPopUp2()); } }
		 */
		click(getPageDialerWeb().menuDialer());
		sendKeys(getPageDialerWeb().txtDialer(), numero);

		UtilsUra.sleep(5000, "Iniciando a ligação...");
		isPresentAndClick(getPageDialerWeb().btnCall());

		if (isPresent(getPageDialerWeb().btnBanner())) {
			click(getPageDialerWeb().btnBanner());
		}
	}

	/**
	 * @category Resposável por clicar no teclado da ligação do JIVE.
	 */
	public void clicarTeclado() {
		LOG.info("Clico no menu do teclado chamada...");
		// isNotPresentAndClick(By.xpath("//*[@*='mobile-dial-pad-button']"),
		// getPageDialerWeb().btnKeyboard());
		// isNotPresentAndClick(By.xpath("//div[@class='dial-pad-keys']"),
		// getPageDialerWeb().btnKeyboard());
		PageObjectDialerWEB pageObjectDialerWEB = new PageObjectDialerWEB();
		getDriver().findElement(pageObjectDialerWEB.btnKeyboard()).click();
		// presentAndClick(By.xpath("//button[@id='dial-pad-button']"));
		// getDriver().findElement(pageWeb.btnKeyboard()).click();
//		isNotPresentAndClick(By.xpath("//div[@class='dial-pad-keys']"), getPageDialerWeb().btnKeyboard());
	}

	/**
	 * @category Resposável por finalizar a ligação.
	 */
	public void finalizaLigacao() {
		LOG.info("---- Encerrando a ligação e o Chrome. ----");
		if (getDriver() != null) {
			getDriver().close();
			getDriver().quit();
		}
	}

	@SuppressWarnings("null")
	public WebElement searchElementUsingAttr(List<WebElement> elementos, String atributo) {
		WebElement elemento = null;
		if (!elementos.isEmpty() || !elementos.equals(null)) {
			for (WebElement elementoLista : elementos) {
				LOG.info(elemento.getClass().toString());
				if (elementoLista.getAttribute("id").equals(atributo)) {
					elemento = elementoLista;
					break;
				}
				break;
			}
		}
		return elemento;
	}

	/**
	 * @param num --> String passada na linha do Gherkin.
	 */
	public void clicarDiscadorCelular(String num) {
		UtilsUra.sleep(3000, "Digito o(s) " + num + " no teclado do VOIP");
		JavascriptExecutor js = ((JavascriptExecutor) getDriver());

		if (getPageDialerWeb() == null)
			setPageDialerWeb(PageFactory.initElements(getDriver(), PageObjectDialerWEB.class));

		for (char ch : num.toCharArray()) {
			if (ch == '1') {
				js.executeScript(getPageDialerWeb().btn1JS());
			} else if (ch == '2') {
				js.executeScript(getPageDialerWeb().btn2JS());
			} else if (ch == '3') {
				js.executeScript(getPageDialerWeb().btn3JS());
			} else if (ch == '4') {
				js.executeScript(getPageDialerWeb().btn4JS());
			} else if (ch == '5') {
				js.executeScript(getPageDialerWeb().btn5JS());
			} else if (ch == '6') {
				js.executeScript(getPageDialerWeb().btn6JS());
			} else if (ch == '7') {
				js.executeScript(getPageDialerWeb().btn7JS());
			} else if (ch == '8') {
				js.executeScript(getPageDialerWeb().btn8JS());
			} else if (ch == '9') {
				js.executeScript(getPageDialerWeb().btn9JS());
			} else if (ch == '0') {
				js.executeScript(getPageDialerWeb().btn0JS());
			}
		}
	}
}