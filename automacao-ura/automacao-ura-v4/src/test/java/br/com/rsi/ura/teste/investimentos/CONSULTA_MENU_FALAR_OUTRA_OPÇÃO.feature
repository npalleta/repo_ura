@CONSULTA_MENU_FALAR_OUTRA_OPÇÃO @INVESTIMENTOS
Feature: Investimentos -- CONSULTA_MENU_FALAR_OUTRA_OPÇÃO

Background: 
	Given inicializo o 'Relatorio de Dados'
	When clico o numero do telefone da 'Ura'

@URA1165
Scenario: URA1165-Investimentos_Poupança_Consultamenufalardeoutraconta_clientecommultiplascontascorrenteepoupança_Vangogh_Modelonovosenha6dígitos

	And estou na opcao do menu do ura com o TEXTO e ID " você está", com o tempo total de execução de "25000" milissegundos
	And clico no botao 'teclado' e clico nos numeros do 'CPF'
	And estou na opcao do menu ' desbloquear' para cliente que não solicita senha no topo, com o tempo total de execução de "15000" milissegundos
	And clico na opcao do menu transacional: "4"
	And valido a existência da opção de Renegociação no menu Investimentos
	And clico na opcao do menu transacional: "3"
	And clico na 'conta poupança' e 'agencia poupança' transacional
	And estou na opcao do menu do ura com o texto ' desbloquear', com o tempo total de execução de "25000" milissegundos
	And clico nos numeros da senha transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "5"
	Then um dos textos "agência;conta;por favor;digite a agência;que deseja falar" for validado, com o tempo de execução "20000" em milissegundos

@URA1207
Scenario: URA1207-Investimentos_Poupança_Consultamenufalardeoutraconta_clientecommultiplascontascorrenteepoupança_Select_Modelonovosenha6dígitos

	And estou na opcao do menu do ura com o TEXTO e ID " você está", com o tempo total de execução de "25000" milissegundos
	And clico no botao 'teclado' e clico nos numeros do 'CPF'
	And estou na opcao do menu ' desbloquear' para cliente que não solicita senha no topo, com o tempo total de execução de "10000" milissegundos
	#Pulando o gerente...
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "4"
	And valido a existência da opção de Renegociação no menu Investimentos
	And clico na opcao do menu transacional: "3"
	And clico na 'conta poupança' e 'agencia poupança' transacional
	And estou na opcao do menu do ura com o texto ' desbloquear', com o tempo total de execução de "25000" milissegundos
	And clico nos numeros da senha transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "5"
	Then um dos textos "agência;conta;por favor;digite a agência;que deseja falar" for validado, com o tempo de execução "20000" em milissegundos

@URA1248
Scenario: URA1248-Investimentos_Poupança_Consultamenufalardeoutraconta_clientecommultiplascontascorrenteepoupança_Private_Modelonovosenha6dígitos

	And estou na opcao do menu do ura com o TEXTO e ID " você está", com o tempo total de execução de "25000" milissegundos
	And clico no botao 'teclado' e clico nos numeros do 'CPF'
	And estou na opcao do menu ' desbloquear' para cliente que não solicita senha no topo, com o tempo total de execução de "10000" milissegundos
	#Pulando gerente...
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "4"
	And valido a existência da opção de Renegociação no menu Investimentos
	And clico na opcao do menu transacional: "3"
	And clico na 'conta poupança' e 'agencia poupança' transacional
	And estou na opcao do menu do ura com o texto ' desbloquear', com o tempo total de execução de "25000" milissegundos
	And clico nos numeros da senha transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "5"
	Then um dos textos "agência;conta;por favor;digite a agência;que deseja falar" for validado, com o tempo de execução "20000" em milissegundos