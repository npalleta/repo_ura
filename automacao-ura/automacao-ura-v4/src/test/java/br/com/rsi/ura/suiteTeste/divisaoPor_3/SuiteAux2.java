package br.com.rsi.ura.suiteTeste.divisaoPor_3;

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
			
		 //AUX2 -- 262 Scenarios
		 tags = { "@URA0550," + "@URA0551," + "@URA0553," + "@URA0557," + "@URA0559," + "@URA0563," + "@URA0565,"
				+ "@URA0566," + "@URA0567," + "@URA0572," + "@URA0573," + "@URA0574," + "@URA0575," + "@URA0576,"
				+ "@URA0577," + "@URA0580," + "@URA0581," + "@URA0582," + "@URA0583," + "@URA0584," + "@URA0585,"
				+ "@URA0586," + "@URA0587," + "@URA0588," + "@URA0589," + "@URA0590," + "@URA0591," + "@URA0592,"
				+ "@URA0593," + "@URA0594," + "@URA0595," + "@URA0596," + "@URA0597," + "@URA0599," + "@URA0601,"
				+ "@URA0602," + "@URA0605," + "@URA0606," + "@URA0607," + "@URA0608," + "@URA0609," + "@URA0610,"
				+ "@URA0611," + "@URA0612," + "@URA0613," + "@URA0614," + "@URA0615," + "@URA0616," + "@URA0621,"
				+ "@URA0623," + "@URA0627," + "@URA0628," + "@URA0629," + "@URA0630," + "@URA0635," + "@URA0636,"
				+ "@URA0637," + "@URA0638," + "@URA0639," + "@URA0642," + "@URA0646," + "@URA0648," + "@URA0649,"
				+ "@URA0650," + "@URA0651," + "@URA0652," + "@URA0653," + "@URA0654," + "@URA0655," + "@URA0656,"
				+ "@URA0657," + "@URA0658," + "@URA0659," + "@URA0661," + "@URA0663," + "@URA0664," + "@URA0667,"
				+ "@URA0668," + "@URA0669," + "@URA0670," + "@URA0671," + "@URA0672," + "@URA0673," + "@URA0674,"
				+ "@URA0675," + "@URA0676," + "@URA0678," + "@URA0682," + "@URA0684," + "@URA0688," + "@URA0689,"
				+ "@URA0690," + "@URA0691," + "@URA0692," + "@URA0697," + "@URA0698," + "@URA0699," + "@URA0700,"
				+ "@URA0701," + "@URA0702," + "@URA0705," + "@URA0709," + "@URA0711," + "@URA0712," + "@URA0713,"
				+ "@URA0714," + "@URA0715," + "@URA0716," + "@URA0717," + "@URA0718," + "@URA0719," + "@URA0720,"
				+ "@URA0721," + "@URA0722," + "@URA0724," + "@URA0727," + "@URA0728," + "@URA0733," + "@URA0739,"
				+ "@URA0740," + "@URA0745," + "@URA0746," + "@URA0754," + "@URA0761," + "@URA0764," + "@URA0766,"
				+ "@URA0773," + "@URA0774," + "@URA0775," + "@URA0776," + "@URA0777," + "@URA0778," + "@URA0781,"
				+ "@URA0782," + "@URA0783," + "@URA0786," + "@URA0787," + "@URA0789," + "@URA0790," + "@URA0792,"
				+ "@URA0793," + "@URA0794," + "@URA0795," + "@URA0804," + "@URA0805," + "@URA0806," + "@URA0807,"
				+ "@URA0808," + "@URA0809," + "@URA0810," + "@URA0811," + "@URA0812," + "@URA0813," + "@URA0814,"
				+ "@URA0815," + "@URA0817," + "@URA0819," + "@URA0820," + "@URA0821," + "@URA0822," + "@URA0823,"
				+ "@URA0824," + "@URA0825," + "@URA0826," + "@URA0827," + "@URA0828," + "@URA0829," + "@URA0830,"
				+ "@URA0831," + "@URA0832," + "@URA0833," + "@URA0835," + "@URA0836," + "@URA0837," + "@URA0839,"
				+ "@URA0840," + "@URA0841," + "@URA0842," + "@URA0843," + "@URA0844," + "@URA0845," + "@URA0846,"
				+ "@URA0847," + "@URA0848," + "@URA0849," + "@URA0850," + "@URA0851," + "@URA0852," + "@URA0853,"
				+ "@URA0854," + "@URA0855," + "@URA0857," + "@URA0859," + "@URA0860," + "@URA0861," + "@URA0863,"
				+ "@URA0864," + "@URA0865," + "@URA0867," + "@URA0868," + "@URA0869," + "@URA0871," + "@URA0873,"
				+ "@URA0874," + "@URA0875," + "@URA0876," + "@URA0877," + "@URA0878," + "@URA0879," + "@URA0880,"
				+ "@URA0881," + "@URA0882," + "@URA0883," + "@URA0884," + "@URA0885," + "@URA0886," + "@URA0887,"
				+ "@URA0889," + "@URA0890," + "@URA0891," + "@URA0892," + "@URA0893," + "@URA0895," + "@URA0896,"
				+ "@URA0897," + "@URA0899," + "@URA0900," + "@URA0901," + "@URA0903," + "@URA0904," + "@URA0905,"
				+ "@URA0906," + "@URA0907," + "@URA0909," + "@URA0910," + "@URA0911," + "@URA0912," + "@URA0913,"
				+ "@URA0914," + "@URA0915," + "@URA0916," + "@URA0918," + "@URA0919," + "@URA0921," + "@URA0922,"
				+ "@URA0923," + "@URA0924," + "@URA0925," + "@URA0926," + "@URA0927," + "@URA0928," + "@URA0929,"
				+ "@URA0930," + "@URA0931," + "@URA0932," + "@URA0933," + "@URA0934," + "@URA0935," + "@URA0936,"
				+ "@URA0937," + "@URA0938," + "@URA0939," }
		)

public class SuiteAux2 {
}