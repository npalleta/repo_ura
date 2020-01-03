package br.com.rsi.ura.runner;

import java.time.LocalDateTime;
	
import org.junit.runner.JUnitCore;

import br.com.rsi.ura.suiteTeste.geral.RelatorioGeral;
import br.com.rsi.ura.suiteTeste.geral.SuiteTestesGerais;

public class RunnerTests {

	public static void main(String[] args) throws InterruptedException {

		System.out.println("Batery runs: " + LocalDateTime.now());
		JUnitCore junit = new JUnitCore();
		junit.run(SuiteTestesGerais.class);
		junit.run(RelatorioGeral.class);

		// LocalDateTime amanha01am = LocalDateTime.now();
		// LocalDateTime amanha01am = LocalDateTime.now().plusDays(1).withHour(1);

		/*
		 * boolean deveExecutarAgora = true;
		 * int quantidadeDeExecucoes = 15;
		 * while (!deveExecutarAgora) { System.out.println("Esperando até 1Hr >> " +
		 * LocalTime.now());
		 * 
		 * if (LocalDateTime.now().isAfter(amanha01am)) { deveExecutarAgora = true; }
		 * Thread.sleep(60_000); }
		 * for(int contadorDeExecucoes = 0; contadorDeExecucoes < quantidadeDeExecucoes;
		 * contadorDeExecucoes++) { System.out.println("Start Bateria: " +
		 * LocalTime.now().); Thread.sleep(120_000); }
		 */
	}
}