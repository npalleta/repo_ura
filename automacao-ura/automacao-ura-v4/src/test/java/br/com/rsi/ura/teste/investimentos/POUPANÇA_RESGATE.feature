@POUPANÇA_RESGATE @INVESTIMENTOS
Feature: Investimentos -- POUPANÇA_RESGATE

Background: 
	Given inicializo o 'Relatorio de Dados'
	When clico o numero do telefone da 'Ura'
	
@URA1144
Scenario: URA1144-Investimentos_Poupanca_ResgatedePoupanca_clientecorrentistaecomumacontapoupanca_Vangogh_Modelonovosenha6digitos

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "4"
	And valido a existência da opção de Renegociação no menu Investimentos
	And clico na opcao do menu transacional: "3"
	And clico na opcao do menu transacional: "3"
	And clico no 'valor' transacional
	And clico na opcao do menu transacional: "1"
	Then um dos textos "saldo conta poupança;saldo;conta poupança" for validado, com o tempo de execução "25000" em milissegundos
	
@URA1186
Scenario: URA1186-Investimentos_Poupanca_ResgatedePoupanca_clientecorrentistaecomumacontapoupanca_Select_Modelonovosenha6digitos

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "4"
	And valido a existência da opção de Renegociação no menu Investimentos
	And clico na opcao do menu transacional: "3"
	And clico na opcao do menu transacional: "3"
	And clico no 'valor' transacional
	And clico na opcao do menu transacional: "1"
	Then um dos textos "saldo conta poupança;saldo;conta poupança" for validado, com o tempo de execução "25000" em milissegundos
	
@URA1203
Scenario: URA1203-Investimentos_Poupança_ResgatedePoupança_clientecommultiplascontascorrenteepoupança_Select_Modelonovosenha6dígitos

	And estou na opcao do menu do ura com o TEXTO e ID " você está", com o tempo total de execução de "25000" milissegundos
	And clico no botao 'teclado' e clico nos numeros do 'CPF'
	And estou na opcao do menu ' desbloquear' para cliente que não solicita senha no topo, com o tempo total de execução de "15000" milissegundos
	#Pulando o gerente...
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "4"
	And valido a existência da opção de Renegociação no menu Investimentos
	And clico na opcao do menu transacional: "3"
	And clico na 'conta poupança' e 'agencia poupança' transacional
	And estou na opcao do menu do ura com o texto ' desbloquear', com o tempo total de execução de "25000" milissegundos
	And clico nos numeros da senha transacional
	And clico na opcao do menu transacional: "3"
	And clico no 'valor' transacional
	And clico na opcao do menu transacional: "1"
	Then um dos textos "saldo conta poupança;saldo;conta poupança" for validado, com o tempo de execução "25000" em milissegundos
	
@URA1227
Scenario: URA1227-Investimentos_Poupanca_ResgatedePoupanca_clientecorrentistaecomumacontapoupanca_Private_Modelonovosenha6digitos

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "4"
	And valido a existência da opção de Renegociação no menu Investimentos
	And clico na opcao do menu transacional: "3"
	And clico na opcao do menu transacional: "3"
	And clico no 'valor' transacional
	And clico na opcao do menu transacional: "1"
	Then um dos textos "saldo conta poupança;saldo;conta poupança" for validado, com o tempo de execução "25000" em milissegundos