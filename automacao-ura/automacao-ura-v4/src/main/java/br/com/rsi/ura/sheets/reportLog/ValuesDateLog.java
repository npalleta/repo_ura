package br.com.rsi.ura.sheets.reportLog;

public class ValuesDateLog {
	
	private static String dataInicio;
	private static String dataFinal;
	
	public static String getDataInicio() {
		return dataInicio;
	}
	public static void setDataInicio(String dataInicio) {
		ValuesDateLog.dataInicio = dataInicio;
	}
	public static String getDataFinal() {
		return dataFinal;
	}
	public static void setDataFinal(String dataFinal) {
		ValuesDateLog.dataFinal = dataFinal;
	}
}