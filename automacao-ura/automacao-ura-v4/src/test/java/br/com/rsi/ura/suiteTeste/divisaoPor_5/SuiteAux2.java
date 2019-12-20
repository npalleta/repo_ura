package br.com.rsi.ura.suiteTeste.divisaoPor_5;

import org.junit.runner.RunWith;

import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;

@RunWith(Cucumber.class)
@CucumberOptions (

		features = {"src\\test\\java\\br\\com\\rsi\\ura\\teste"},
			glue = {"br.com.rsi.ura.gherkin_geral",
					"br.com.rsi.ura.teste.conta_corrente", 
					"br.com.rsi.ura.teste.emprestimo",
					"br.com.rsi.ura.teste.folha_pagamento", 
					"br.com.rsi.ura.teste.investimentos",
					"br.com.rsi.ura.teste.meios_pagamentos", 
					"br.com.rsi.ura.teste.pagamentos",
					"br.com.rsi.ura.teste.produtos_servicos", 
					"br.com.rsi.ura.teste.seguros",
					"br.com.rsi.ura.teste.transferencias_recursos"},
			
		 //AUX2 -- 157 Scenarios
 		 tags = { "@URA0001," + "@URA0002," + "@URA0003," + "@URA0007," + "@URA0008," + "@URA0009," + "@URA0010,"
				+ "@URA0011," + "@URA0013," + "@URA0016," + "@URA0019," + "@URA0021," + "@URA0028," + "@URA0030,"
				+ "@URA0033," + "@URA0034," + "@URA0035," + "@URA0036," + "@URA0038," + "@URA0039," + "@URA0040,"
				+ "@URA0041," + "@URA0042," + "@URA0043," + "@URA0044," + "@URA0045," + "@URA0046," + "@URA0047,"
				+ "@URA0048," + "@URA0049," + "@URA0050," + "@URA0071," + "@URA0072," + "@URA0074," + "@URA0079,"
				+ "@URA0080," + "@URA0081," + "@URA0082," + "@URA0086," + "@URA0087," + "@URA0088," + "@URA0089,"
				+ "@URA0090," + "@URA0091," + "@URA0093," + "@URA0094," + "@URA0095," + "@URA0096," + "@URA0097,"
				+ "@URA0098," + "@URA0099," + "@URA0100," + "@URA0101," + "@URA0106," + "@URA0124," + "@URA0130,"
				+ "@URA0131," + "@URA0134," + "@URA0135," + "@URA0136," + "@URA0143," + "@URA0144," + "@URA0145,"
				+ "@URA0146," + "@URA0147," + "@URA0148," + "@URA0152," + "@URA0158," + "@URA0168," + "@URA0174,"
				+ "@URA0176," + "@URA0177," + "@URA0183," + "@URA0184," + "@URA0185," + "@URA0188," + "@URA0191,"
				+ "@URA0192," + "@URA0194," + "@URA0195," + "@URA0196," + "@URA0199," + "@URA0200," + "@URA0206,"
				+ "@URA0207," + "@URA0208," + "@URA0210," + "@URA0214," + "@URA0215," + "@URA0216," + "@URA0217,"
				+ "@URA0219," + "@URA0221," + "@URA0222," + "@URA0225," + "@URA0227," + "@URA0230," + "@URA0231,"
				+ "@URA0232," + "@URA0233," + "@URA0237," + "@URA0238," + "@URA0239," + "@URA0243," + "@URA0245,"
				+ "@URA0247," + "@URA0248," + "@URA0250," + "@URA0251," + "@URA0252," + "@URA0253," + "@URA0254,"
				+ "@URA0256," + "@URA0266," + "@URA0267," + "@URA0268," + "@URA0280," + "@URA0291," + "@URA0296,"
				+ "@URA0297," + "@URA0298," + "@URA0299," + "@URA0300," + "@URA0301," + "@URA0302," + "@URA0303,"
				+ "@URA0306," + "@URA0318," + "@URA0319," + "@URA0320," + "@URA0321," + "@URA0322," + "@URA0323,"
				+ "@URA0325," + "@URA0326," + "@URA0327," + "@URA0328," + "@URA0329," + "@URA0330," + "@URA0332,"
				+ "@URA0333," + "@URA0336," + "@URA0337," + "@URA0339," + "@URA0340," + "@URA0341," + "@URA0342,"
				+ "@URA0343," + "@URA0344," + "@URA0347," + "@URA0348," + "@URA0349," + "@URA0351," + "@URA0352,"
				+ "@URA0353," + "@URA0354," + "@URA0356," }
		)

public class SuiteAux2 {
}