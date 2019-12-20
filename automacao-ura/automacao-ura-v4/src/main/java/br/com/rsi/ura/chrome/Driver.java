package br.com.rsi.ura.chrome;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.ui.WebDriverWait;

public class Driver {
	
	private static WebDriver driver;
	private WebDriverWait wait;
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
	public PageObjectDialerWEB getPageDialerWeb() {
		return pageDialerWeb;
	}
	public void setPageDialerWeb(PageObjectDialerWEB pageDialerWeb) {
		this.pageDialerWeb = pageDialerWeb;
	}
}