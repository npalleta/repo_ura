@CONSULTA_MENU_APÓS_TRANSAÇÃO @INVESTIMENTOS
Feature: Investimentos -- CONSULTA_MENU_APÓS_TRANSAÇÃO

Background: 
	Given inicializo o 'Relatorio de Dados'
	When clico o numero do telefone da 'Ura'
	
@URA1166
Scenario: URA1166-Investimentos_Poupanca_Consultamenupostransacao_Vangogh_Modelonovosenha6digitos

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "4"
	And valido a existência da opção de Renegociação no menu Investimentos
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' poupança ' verificando se tem mais de uma conta poupanca, com o tempo total de execução de "20000" milissegundos
	And clico na opcao do menu transacional: "5"
	Then um dos textos "saldo atual da sua conta poupança na regra nova;poupança na regra nova;regra nova" for validado, com o tempo de execução "25000" em milissegundos
	
@URA1208
Scenario: URA1208-Investimentos_Poupanca_Consultamenupostransacao_Select_Modelonovosenha6digitos

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "4"
	And valido a existência da opção de Renegociação no menu Investimentos
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' poupança ' verificando se tem mais de uma conta poupanca, com o tempo total de execução de "20000" milissegundos
	And clico na opcao do menu transacional: "5"
	Then um dos textos "saldo atual da sua conta poupança na regra nova;poupança na regra nova;regra nova" for validado, com o tempo de execução "25000" em milissegundos

@URA1249
Scenario: URA1249-Investimentos_Poupanca_Consultamenupostransacao_Private_Modelonovosenha6digitos

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "4"
	And valido a existência da opção de Renegociação no menu Investimentos
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' poupança ' verificando se tem mais de uma conta poupanca, com o tempo total de execução de "20000" milissegundos
	And clico na opcao do menu transacional: "5"
	Then um dos textos "saldo atual da sua conta poupança na regra nova;poupança na regra nova;regra nova" for validado, com o tempo de execução "25000" em milissegundos