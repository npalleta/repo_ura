package br.com.rsi.ura.runnerToBD;

import br.com.rsi.ura.serviceSql.SQLConnectionManager;
import br.com.rsi.ura.utils.UtilsUra;

public class SubirManualBD {
	
	private static final String[] LIST_OF_SCENARIOS = {
			"URA0016",
			"URA0096",
			"URA0136",
			"URA0144",
			"URA0145",
			"URA0146",
			"URA0176",
			"URA0353",
			"URA0354",
			"URA0403",
			"URA0428",
			"URA0442"};
	
	public static void main(String[] args) {
		for(int posi = 0; posi < LIST_OF_SCENARIOS.length; posi++) {
			String[] dateHour = UtilsUra.date("HH:mm:ss", "yyyy/MM/dd").split(";");
			SQLConnectionManager.salvaStatusExecucaoTabelaFuncionalidade(LIST_OF_SCENARIOS[posi], true, dateHour[1], dateHour[0]);
		}
	}
}