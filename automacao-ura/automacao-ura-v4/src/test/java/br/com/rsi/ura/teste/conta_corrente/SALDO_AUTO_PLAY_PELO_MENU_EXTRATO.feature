@SALDO_AUTO_PLAY_PELO_MENU_EXTRATO @CONTA_CORRENTE
Feature: Conta Corrente -- SALDO_AUTO_PLAY_PELO_MENU_EXTRATO

Background: 
	Given inicializo o 'Relatorio de Dados'
	When clico o numero do telefone da 'Ura'
	
@URA0563
Scenario: URA0563-Contacorrente_Saldo_ConsultaSaldo_Consultarsaldoopcaoouvirnovamentepelomenuposextrato_Modelonovosenha6digitos_Vangogh

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "1"
	And estou esperando por "30000" milissegundos
	And clico na opcao do menu transacional: "5"
	Then um dos textos "saldo total de corrente;saldo;conta corrente;sua conta corrente;conta corrente é de" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0627
Scenario: URA0627-Contacorrente_Saldo_ConsultaSaldo_Consultarsaldoopcaoouvirnovamentepelomenuposextrato_Modelonovosenha6digitos_Select

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "1"
	And estou esperando por "30000" milissegundos
	And clico na opcao do menu transacional: "5"
	Then um dos textos "saldo total de corrente;saldo;conta corrente;sua conta corrente;conta corrente é de" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0688
Scenario: URA0688-Contacorrente_Saldo_ConsultaSaldo_Consultarsaldoopcaoouvirnovamentepelomenuposextrato_Modelonovosenha6digitos_Private

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "1"
	And estou esperando por "30000" milissegundos
	And clico na opcao do menu transacional: "5"
	Then um dos textos "saldo total de corrente;saldo;conta corrente;sua conta corrente;conta corrente é de" for validado, com o tempo de execução "30000" em milissegundos