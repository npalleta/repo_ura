package br.com.rsi.ura.serviceJson;

import org.apache.log4j.Logger;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonObject;

import br.com.rsi.ura.saveResult.SaveResultTestCase;
import br.com.rsi.ura.serviceJson.jsonData.Json;
import br.com.rsi.ura.serviceJson.jsonData.JsonProject;
import br.com.rsi.ura.serviceJson.jsonData.ValuesTestSteps;
import br.com.rsi.ura.sheets.massa.PlanilhaDTO;
import br.com.rsi.ura.sheets.relatorioPorCenario.RelatorioValues;
import br.com.rsi.ura.utils.UtilsUra;
import cucumber.api.Scenario;
import okhttp3.Response;

public class ManipulationJson {

	private static Gson gson;
	private static final Logger LOG = Logger.getLogger(ManipulationJson.class);
	private static JsonProject jsonValues = new JsonProject();
	private static ValuesTestSteps jsonTestStepsValues = new ValuesTestSteps();

	protected void jsonGenerator() {
		jsonValues.addTestSteps(jsonTestStepsValues);
		gson = new GsonBuilder().setPrettyPrinting().create();
		Json.setJson(gson.toJson(jsonValues));
	}

	public void clearTestSteps() {
		jsonValues.clearTestsSteps();
	}
	
	public void manipulationJson(Response responseJson, String json) {
		JsonObject jsonObjt = UtilsJson.responseForJsonObjt(responseJson);
		Json.setIncidentId(jsonObjt.get("incidentID").getAsInt());
		LOG.info("JSON - Web Service");
		LOG.info("Status da Execução Atualizado JSON!");
		RelatorioValues.setCodeRequest("MESSAGE: "+ responseJson.message() + 
				" - CODE: " + responseJson.code() + 
				" - INCIDENT_ID: " + Json.getIncidentId());
		clearTestSteps();
	}

	public void manipulationToken(Response responseToken) {
		JsonObject json = UtilsJson.responseForJsonObjt(responseToken);
		Json.setToken(json.get("token").getAsString());
		Json.setIdUser(Integer.parseInt(json.get("userID").getAsString()));
	}

	public void manipulationProjectCaseCode(Response responseProjectCaseCode) {
		JsonObject jsonObjt = UtilsJson.responseForJsonObjt(responseProjectCaseCode);
		JsonObject jsonProject = jsonObjt.getAsJsonObject("project");
		JsonObject jsonTestCase = jsonObjt.getAsJsonObject("testCase");
		
		jsonValues.setTestCaseID(jsonTestCase.get("testCaseID").getAsString());
		jsonValues.setprojectID(jsonProject.get("projectID").getAsString());
		jsonValues.setTestCaseCode(PlanilhaDTO.getIdCenario());
		jsonValues.setTesterUserID(Json.getIdUser());
		
		boolean valor = SaveResultTestCase.getRodou();
		if (valor)
			jsonValues.setTestResultComments("Caso de teste: " + PlanilhaDTO.getIdCenario() +
					", foi executado.");
		else
			jsonValues.setTestResultComments("Caso de teste: " + PlanilhaDTO.getIdCenario() +
					", não foi executado corretamente.");
		jsonValues.setDate(UtilsUra.dateNoFormat());
	}

	public static void manipulationJsonTestSteps(Scenario scenario) {
		String tipoErro = RelatorioValues.getTipoErro();
		String erro = RelatorioValues.getErro();
		
		if(!Json.getStatusScenario()) {
			if (tipoErro.isEmpty() || tipoErro == null) { 
				tipoErro = "RE_TEST";
				RelatorioValues.setTipoErro(tipoErro);
			}
			if (erro.isEmpty() || erro == null) {
				erro = "A automação não conseguiu identificar o erro.";
				RelatorioValues.setErro(erro);
			}
		} else {
			UtilsUra.clearInfoCenario();
		}
		
		int index = erro.indexOf("Texto Traduzido");
		if (index > 0) {
			erro = erro.substring(0, index - 4);
		}
		String valor = "TIPO ERRO: " + tipoErro + " - ERRO: " + erro + " - HOSTNAME: " + UtilsUra.capturaIP();
		jsonTestStepsValues.setComments(valor);
		jsonTestStepsValues.setStepNumber(1);
		
		boolean result = false;
		if (Json.getStatusScenario()) {
			result = true;
		}
		jsonTestStepsValues.setResult(result);
	}
}