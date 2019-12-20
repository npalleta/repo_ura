package br.com.rsi.ura.runner;

import java.time.LocalDateTime;
import java.time.LocalTime;

import org.junit.runner.JUnitCore;

import br.com.rsi.ura.suiteTeste.geral.SuiteTestesGerais;

public class RunnerTests {

	public static void main(String[] args) throws InterruptedException {

		boolean deveExecutarAgora = true;
		int quantidadeDeExecucoes = 15;
		
		LocalDateTime amanha01am = LocalDateTime.now().plusDays(1).withHour(1);
		
		while (!deveExecutarAgora) {
			System.out.println("Esperando até 1Hr >> " + LocalTime.now());
			
			if (LocalDateTime.now().isAfter(amanha01am)) {
				deveExecutarAgora = true;
			}
			// Thread.sleep(60_000);
		}
		JUnitCore junit = new JUnitCore();
		for(int contadorDeExecucoes = 0; contadorDeExecucoes < quantidadeDeExecucoes; contadorDeExecucoes++) {
			System.out.println("Start Bateria: " + LocalTime.now());
			// Thread.sleep(120_000);
			junit.run(SuiteTestesGerais.class);
		}
	}
}