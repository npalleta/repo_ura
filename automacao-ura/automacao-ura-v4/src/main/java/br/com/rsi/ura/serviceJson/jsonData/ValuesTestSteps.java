package br.com.rsi.ura.serviceJson.jsonData;

/**
 * 
 * @author hugo.santos
 * @category Responsável por receber as informações (Getters e Setters) e guardar para poder gerar o Object Json.
 *
 */
public class ValuesTestSteps {

	private String comments;
	private int stepNumber;
	private boolean result;
	
	public int getStepNumber() {
		return stepNumber;
	}
	public void setStepNumber(int stepNumber) {
		this.stepNumber = stepNumber;
	}
	public boolean isResult() {
		return result;
	}
	public void setResult(boolean result) {
		this.result = result;
	}
	public String getComments() {
		return comments;
	}
	public void setComments(String comments) {
		this.comments = comments;
	}
}