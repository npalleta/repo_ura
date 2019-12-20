package br.com.rsi.ura.runnerJsonService;

import static org.junit.Assert.assertTrue;

import java.util.List;
import java.util.Properties;

import org.apache.log4j.Logger;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

import br.com.rsi.ura.runnerJsonService.configJsonService.LoadJson;
import br.com.rsi.ura.serviceJson.ZgenAPI;
import br.com.rsi.ura.serviceJson.jsonValues.Json;
import br.com.rsi.ura.utils.UtilsUra;

/**
 * @author hugo.santos
 */
public class RunnerJson {
	
	private static final String dateArq = "20190902"; //Please, Required Format --> yyyymmdd
	private static final Logger LOG = Logger.getLogger(RunnerJson.class);
	private static boolean delContentJson = false;
	
	public static void main(String[] args) {
		
		LoadJson jsonFile = new LoadJson();
		if(jsonFile.fileContent(dateArq)) {
			LOG.info("Empty File.");
			assertTrue(false);
		}
		List<String> listJson = jsonFile.loadArq();
		assertTrue((!listJson.isEmpty()) ? true : false);
		LOG.info("Starting Json Service...");
		Properties p = UtilsUra.getProp(Json.getWayProperties());
		ZgenAPI apicomunication = new ZgenAPI();
		Gson gson = new GsonBuilder().setPrettyPrinting().create();
		int sizeList = listJson.size();
		int posi = 0;
		
		while(posi < sizeList) {
			apicomunication.POST_Token(p.getProperty("urlToken"));
			LOG.info("JSON ----------------------------");
			JsonObject objt = new JsonParser().parse(listJson.get(posi)).getAsJsonObject();
			LOG.info("\n" + gson.toJson(objt));
			apicomunication.POST_Json(listJson.get(posi), p.getProperty("urlJson"));
			jsonFile.setValuesFromJson(listJson.get(posi));
			LOG.info("POST_Json Service Was a Success.");
			LOG.info("Service: " + (posi + 1) + " - Remaining Services: " + ((sizeList - 1) - posi));
			posi++;
		}
		LOG.info("Service Json Complete.");
		LOG.info("Deleting File Contents: 'jsonErrorService.json'...");
		delContentJson = true;
		
		if(delContentJson) {
			jsonFile.deleteContent();
			LOG.info("File contents erasing.");
		}
	}
}