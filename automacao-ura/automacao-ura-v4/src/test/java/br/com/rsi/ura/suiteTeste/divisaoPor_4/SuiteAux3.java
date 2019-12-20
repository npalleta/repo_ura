package br.com.rsi.ura.suiteTeste.divisaoPor_4;

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
			
		 //AUX3 -- 196 Scenarios
		 tags = { "@URA0459," + "@URA0460," + "@URA0461," + "@URA0462," + "@URA0463," + "@URA0464," + "@URA0465,"
				+ "@URA0466," + "@URA0467," + "@URA0468," + "@URA0469," + "@URA0470," + "@URA0471," + "@URA0472,"
				+ "@URA0473," + "@URA0474," + "@URA0475," + "@URA0476," + "@URA0477," + "@URA0478," + "@URA0479,"
				+ "@URA0480," + "@URA0481," + "@URA0482," + "@URA0484," + "@URA0485," + "@URA0486," + "@URA0489,"
				+ "@URA0490," + "@URA0491," + "@URA0492," + "@URA0493," + "@URA0494," + "@URA0495," + "@URA0496,"
				+ "@URA0497," + "@URA0498," + "@URA0499," + "@URA0500," + "@URA0501," + "@URA0502," + "@URA0503,"
				+ "@URA0504," + "@URA0505," + "@URA0506," + "@URA0507," + "@URA0508," + "@URA0509," + "@URA0510,"
				+ "@URA0511," + "@URA0512," + "@URA0516," + "@URA0526," + "@URA0527," + "@URA0528," + "@URA0533,"
				+ "@URA0534," + "@URA0541," + "@URA0542," + "@URA0543," + "@URA0544," + "@URA0545," + "@URA0546,"
				+ "@URA0547," + "@URA0548," + "@URA0549," + "@URA0550," + "@URA0551," + "@URA0553," + "@URA0557,"
				+ "@URA0559," + "@URA0563," + "@URA0565," + "@URA0566," + "@URA0567," + "@URA0572," + "@URA0573,"
				+ "@URA0574," + "@URA0575," + "@URA0576," + "@URA0577," + "@URA0580," + "@URA0581," + "@URA0582,"
				+ "@URA0583," + "@URA0584," + "@URA0585," + "@URA0586," + "@URA0587," + "@URA0588," + "@URA0589,"
				+ "@URA0590," + "@URA0591," + "@URA0592," + "@URA0593," + "@URA0594," + "@URA0595," + "@URA0596,"
				+ "@URA0597," + "@URA0599," + "@URA0601," + "@URA0602," + "@URA0605," + "@URA0606," + "@URA0607,"
				+ "@URA0608," + "@URA0609," + "@URA0610," + "@URA0611," + "@URA0612," + "@URA0613," + "@URA0614,"
				+ "@URA0615," + "@URA0616," + "@URA0621," + "@URA0623," + "@URA0627," + "@URA0628," + "@URA0629,"
				+ "@URA0630," + "@URA0635," + "@URA0636," + "@URA0637," + "@URA0638," + "@URA0639," + "@URA0642,"
				+ "@URA0646," + "@URA0648," + "@URA0649," + "@URA0650," + "@URA0651," + "@URA0652," + "@URA0653,"
				+ "@URA0654," + "@URA0655," + "@URA0656," + "@URA0657," + "@URA0658," + "@URA0659," + "@URA0661,"
				+ "@URA0663," + "@URA0664," + "@URA0667," + "@URA0668," + "@URA0669," + "@URA0670," + "@URA0671,"
				+ "@URA0672," + "@URA0673," + "@URA0674," + "@URA0675," + "@URA0676," + "@URA0678," + "@URA0682,"
				+ "@URA0684," + "@URA0688," + "@URA0689," + "@URA0690," + "@URA0691," + "@URA0692," + "@URA0697,"
				+ "@URA0698," + "@URA0699," + "@URA0700," + "@URA0701," + "@URA0702," + "@URA0705," + "@URA0709,"
				+ "@URA0711," + "@URA0712," + "@URA0713," + "@URA0714," + "@URA0715," + "@URA0716," + "@URA0717,"
				+ "@URA0718," + "@URA0719," + "@URA0720," + "@URA0721," + "@URA0722," + "@URA0724," + "@URA0727,"
				+ "@URA0728," + "@URA0733," + "@URA0739," + "@URA0740," + "@URA0745," + "@URA0746," + "@URA0754,"
				+ "@URA0761," + "@URA0764," + "@URA0766," + "@URA0773," + "@URA0774," + "@URA0775," + "@URA0776," }
		)

public class SuiteAux3 {
}