package br.com.rsi.ura.runnerJsonService.configJsonService;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.List;

import org.apache.log4j.Logger;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

import br.com.rsi.ura.runnerJsonService.RunnerJson;
import br.com.rsi.ura.sheets.relatorioPorCenario.GerenciadorDeRelatorioPorCenario;
import br.com.rsi.ura.sheets.relatorioPorCenario.RelatorioValues;
import br.com.rsi.ura.utils.UtilsUra;

/**
 * @author hugo.santos
 */
public class LoadJson {

	private static final Logger LOG = Logger.getLogger(RunnerJson.class);
	private static List<String> listJson = new ArrayList<String>();
	private File file;
	private String way;
	private String id;
	private boolean status;
	private String data;
	private String cenario;
	private String tipoErro;
	private String erro;
	private String hostName;
	
	public boolean fileContent(String date) {
		this.way = "C:\\relatorio\\" + date + "\\jsonErrorService.json";
		this.file = new File(way);
		boolean x = ((file.length() == 0) ? true : false);
		LOG.info("File - Length: " + file.length());
		return x;
	}
	
	public List<String> loadArq() {
		BufferedReader arq;
		try {
			LOG.info("Loading File... --> " + new Date());
			arq  = new BufferedReader(new InputStreamReader(new FileInputStream(way)));
			List<String> listJson = loadContent(arq);
			LOG.info("Uploaded File...");
			return listJson;
		} catch (FileNotFoundException e) {
			LOG.error(e.getMessage(), e);
		}
		return null;
	}
	
	public void setValuesFromJson(String json) {
		Gson gson = new Gson();
		JsonObject jsonObj = new JsonParser().parse(json).getAsJsonObject();
		JsonArray subJsonObjArray = jsonObj.getAsJsonArray("testSteps");
		JsonElement value;
		JsonObject subJsonObj;
		String comments = "";
		
		for(int posi = 0; posi < subJsonObjArray.size(); posi++) {
			value = subJsonObjArray.get(posi);
			subJsonObj = new JsonParser().parse(value.toString()).getAsJsonObject();
			comments = gson.toJson(subJsonObj.get("comments"));
			this.status = subJsonObj.get("result").getAsBoolean();
		}

		this.id = jsonObj.get("testCaseCode").getAsString();
		this.data = jsonObj.get("date").getAsString();
		int indexTipoErro = comments.indexOf("-");
		this.tipoErro = comments.substring(11, indexTipoErro - 1);
		int indexErro = comments.lastIndexOf(" - ERRO:");
		this.erro = comments.substring(indexErro + 9);
		this.hostName = UtilsUra.capturaIP();
		
		writeResultExcel();
	}
	
	public void deleteContent() {
		try {
			FileWriter arq = new FileWriter(file);
			arq.write("");
			arq.flush();
			arq.close();
		} catch (IOException e) {
			LOG.error(e.getMessage(), e);
		}
	}
	
	private void writeResultExcel() {
		RelatorioValues.setDataHora(this.data);
		RelatorioValues.setTipoErro(this.tipoErro);
		RelatorioValues.setErro(this.erro);
		RelatorioValues.setIp(this.hostName);
		
		GerenciadorDeRelatorioPorCenario.escreverResultado(this.id, this.status, this.cenario, "");
		LOG.info("'RelatorioPorCenario' was successfully updated - Scenario: " + this.id);
	}
	
	private static List<String> loadContent(BufferedReader file) {
		List<String> j = new ArrayList<String>();
		String ini;
		try {
			while((ini = file.readLine()) != null) {
				for(int cont = 0; cont <= 13; cont++) {
					ini += file.readLine();
				}
				listJson.add(ini);
				j.removeAll(Collections.singleton(null));
			}
		return listJson;
		} catch (IOException e) {
			LOG.error(e.getMessage(), e);
		} catch (OutOfMemoryError e) {
			LOG.error(e.getMessage(), e);
		} finally {
			try {
				LOG.info("Closing File --> " + new Date());
				file.close();
			} catch (IOException e) {
				LOG.error(e.getMessage(), e);
			}
		}
		return null;
	}
}