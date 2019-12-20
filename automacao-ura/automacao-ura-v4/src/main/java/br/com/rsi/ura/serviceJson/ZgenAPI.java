package br.com.rsi.ura.serviceJson;

import java.io.IOException;
import java.util.concurrent.TimeUnit;

import org.apache.log4j.Logger;

import br.com.rsi.ura.serviceJson.jsonData.Json;
import br.com.rsi.ura.sheets.massa.PlanilhaDTO;
import br.com.rsi.ura.sheets.relatorioPorCenario.RelatorioValues;
import br.com.rsi.ura.utils.UtilsUra;
import cucumber.api.Scenario;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;

public class ZgenAPI {
	
	private final Logger LOG = Logger.getLogger(ZgenAPI.class);
	private MediaType media = MediaType.parse("application/json; charset=utf-8");
	private ManipulationJson zgenObjt;
	private final OkHttpClient client = new OkHttpClient.Builder()
			.connectTimeout(15, TimeUnit.SECONDS)
			.readTimeout(15, TimeUnit.SECONDS)
			.writeTimeout(15, TimeUnit.SECONDS)
			.build();
	
	public void POST_Token(String url) {
		zgenObjt = new ManipulationJson();
		RequestBody corpo = RequestBody.create(UtilsJson.addJsonUserPassword(Json.getValuesToken(),
				UtilsUra.getProp(Json.getWayProperties())), media);
		Response responseToken;
		
		LOG.info("------------------------------------------------->");
		LOG.info("Iniciando com Web Service POST_Token...");
		Request requestToken = new Request
				.Builder()
				.url(url)
				.post(corpo)
				.build();
		try {
			responseToken = client.newCall(requestToken).execute();
			
			LOG.info("POST_Token --> MESSAGE: " + responseToken.message());
			LOG.info("POST_Token --> CODE REQUEST: " + responseToken.code());
			
			if(!responseToken.isSuccessful()) {
				zgenObjt.clearTestSteps();
				UtilsJson.finalizeErroResponse(responseToken, "POST_Token");
			}else {
				zgenObjt.manipulationToken(responseToken);
				responseToken.close();
				LOG.info("------------------------------------------------->");
			}
		} catch (IOException e) {
			RelatorioValues.setTipoErro("RE_TEST");
			RelatorioValues.setErro("SERVER ERROR");
			RelatorioValues.setCodeRequest("ERROR SERVER");
			LOG.error(e.getMessage(), e);
		}
	}
	
	public void GET_ProjectCaseCode(String url, Scenario cenario) {
		zgenObjt = new ManipulationJson();
		url += PlanilhaDTO.getIdCenario();
		ManipulationJson.manipulationJsonTestSteps(cenario);
		Response projectCaseCode;
		
		LOG.info("Iniciando com Web Service GET_ProjectCaseCode...");
		
		Request requestProject = new Request
				.Builder()
				.get()
				.url(url)
				.addHeader("Authorization", "Bearer " + Json.getToken())
				.build();
		try {
			projectCaseCode = client.newCall(requestProject).execute();
			
			LOG.info("GET_ProjectCaseCode --> MESSAGE: " + projectCaseCode.message());
			LOG.info("GET_ProjectCaseCode --> CODE REQUEST: " + projectCaseCode.code());
			
			if(!projectCaseCode.isSuccessful()) {
				zgenObjt.clearTestSteps();
				UtilsJson.finalizeErroResponse(projectCaseCode, "GET_ProjectCaseCode");
			}else {
				zgenObjt.manipulationProjectCaseCode(projectCaseCode);
				zgenObjt.jsonGenerator();
				projectCaseCode.close();
			}
		} catch (IOException e) {
			RelatorioValues.setTipoErro("RE_TEST");
			RelatorioValues.setErro("SERVER ERROR");
			RelatorioValues.setCodeRequest("ERROR SERVER");
			LOG.error(e.getMessage(), e);
		}
	}

	public void POST_Json(String json, String url) {
		zgenObjt = new ManipulationJson();
		Response responseJson;
		RequestBody corpo = RequestBody.create(json, media);
		
		LOG.info("------------------------------------------------->");
		LOG.info("Iniciando com Web Service POST_Json...");
		
		Request requestJson = new Request
				.Builder()
				.url(url)
				.post(corpo)
				.addHeader("Authorization", "Bearer " + Json.getToken())
				.build();
		try {
			responseJson = client.newCall(requestJson).execute();
			
			LOG.info("POST_Json --> MESSAGE: " + responseJson.message());
			LOG.info("POST_Json --> CODE REQUEST: " + responseJson.code());
			
			if (!responseJson.isSuccessful()) {
				zgenObjt.clearTestSteps();
				UtilsJson.saveJson(json);
				UtilsJson.finalizeErroResponse(responseJson, "POST_Json");
			}else {
				LOG.info("------------------------------------------------->");
				zgenObjt.manipulationJson(responseJson, json);
				responseJson.close();
			}
		} catch (IOException e) {
			UtilsJson.saveJson(json);
			RelatorioValues.setTipoErro("RE_TEST");
			RelatorioValues.setErro("SERVER ERROR");
			RelatorioValues.setCodeRequest("ERROR SERVER");
			LOG.error(e.getMessage(), e);
		}
	}
	
	public void GET_ResultCaseTest(String url) {
	}   
	
	public void GET_ResultJson(String url) {
	}
}