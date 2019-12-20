package br.com.rsi.ura.serviceJson.jsonData;

/**
 * 
 * @author hugo.santos
 * @category Manipula informações com Getters e Setters para o ZGEN.
 *
 */
public class Json {
	
	private static String json;
	private static String token;
	private static int idUser;
	private static int incidentId;
	private static String wayArqJson;
	private static String wayProperties = ".\\src\\main\\java\\br\\com\\rsi\\ura\\serviceJson\\json.properties";
	private static String valuesToken = "{\"Email\":\"value1\",\"Password\":\"value2\"}";
	private static boolean statusScenario;
	
	public static String getWayProperties() {
		return wayProperties;
	}
	public static String getValuesToken() {
		return valuesToken;
	}
	public static String getToken() {
		return token;
	}
	public static void setToken(String token) {
		Json.token = token;
	}
	public static int getIdUser() {
		return idUser;
	}
	public static void setIdUser(int idUser) {
		Json.idUser = idUser;
	}
	public static int getIncidentId() {
		return incidentId;
	}
	public static void setIncidentId(int incidentId) {
		Json.incidentId = incidentId;
	}
	public static String getWayArqJson() {
		return wayArqJson;
	}
	public static void setWayArqJson(String wayArqJson) {
		Json.wayArqJson = wayArqJson;
	}
	public static String getJson() {
		return json;
	}
	public static void setJson(String json) {
		Json.json = json;
	}
	public static boolean getStatusScenario() {
		return statusScenario;
	}
	public static void setStatusScenario(boolean statusScenario) {
		Json.statusScenario = statusScenario;
	}
}