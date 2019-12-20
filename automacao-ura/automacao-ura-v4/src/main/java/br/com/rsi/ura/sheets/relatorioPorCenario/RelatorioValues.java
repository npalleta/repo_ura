package br.com.rsi.ura.sheets.relatorioPorCenario;

/**
 * @author hugo.santos
 */
public class RelatorioValues {

	private static String erro;
	private static String tipoErro;
	private static String idLog;
	private static String idMassa;
	private static String DataHora;
	private static String ip;
	private static String codeRequest;
	
	public static String getErro() {
		return erro;
	}
	public static void setErro(String erro) {
		RelatorioValues.erro = erro;
	}
	public static String getTipoErro() {
		return tipoErro;
	}
	public static void setTipoErro(String tipoErro) {
		RelatorioValues.tipoErro = tipoErro;
	}
	public static String getIdLog() {
		return idLog;
	}
	public static void setIdLog(String idLog) {
		RelatorioValues.idLog = idLog;
	}
	public static String getIdMassa() {
		return idMassa;
	}
	public static void setIdMassa(String idMassa) {
		RelatorioValues.idMassa = idMassa;
	}
	public static String getDataHora() {
		return DataHora;
	}
	public static void setDataHora(String dataHora) {
		DataHora = dataHora;
	}
	public static String getCodeRequest() {
		return codeRequest;
	}
	public static void setCodeRequest(String codeRequest) {
		RelatorioValues.codeRequest = codeRequest;
	}
	public static String getIp() {
		return ip;
	}
	public static void setIp(String ip) {
		RelatorioValues.ip = ip;
	}
}