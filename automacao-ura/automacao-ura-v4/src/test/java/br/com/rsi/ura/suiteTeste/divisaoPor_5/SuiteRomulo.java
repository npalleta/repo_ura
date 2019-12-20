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
			
		 //ROMULO -- 157 Scenarios
		 tags = { "@URA0880," + "@URA0881," + "@URA0882," + "@URA0883," + "@URA0884," + "@URA0885," + "@URA0886,"
				+ "@URA0887," + "@URA0889," + "@URA0890," + "@URA0891," + "@URA0892," + "@URA0893," + "@URA0895,"
				+ "@URA0896," + "@URA0897," + "@URA0899," + "@URA0900," + "@URA0901," + "@URA0903," + "@URA0904,"
				+ "@URA0905," + "@URA0906," + "@URA0907," + "@URA0909," + "@URA0910," + "@URA0911," + "@URA0912,"
				+ "@URA0913," + "@URA0914," + "@URA0915," + "@URA0916," + "@URA0918," + "@URA0919," + "@URA0921,"
				+ "@URA0922," + "@URA0923," + "@URA0924," + "@URA0925," + "@URA0926," + "@URA0927," + "@URA0928,"
				+ "@URA0929," + "@URA0930," + "@URA0931," + "@URA0932," + "@URA0933," + "@URA0934," + "@URA0935,"
				+ "@URA0936," + "@URA0937," + "@URA0938," + "@URA0939," + "@URA0940," + "@URA0941," + "@URA0942,"
				+ "@URA0943," + "@URA0944," + "@URA0945," + "@URA0946," + "@URA0948," + "@URA0951," + "@URA0953,"
				+ "@URA0954," + "@URA0956," + "@URA0957," + "@URA0959," + "@URA0960," + "@URA0962," + "@URA0963,"
				+ "@URA0965," + "@URA0967," + "@URA0968," + "@URA0969," + "@URA0970," + "@URA0971," + "@URA0972,"
				+ "@URA0973," + "@URA0974," + "@URA0975," + "@URA0976," + "@URA0977," + "@URA0978," + "@URA0979,"
				+ "@URA0980," + "@URA0981," + "@URA0982," + "@URA0983," + "@URA0984," + "@URA0985," + "@URA0986,"
				+ "@URA0987," + "@URA0988," + "@URA0989," + "@URA0990," + "@URA0991," + "@URA0992," + "@URA0993,"
				+ "@URA0994," + "@URA0995," + "@URA0996," + "@URA0997," + "@URA0998," + "@URA0999," + "@URA1000,"
				+ "@URA1003," + "@URA1004," + "@URA1005," + "@URA1006," + "@URA1007," + "@URA1008," + "@URA1010,"
				+ "@URA1011," + "@URA1013," + "@URA1014," + "@URA1016," + "@URA1017," + "@URA1018," + "@URA1019,"
				+ "@URA1020," + "@URA1022," + "@URA1023," + "@URA1025," + "@URA1026," + "@URA1028," + "@URA1029,"
				+ "@URA1031," + "@URA1032," + "@URA1034," + "@URA1035," + "@URA1036," + "@URA1037," + "@URA1038,"
				+ "@URA1039," + "@URA1040," + "@URA1054," + "@URA1056," + "@URA1061," + "@URA1062," + "@URA1064,"
				+ "@URA1065," + "@URA1066," + "@URA1067," + "@URA1068," + "@URA1071," + "@URA1072," + "@URA1074,"
				+ "@URA1076," + "@URA1077," + "@URA1078," + "@URA1079," + "@URA1081," + "@URA1082," + "@URA1084,"
				+ "@URA1085," + "@URA1086," + "@URA1088," }
		)

public class SuiteRomulo {
}