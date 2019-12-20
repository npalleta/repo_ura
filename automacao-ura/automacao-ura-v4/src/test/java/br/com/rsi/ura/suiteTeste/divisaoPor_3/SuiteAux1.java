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
			
		 //AUX1 -- 262 Scenarios
		 tags = { "@URA0940," + "@URA0941," + "@URA0942," + "@URA0943," + "@URA0944," + "@URA0945," + "@URA0946,"
				+ "@URA0948," + "@URA0951," + "@URA0953," + "@URA0954," + "@URA0956," + "@URA0957," + "@URA0959,"
				+ "@URA0960," + "@URA0962," + "@URA0963," + "@URA0965," + "@URA0967," + "@URA0968," + "@URA0969,"
				+ "@URA0970," + "@URA0971," + "@URA0972," + "@URA0973," + "@URA0974," + "@URA0975," + "@URA0976,"
				+ "@URA0977," + "@URA0978," + "@URA0979," + "@URA0980," + "@URA0981," + "@URA0982," + "@URA0983,"
				+ "@URA0984," + "@URA0985," + "@URA0986," + "@URA0987," + "@URA0988," + "@URA0989," + "@URA0990,"
				+ "@URA0991," + "@URA0992," + "@URA0993," + "@URA0994," + "@URA0995," + "@URA0996," + "@URA0997,"
				+ "@URA0998," + "@URA0999," + "@URA1000," + "@URA1003," + "@URA1004," + "@URA1005," + "@URA1006,"
				+ "@URA1007," + "@URA1008," + "@URA1010," + "@URA1011," + "@URA1013," + "@URA1014," + "@URA1016,"
				+ "@URA1017," + "@URA1018," + "@URA1019," + "@URA1020," + "@URA1022," + "@URA1023," + "@URA1025,"
				+ "@URA1026," + "@URA1028," + "@URA1029," + "@URA1031," + "@URA1032," + "@URA1034," + "@URA1035,"
				+ "@URA1036," + "@URA1037," + "@URA1038," + "@URA1039," + "@URA1040," + "@URA1054," + "@URA1056,"
				+ "@URA1061," + "@URA1062," + "@URA1064," + "@URA1065," + "@URA1066," + "@URA1067," + "@URA1068,"
				+ "@URA1071," + "@URA1072," + "@URA1074," + "@URA1076," + "@URA1077," + "@URA1078," + "@URA1079,"
				+ "@URA1081," + "@URA1082," + "@URA1084," + "@URA1085," + "@URA1086," + "@URA1088," + "@URA1091,"
				+ "@URA1092," + "@URA1095," + "@URA1096," + "@URA1097," + "@URA1098," + "@URA1100," + "@URA1101,"
				+ "@URA1102," + "@URA1103," + "@URA1104," + "@URA1105," + "@URA1106," + "@URA1108," + "@URA1109,"
				+ "@URA1110," + "@URA1111," + "@URA1112," + "@URA1113," + "@URA1114," + "@URA1115," + "@URA1116,"
				+ "@URA1117," + "@URA1118," + "@URA1119," + "@URA1120," + "@URA1121," + "@URA1122," + "@URA1123,"
				+ "@URA1124," + "@URA1125," + "@URA1126," + "@URA1127," + "@URA1129," + "@URA1130," + "@URA1131,"
				+ "@URA1132," + "@URA1133," + "@URA1134," + "@URA1136," + "@URA1138," + "@URA1139," + "@URA1140,"
				+ "@URA1142," + "@URA1143," + "@URA1144," + "@URA1145," + "@URA1146," + "@URA1147," + "@URA1148,"
				+ "@URA1149," + "@URA1157," + "@URA1158," + "@URA1163," + "@URA1164," + "@URA1165," + "@URA1166,"
				+ "@URA1168," + "@URA1171," + "@URA1172," + "@URA1173," + "@URA1174," + "@URA1175," + "@URA1176,"
				+ "@URA1178," + "@URA1180," + "@URA1181," + "@URA1182," + "@URA1184," + "@URA1185," + "@URA1186,"
				+ "@URA1187," + "@URA1188," + "@URA1189," + "@URA1190," + "@URA1191," + "@URA1192," + "@URA1193,"
				+ "@URA1195," + "@URA1196," + "@URA1197," + "@URA1198," + "@URA1199," + "@URA1200," + "@URA1202,"
				+ "@URA1203," + "@URA1204," + "@URA1205," + "@URA1206," + "@URA1207," + "@URA1208," + "@URA1210,"
				+ "@URA1213," + "@URA1214," + "@URA1215," + "@URA1216," + "@URA1219," + "@URA1221," + "@URA1222,"
				+ "@URA1223," + "@URA1225," + "@URA1226," + "@URA1227," + "@URA1228," + "@URA1229," + "@URA1230,"
				+ "@URA1231," + "@URA1232," + "@URA1240," + "@URA1241," + "@URA1246," + "@URA1247," + "@URA1248,"
				+ "@URA1249," + "@URA1251," + "@URA1255," + "@URA1256," + "@URA1257," + "@URA1258," + "@URA1259,"
				+ "@URA1260," + "@URA1261," + "@URA1262," + "@URA1263," + "@URA1264," + "@URA1265," + "@URA1266,"
				+ "@URA1267," + "@URA1268," + "@URA1269," + "@URA1270," + "@URA1271," + "@URA1272," + "@URA1273,"
				+ "@URA1274," + "@URA1275," + "@URA1276," + "@URA1277," + "@URA1278," + "@URA1279," + "@URA1280,"
				+ "@URA1281," + "@URA1282," + "@URA1283," + "@URA1345," + "@URA1351," + "@URA1369," + "@URA1376,"
				+ "@URA1386," + "@URA1387," + "@URA1388," + "@URA1389," + "@URA1390," + "@URA1391," + "@URA1392,"
				+ "@URA1393," + "@URA1394," + "@URA1395," }
		)

public class SuiteAux1 {
}