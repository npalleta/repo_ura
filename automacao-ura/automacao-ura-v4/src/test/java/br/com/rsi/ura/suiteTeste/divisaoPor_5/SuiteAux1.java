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
			
		 //AUX1 -- 158 Scenarios
		 tags = { "@URA1091," + "@URA1092," + "@URA1093," + "@URA1094," + "@URA1095," + "@URA1096," + "@URA1097,"
				+ "@URA1098," + "@URA1099," + "@URA1100," + "@URA1101," + "@URA1102," + "@URA1103," + "@URA1104,"
				+ "@URA1105," + "@URA1106," + "@URA1107," + "@URA1108," + "@URA1109," + "@URA1110," + "@URA1111,"
				+ "@URA1112," + "@URA1113," + "@URA1114," + "@URA1115," + "@URA1116," + "@URA1117," + "@URA1118,"
				+ "@URA1119," + "@URA1120," + "@URA1121," + "@URA1122," + "@URA1123," + "@URA1124," + "@URA1125,"
				+ "@URA1126," + "@URA1127," + "@URA1128," + "@URA1129," + "@URA1130," + "@URA1131," + "@URA1132,"
				+ "@URA1133," + "@URA1134," + "@URA1135," + "@URA1136," + "@URA1137," + "@URA1138," + "@URA1139,"
				+ "@URA1140," + "@URA1141," + "@URA1142," + "@URA1143," + "@URA1144," + "@URA1145," + "@URA1146,"
				+ "@URA1147," + "@URA1148," + "@URA1149," + "@URA1150," + "@URA1151," + "@URA1152," + "@URA1153,"
				+ "@URA1154," + "@URA1155," + "@URA1156," + "@URA1157," + "@URA1158," + "@URA1159," + "@URA1160,"
				+ "@URA1161," + "@URA1162," + "@URA1163," + "@URA1164," + "@URA1165," + "@URA1166," + "@URA1167,"
				+ "@URA1168," + "@URA1169," + "@URA1170," + "@URA1171," + "@URA1172," + "@URA1173," + "@URA1174,"
				+ "@URA1175," + "@URA1176," + "@URA1177," + "@URA1178," + "@URA1179," + "@URA1180," + "@URA1181,"
				+ "@URA1182," + "@URA1183," + "@URA1184," + "@URA1185," + "@URA1186," + "@URA1187," + "@URA1188,"
				+ "@URA1189," + "@URA1190," + "@URA1191," + "@URA1192," + "@URA1193," + "@URA1194," + "@URA1195,"
				+ "@URA1196," + "@URA1197," + "@URA1198," + "@URA1199," + "@URA1200," + "@URA1201," + "@URA1202,"
				+ "@URA1203," + "@URA1204," + "@URA1205," + "@URA1206," + "@URA1207," + "@URA1208," + "@URA1209,"
				+ "@URA1210," + "@URA1211," + "@URA1212," + "@URA1213," + "@URA1214," + "@URA1215," + "@URA1216,"
				+ "@URA1217," + "@URA1218," + "@URA1219," + "@URA1220," + "@URA1221," + "@URA1222," + "@URA1223,"
				+ "@URA1224," + "@URA1225," + "@URA1226," + "@URA1227," + "@URA1228," + "@URA1229," + "@URA1230,"
				+ "@URA1231," + "@URA1232," + "@URA1233," + "@URA1234," + "@URA1235," + "@URA1236," + "@URA1237,"
				+ "@URA1238," + "@URA1239," + "@URA1240," + "@URA1241," + "@URA1242," + "@URA1243," + "@URA1244,"
				+ "@URA1245," + "@URA1246," + "@URA1247," + "@URA1248," }
		)

public class SuiteAux1 {
}