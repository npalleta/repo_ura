package br.com.rsi.ura.chrome;

import org.openqa.selenium.By;

/**
 * 
 * @author hugo.santos
 * @category Contém todos os elementos de identificação do VOIP.
 *
 */
public class PageObjectDialerWEB {
	
	public By txtLogin() {return By.id("emailAddress");}
	public By txtPassword() {return By.id("password");}
	public By btnSignIn() {return By.id("submit");}
	public By btnNextPassword() {return By.xpath("//input[@id='next-button']");}
	public By btnConnected() {return By.xpath("//div[.='Connected']");}
	public By btnAceccpt() {return By.id("tos-accept-button");}
	
	public By loadingJive() {return By.xpath("/html/body/ui-view/ui-view/div[2]/initial-loading/h4/span");}
	public By popUp1() {return By.xpath("//h1[contains(text(),'Welcome, Romulo')]");}
	public By linkSkipPopUp1() {return By.xpath("//a[@class='skip-link']");}
	public By popUp2() {return By.xpath("//h1[contains(text(),\"Let's connect your calendar\")]");}
	public By linkSkipPopUp2() {return By.xpath("//a[@class='skip-link ng-star-inserted']");}
	
	public By menuDialer() {return By.xpath("//button[@class='nav-link call ng-star-inserted']");}
	
	public By txtDialer() {return By.xpath("//input[@placeholder='Enter a number']");}
	public By btnCall() { return By.xpath("//button[@class='jive-button jive-primary go ng-star-inserted']");}
	public By btnKeyboard() {return By.xpath("//button[@id='dial-pad-button']");}
	public By btnBanner() {return By.xpath("//button[@class='jive-fab-mini jive-primary']");}
	
	public By erroVoip() {return By.xpath("//*[@class= 'notification-container-app']");}
	
	public String btn1JS() {return "document.getElementById('dialpad-key1').click();";}
	public String btn2JS() {return "document.getElementById('dialpad-key2').click();";}
	public String btn3JS() {return "document.getElementById('dialpad-key3').click();";}
	public String btn4JS() {return "document.getElementById('dialpad-key4').click();";}
	public String btn5JS() {return "document.getElementById('dialpad-key5').click();";}
	public String btn6JS() {return "document.getElementById('dialpad-key6').click();";}
	public String btn7JS() {return "document.getElementById('dialpad-key7').click();";}
	public String btn8JS() {return "document.getElementById('dialpad-key8').click();";}
	public String btn9JS() {return "document.getElementById('dialpad-key9').click();";}
	public String btn0JS() {return "document.getElementById('dialpad-key-zero').click();";}
}