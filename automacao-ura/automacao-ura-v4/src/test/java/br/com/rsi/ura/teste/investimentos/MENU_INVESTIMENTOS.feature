@MENU_INVESTIMENTOS @INVESTIMENTOS
Feature: Investimentos -- MENU_INVESTIMENTOS

Background: 
	Given inicializo o 'Relatorio de Dados'
	When clico o numero do telefone da 'Ura'
	
@URA1105
Scenario: URA1105-Investimentos_Menudeinvestimentos_Consultadeinvestimento_Classico_Modelonovosenha6digitos

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "4"
	And valido a existência da opção de Renegociação no menu Investimentos
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	Then um dos textos "saldo dos seus investimentos;assessor de investimentos;para ouvir o saldo" for validado, com o tempo de execução "20000" em milissegundos
	
@URA1110
Scenario: URA1110-Investimentos_Menudeinvestimentos_Consultadeinvestimento_Exclusivo_Modelonovosenha6dígitos

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "4"
	And valido a existência da opção de Renegociação no menu Investimentos
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	Then um dos textos "saldo dos seus investimentos;assessor de investimentos;para ouvir o saldo" for validado, com o tempo de execução "20000" em milissegundos
	
@URA1112
Scenario: URA1112-Investimentos_Menudeinvestimentos_Consultadeinvestimento_Private_Modelonovosenha6digitos

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "4"
	And valido a existência da opção de Renegociação no menu Investimentos
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	Then um dos textos "saldo dos seus investimentos;assessor de investimentos;para ouvir o saldo" for validado, com o tempo de execução "20000" em milissegundos

@URA1114
Scenario: URA1114-Investimentos_Menudeinvestimentos_Consultadeinvestimento_Select_Modeloantigosenha4dígitos

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "4"
	And valido a existência da opção de Renegociação no menu Investimentos
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	Then um dos textos "saldo dos seus investimentos;assessor de investimentos;para ouvir o saldo" for validado, com o tempo de execução "20000" em milissegundos

@URA1171
Scenario: URA1171-Investimentos_Menudeinvestimentos_Consultamenuoutrasopcoesoutrosassuntos_clientecommaisdeumaconta_Select_Modelonovosenha6digitos

	And estou na opcao do menu do ura com o TEXTO e ID " você está", com o tempo total de execução de "25000" milissegundos
	And clico no botao 'teclado' e clico nos numeros do 'CPF'
	And estou na opcao do menu ' desbloquear' para cliente que não solicita senha no topo, com o tempo total de execução de "25000" milissegundos
	#Pulando o gerente...
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "4"
	And valido a existência da opção de Renegociação no menu Investimentos
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	And clico na 'conta' e 'agencia' transacional
	And estou na opcao do menu do ura com o texto ' desbloquear', com o tempo total de execução de "20000" milissegundos
	And clico nos numeros da senha transacional
	Then um dos textos "saldo dos seus investimentos;assessor de investimentos;para ouvir o saldo" for validado, com o tempo de execução "20000" em milissegundos