@POUPANÇA_CONSULTA_SALDO_SEM_POUPANÇA @INVESTIMENTOS
Feature: Investimentos -- POUPANÇA_CONSULTA_SALDO_SEM_POUPANÇA 

Background: 
	Given inicializo o 'Relatorio de Dados'
	When clico o numero do telefone da 'Ura'
	
@URA1130
Scenario: URA1130-Investimentos_Poupança_ConsultadeSaldo_clientesemcontapoupança_Vangogh_Modelonovosenha6dígitos

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "4"
	And valido a existência da opção de Renegociação no menu Investimentos
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "2"
	Then um dos textos "é o melhor investimento;a conta poupança santander;poupança você pode aplicar" for validado, com o tempo de execução "30000" em milissegundos
	
@URA1172
Scenario: URA1172-Investimentos_Poupança_ConsultadeSaldo_clientesemcontapoupança_Select_Modelonovosenha6dígitos

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "4"
	And valido a existência da opção de Renegociação no menu Investimentos
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "2"
	Then um dos textos "é o melhor investimento;a conta poupança santander;poupança você pode aplicar" for validado, com o tempo de execução "30000" em milissegundos
	
@URA1213
Scenario: URA1213-Investimentos_Poupança_ConsultadeSaldo_clientesemcontapoupança_Private_Modelonovosenha6dígitos

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "4"
	And valido a existência da opção de Renegociação no menu Investimentos
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "2"
	Then um dos textos "é o melhor investimento;a conta poupança santander;poupança você pode aplicar" for validado, com o tempo de execução "30000" em milissegundos