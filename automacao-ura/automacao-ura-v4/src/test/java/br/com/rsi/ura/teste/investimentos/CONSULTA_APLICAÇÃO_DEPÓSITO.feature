@CONSULTA_APLICAÇÃO_DEPÓSITO @INVESTIMENTOS
Feature: Investimentos -- CONSULTA_APLICAÇÃO_DEPÓSITO

Background: 
	Given inicializo o 'Relatorio de Dados'
	When clico o numero do telefone da 'Ura'
	
@URA1142
Scenario: URA1142-Investimentos_Poupanca_Consultamenuaplicacaoedepositoprogramado_clientecorrentistaecomumacontapoupanca_Vangogh_Modelonovosenha6digitos

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "4"
	And valido a existência da opção de Renegociação no menu Investimentos
	And clico na opcao do menu transacional: "3"
	And clico na opcao do menu transacional: "2"
	Then um dos textos "deseja fazer uma aplicação na conta poupança;aplicação na conta poupança;aplicação" for validado, com o tempo de execução "20000" em milissegundos	
	
@URA1184
Scenario: URA1184-Investimentos_Poupanca_Consultamenuaplicacaoedepositoprogramado_clientecorrentistaecomumacontapoupanca_Select_Modelonovosenha6digitos

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "4"
	And valido a existência da opção de Renegociação no menu Investimentos
	And clico na opcao do menu transacional: "3"
	And clico na opcao do menu transacional: "2"
	Then um dos textos "deseja fazer uma aplicação na conta poupança;aplicação na conta poupança;aplicação" for validado, com o tempo de execução "20000" em milissegundos 

@URA1225
Scenario: URA1225-Investimentos_Poupanca_Consultamenuaplicacaoedepositoprogramado_clientecorrentistaecomumacontapoupanca_Private_Modelonovosenha6digitos

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "4"
	And valido a existência da opção de Renegociação no menu Investimentos
	And clico na opcao do menu transacional: "3"
	And clico na opcao do menu transacional: "2"
	Then um dos textos "deseja fazer uma aplicação na conta poupança;aplicação na conta poupança;aplicação" for validado, com o tempo de execução "20000" em milissegundos