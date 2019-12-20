@CONSULTA_MENU_POUPANÇA @INVESTIMENTOS
Feature: Investimentos -- CONSULTA_MENU_POUPANÇA

Background: 
	Given inicializo o 'Relatorio de Dados'
	When clico o numero do telefone da 'Ura'
	
@URA1139
Scenario: URA1139-Investimentos_Poupança_ConsultaaomenuPoupança_clientecorrentista_comumacontapoupança_Vangogh_Modelonovosenha6dígitos

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "4"
	And valido a existência da opção de Renegociação no menu Investimentos
	And clico na opcao do menu transacional: "3"
	Then um dos textos "conta poupança;extrato;abertura;depósito" for validado, com o tempo de execução "25000" em milissegundos
	
@URA1157
Scenario: URA1157-Investimentos_Poupança_ConsultaaomenuPoupança_clientecommultiplascontascorrenteepoupança_Vangogh_Modelonovosenha6dígitos

	And estou na opcao do menu do ura com o TEXTO e ID " você está", com o tempo total de execução de "25000" milissegundos
	And clico no botao 'teclado' e clico nos numeros do 'CPF'
	And estou na opcao do menu ' desbloquear' para cliente que não solicita senha no topo, com o tempo total de execução de "15000" milissegundos
	And clico na opcao do menu transacional: "4"
	And valido a existência da opção de Renegociação no menu Investimentos
	And clico na opcao do menu transacional: "3"
	And clico na 'conta poupança' e 'agencia poupança' transacional
	And estou na opcao do menu do ura com o texto ' desbloquear', com o tempo total de execução de "25000" milissegundos
	And clico nos numeros da senha transacional
	Then um dos textos "conta poupança;extrato;abertura;depósito" for validado, com o tempo de execução "25000" em milissegundos
	
@URA1181
Scenario: URA1181-Investimentos_Poupança_ConsultaaomenuPoupança_clientecorrentistaecomumacontapoupança_Select_Modelonovosenha6dígitos

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "4"
	And valido a existência da opção de Renegociação no menu Investimentos
	And clico na opcao do menu transacional: "3"
	Then um dos textos "conta poupança;extrato;abertura;depósito" for validado, com o tempo de execução "25000" em milissegundos
	
@URA1199
Scenario: URA1199-Investimentos_Poupança_ConsultaaomenuPoupança_clientecommultiplascontascorrenteepoupança_Select_Modelonovosenha6dígitos

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
	Then um dos textos "conta poupança;extrato;abertura;depósito" for validado, com o tempo de execução "25000" em milissegundos
	
@URA1222
Scenario: URA1222-Investimentos_Poupança_ConsultaaomenuPoupança_clientecorrentistaecomumacontapoupança_Private_Modelonovosenha6dígitos

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "4"
	And valido a existência da opção de Renegociação no menu Investimentos
	And clico na opcao do menu transacional: "3"
	Then um dos textos "conta poupança;extrato;abertura;depósito" for validado, com o tempo de execução "25000" em milissegundos

@URA1240
Scenario: URA1240-Investimentos_Poupança_ConsultaaomenuPoupança_clientecommultiplascontascorrenteepoupança_Private_Modelonovosenha6dígitos

	And estou na opcao do menu do ura com o TEXTO e ID " você está", com o tempo total de execução de "25000" milissegundos
	And clico no botao 'teclado' e clico nos numeros do 'CPF'
	And estou na opcao do menu ' desbloquear' para cliente que não solicita senha no topo, com o tempo total de execução de "10000" milissegundos
	#Pular gerente...
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "4"
	And valido a existência da opção de Renegociação no menu Investimentos
	And clico na opcao do menu transacional: "3"
	And clico na 'conta poupança' e 'agencia poupança' transacional
	And estou na opcao do menu do ura com o texto ' desbloquear', com o tempo total de execução de "25000" milissegundos
	And clico nos numeros da senha transacional
	Then um dos textos "conta poupança;extrato;abertura;depósito" for validado, com o tempo de execução "25000" em milissegundos 