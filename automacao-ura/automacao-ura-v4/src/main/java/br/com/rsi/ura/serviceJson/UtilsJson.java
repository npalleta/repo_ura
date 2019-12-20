package br.com.rsi.ura.serviceJson;

import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Properties;

import org.apache.log4j.Logger;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.google.gson.JsonSyntaxException;

import br.com.rsi.ura.saveResult.SaveResultTestCase;
import br.com.rsi.ura.serviceJson.jsonData.Json;
import br.com.rsi.ura.sheets.massa.PlanilhaDTO;
import br.com.rsi.ura.sheets.relatorioPorCenario.GerenciadorDeRelatorioPorCenario;
import br.com.rsi.ura.sheets.relatorioPorCenario.RelatorioValues;
import br.com.rsi.ura.utils.UtilsUra;
import okhttp3.Response;

public class UtilsJson {

	private static Gson gson;
	private static final Logger LOG = Logger.getLogger(UtilsJson.class);
	
	protected static String identificationErrorCode(final int code, String message) {
		switch (code) {
			case 404:
				return "CODE: " +  code + " -- MESSAGE: " + message;
			case 500:
				return "CODE: " +  code + " -- MESSAGE: " + message;
			case 202:
				return "CODE: " +  code + " -- MESSAGE: " + message;
			case 400:
				return "CODE: " +  code + " -- MESSAGE: " + message;
			default:
				return "CODE: " + code + " -- MESSAGE: UNIDENTIFIED ERROR";
		}
	}
	
	protected static void finalizeErroResponse(Response response, String header) {
		String info = "";
		try {
			info = response.body().string();
			info = (info.isEmpty() ? "Vazio" : info);
			LOG.error(">>> INFORMATION RESPONSE: " + info + " <<<");
			LOG.info("----------------------------------------------->");
			RelatorioValues.setCodeRequest(header + " -- " + identificationErrorCode(response.code(), response.message()) + " -- INFORMATION: " + info);
			GerenciadorDeRelatorioPorCenario.escreverResultado(PlanilhaDTO.getIdCenario(), Json.getStatusScenario(), PlanilhaDTO.getNomeCenario(), SaveResultTestCase.getDirAudio());
			response.close();
			UtilsUra.falhou();
		} catch (IOException e) {
			LOG.error(e.getMessage(), e);
		}
	}

	protected static JsonObject responseForJsonObjt(Response response) {
		JsonObject json;
		try {
			json = new JsonParser().parse(response.body().string()).getAsJsonObject();
			return json;
		} catch (JsonSyntaxException e) {
			LOG.error(e.getMessage());
		} catch (IOException e) {
			LOG.error(e.getMessage());
		}
		return null;
	}

	protected static String addJsonUserPassword(String valuesToken, Properties properties) {
		JsonObject objtJson;
		gson = new Gson();
		objtJson = new JsonParser().parse(valuesToken).getAsJsonObject();
		objtJson.addProperty("Email", properties.getProperty("Email"));
		objtJson.addProperty("Password", properties.getProperty("Password"));

		return gson.toJson(objtJson);
	}
	
	protected static void saveJson(String json) {
		try {
			PrintWriter out = new PrintWriter(new FileWriter(Json.getWayArqJson(), true));
			out.println(json);
			out.close();
		} catch (IOException e) {
			LOG.error(e.getMessage(), e);
			LOG.info("Erro ao ler arquivo 'jsonErrorService.json' em: "+ Json.getWayArqJson());
		}
	}
}