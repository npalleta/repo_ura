package br.com.rsi.ura.serviceJson.jsonData;

import java.util.ArrayList;
import java.util.List;

/**
 * 
 * @author hugo.santos
 * @category  Responsável por receber as informações (Getters e Setters) e guardar para poder gerar o Object Json.
 *
 */
public class JsonProject {
	
	private List<ValuesTestSteps> testSteps;
	private String projectID;
	private String testCaseID;
	private String testCaseCode;
	private int testerUserID;
	private String testResultComments;
	private String date;
	
	public JsonProject() {
		testSteps = new ArrayList<ValuesTestSteps>();
	}
	public String getprojectID() {
		return projectID;
	}
	public void setprojectID(String projectCode) {
		this.projectID = projectCode;
	}
	public String getTestCaseID() {
		return testCaseID;
	}
	public void setTestCaseID(String testCaseID) {
		this.testCaseID = testCaseID;
	}
	public String getTestCaseCode() {
		return testCaseCode;
	}
	public void setTestCaseCode(String testCaseCode) {
		this.testCaseCode = testCaseCode;
	}
	public int getTesterUserID() {
		return testerUserID;
	}
	public void setTesterUserID(int testerUserID) {
		this.testerUserID = testerUserID;
	}
	public String getTestResultComments() {
		return testResultComments;
	}
	public void setTestResultComments(String testResultComments) {
		this.testResultComments = testResultComments;
	}
	public List<ValuesTestSteps> getTestSteps() {
		return testSteps;
	}
	public void addTestSteps(ValuesTestSteps step) {
		this.testSteps.add(step);
	}
	public void clearTestsSteps() {
		this.testSteps.clear();
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
}