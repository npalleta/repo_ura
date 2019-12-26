package br.com.rsi.ura.chrome;

import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.concurrent.TimeUnit;

import org.apache.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.StaleElementReferenceException;
import org.openqa.selenium.TimeoutException;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import br.com.rsi.ura.utils.UtilsWeb;

public class ConnectionDriver extends Driver {

	private final Logger LOG = Logger.getLogger(ConnectionDriver.class);
	private UtilsWeb utilsWeb;

	public void setUpDriver() {
		Map<String, Object> prefs = new HashMap<String, Object>();
		// prefs.put("profile.default_content_setting_values.notifications", 2);
		prefs.put("profile.default_content_setting_values.notifications", 1);
		prefs.put("credentials_enable_service", false);
		prefs.put("password_manager_enabled", false);
		ChromeOptions chromeOptions = new ChromeOptions();
		chromeOptions.setExperimentalOption("prefs", prefs);
		chromeOptions.setExperimentalOption("excludeSwitches", Arrays.asList("enable-automation"));
		chromeOptions.setExperimentalOption("useAutomationExtension", false);
		chromeOptions.addArguments("--disable-extensions-file-access-check", "--disable-popup-blocking",
				"--reduce-security-for-testing", "--start-maximized", "--use-fake-ui-for-media-stream");
		System.setProperty("webdriver.chrome.driver", "C:\\UraSantander\\properties\\chromedriver.exe");

		setDriver(new ChromeDriver(chromeOptions));
		getDriver().manage().window().maximize();
		getDriver().manage().timeouts().implicitlyWait(60, TimeUnit.SECONDS);
		setPageDialerWeb(PageFactory.initElements(getDriver(), PageObjectDialerWEB.class));
		setWait(new WebDriverWait(getDriver(), 60));
	}

	public void setUpUrl(String string) {
		getDriver().get(string);
	}

	public void close() {
		getDriver().close();
	}

	public void timeouts(By locator) {
		getWait().until(ExpectedConditions.visibilityOfElementLocated(locator));
	}

	public void newTimeouts(By locator) {
		getWaitDriver().until(ExpectedConditions.visibilityOfElementLocated(locator));
	}

	public void click(By by) {
		timeouts(by);
		getDriver().findElement(by).click();
	}

	public void clickAndHold(By by, Integer seconds) {
		WebElement element = getDriver().findElement(by);
		new Actions(getDriver()).clickAndHold(element).pause(300).release().build().perform();
	}

	public void clickAndHold(By by) {
		clickAndHold(by, 200);
	}

	public void sendKeys(By by, String string) {
		timeouts(by);
		getDriver().findElement(by).sendKeys(string);
	}

	public void presentAndClick(By by) {
		if (by.equals(null)) {
			LOG.info("|||||||||||||||||||||||||");
			LOG.info("||| >>>PASSOU AQUI...|||");
			LOG.info("|||||||||||||||||||||||||");
		} else {
			// newTimeouts(by);
			WebElement element = utilsWeb.searchElementUsingAttr(getDriver().findElements(by), "dial-pad-button");
			element.click();
		}
	}

	public void isNotPresentAndClick(By by, By click) {
		timeouts(click);
		timeouts(by);
		// newTimeouts(by);
		if (getDriver().findElement(by).isDisplayed()) {
			LOG.info(getDriver().findElement(by).getText());
			getDriver().findElement(by).click();
		} else {
			getDriver().findElement(click).click();
		}
		/*
		 * if (!getDriver().findElement(by).isDisplayed()) {
		 * getDriver().findElement(click).click(); }
		 */
	}

	public boolean isVisibleSetTimeWait(By element, Integer time) {
		WebDriverWait wait = new WebDriverWait(getDriver(), time);
		boolean result = true;
		try {
			wait.until(ExpectedConditions.visibilityOfElementLocated(element));
		} catch (NoSuchElementException | StaleElementReferenceException | TimeoutException e) {
			result = false;
		}
		return result;
	}

	public void isPresentAndClick(By by) {
		timeouts(by);
		if (getDriver().findElement(by).isDisplayed()) {
			getDriver().findElement(by).click();
		}
	}

	public void waitPresent(By locator, String text) {
		getWait().until(ExpectedConditions.invisibilityOfElementWithText(locator, text));
	}

	public void waitUntilElementIsClickable(By by) {
		getWait().ignoring(NoSuchElementException.class).ignoring(StaleElementReferenceException.class)
				.until(ExpectedConditions.elementToBeClickable(by));
	}

	public boolean isPresent(By by) {
		return getDriver().findElement(by).isDisplayed();
	}

	public void waitVisibilityOfElementLocated(By by) {
		WebDriverWait wait2 = new WebDriverWait(getDriver(), 2);
		wait2.until(ExpectedConditions.visibilityOfElementLocated(by));
	}
}