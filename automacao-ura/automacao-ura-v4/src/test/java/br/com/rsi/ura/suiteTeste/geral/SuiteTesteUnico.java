package br.com.rsi.ura.suiteTeste.geral;

import org.junit.runner.RunWith;

import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;

@RunWith(Cucumber.class)
@CucumberOptions(

		dryRun = false,
		features = { "src\\test\\java\\br\\com\\rsi\\ura\\teste" }, 
			glue = { "br.com.rsi.ura.gherkin_geral",
					 "br.com.rsi.ura.teste.conta_corrente", 
					 "br.com.rsi.ura.teste.emprestimo",
					 "br.com.rsi.ura.teste.folha_pagamento", 
					 "br.com.rsi.ura.teste.investimentos",
					 "br.com.rsi.ura.teste.meios_pagamentos",
					 "br.com.rsi.ura.teste.pagamentos",
					 "br.com.rsi.ura.teste.produtos_servicos", 
					 "br.com.rsi.ura.teste.seguros",
					 "br.com.rsi.ura.teste.transferencias_recursos" },
			
			tags = {""}
)

public class SuiteTesteUnico {
}