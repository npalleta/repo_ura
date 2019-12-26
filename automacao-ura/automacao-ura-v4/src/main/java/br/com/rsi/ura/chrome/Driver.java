package br.com.rsi.ura.chrome;

import java.time.Duration;
import java.util.NoSuchElementException;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.ui.FluentWait;
import org.openqa.selenium.support.ui.Wait;
import org.openqa.selenium.support.ui.WebDriverWait;

public class Driver {
	
	private static WebDriver driver;
	private WebDriverWait wait;
	private Wait<WebDriver> waitDriver;
	private PageObjectDialerWEB pageDialerWeb;
	
	public static WebDriver getDriver() {
		return driver;
	}
	public static void setDriver(WebDriver drivera) {
		driver = drivera;
	}
	public WebDriverWait getWait() {
		return wait;
	}
	public void setWait(WebDriverWait wait) {
		this.wait = wait;
	}
	public Wait<WebDriver> getWaitDriver() {
		waitDriver = new FluentWait<WebDriver>(getDriver()).withTimeout(Duration.ofSeconds(40)).pollingEvery(Duration.ofMillis(1000)).ignoring(NoSuchElementException.class, org.openqa.selenium.WebDriverException.class);
		return waitDriver;
	}
	public void setWaitDriver(Wait<WebDriver> waitDriver) {
		this.waitDriver = waitDriver;
	}
	public PageObjectDialerWEB getPageDialerWeb() {
		return pageDialerWeb;
	}
	public void setPageDialerWeb(PageObjectDialerWEB pageDialerWeb) {
		this.pageDialerWeb = pageDialerWeb;
	}
}