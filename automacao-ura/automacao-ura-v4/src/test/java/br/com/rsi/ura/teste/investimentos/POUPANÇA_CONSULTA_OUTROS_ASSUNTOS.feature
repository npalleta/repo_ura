@POUPANÇA_CONSULTA_OUTROS_ASSUNTOS @INVESTIMENTOS
Feature: Investimentos -- POUPANÇA_CONSULTA_OUTROS_ASSUNTOS 

Background: 
	Given inicializo o 'Relatorio de Dados'
	When clico o numero do telefone da 'Ura'
	
@URA1149
Scenario: URA1149-Investimentos_Poupança_Consultamenuoutrosassuntos_comumacontapoupança_Vangogh_Modelonovosenha6dígitos

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "4"
	And valido a existência da opção de Renegociação no menu Investimentos
	And clico na opcao do menu transacional: "3"
	And clico na opcao do menu transacional: "9"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	And digito o RAMAL transacional
	Then um dos textos "transferir;ramal" for validado, com o tempo de execução "30000" em milissegundos
	
@URA1191
Scenario: URA1191-Investimentos_Poupança_Consultamenuoutrosassuntos_comumacontapoupança_Select_Modelonovosenha6dígitos

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "4"
	And valido a existência da opção de Renegociação no menu Investimentos
	And clico na opcao do menu transacional: "3"
	And clico na opcao do menu transacional: "9"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	And digito o RAMAL transacional
	Then um dos textos "transferir;ramal" for validado, com o tempo de execução "30000" em milissegundos 
	
@URA1232
Scenario: URA1232-Investimentos_Poupança_Consultamenuoutrosassuntos_clientecomumacontapoupança_Private_Modelonovosenha6dígitos

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "4"
	And valido a existência da opção de Renegociação no menu Investimentos
	And clico na opcao do menu transacional: "3"
	And clico na opcao do menu transacional: "9"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	And digito o RAMAL transacional
	Then um dos textos "transferir;ramal" for validado, com o tempo de execução "30000" em milissegundos 