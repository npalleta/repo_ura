@CONSULTA_EXTRATO @INVESTIMENTOS
Feature: Investimentos -- CONSULTA_EXTRATO

Background: 
	Given inicializo o 'Relatorio de Dados'
	When clico o numero do telefone da 'Ura'
	
@URA1140
Scenario: URA1140-Investimentos_Poupança_ConsultadeExtrato_clientecorrentistaecomumacontapoupança_Vangogh_Modelonovosenha6dígitos

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "4"
	And valido a existência da opção de Renegociação no menu Investimentos	
	And clico na opcao do menu transacional: "3"
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1" 
	Then um dos textos "saldo total de conta corrente;lançamento registrado; saldo bruto total;totalizando o valor do seu saldo" for validado, com o tempo de execução "25000" em milissegundos

@URA1158
Scenario: URA1158-Investimentos_Poupança_ConsultadeExtrato_clientecommultiplascontascorrenteepoupança_Vangogh_Modelonovosenha6dígitos

	And estou na opcao do menu do ura com o TEXTO e ID " você está", com o tempo total de execução de "25000" milissegundos
	And clico no botao 'teclado' e clico nos numeros do 'CPF'
	And estou na opcao do menu ' desbloquear' para cliente que não solicita senha no topo, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "4"
	And valido a existência da opção de Renegociação no menu Investimentos
	And clico na opcao do menu transacional: "3"
	And clico na 'conta poupança' e 'agencia poupança' transacional
	And estou na opcao do menu do ura com o texto ' desbloquear', com o tempo total de execução de "25000" milissegundos
	And clico nos numeros da senha transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	Then um dos textos "teve lançamentos registrados;lançamento registrado; saldo bruto total;totalizando o valor do seu saldo" for validado, com o tempo de execução "25000" em milissegundos

@URA1182
Scenario: URA1182-Investimentos_Poupança_ConsultadeExtrato_clientecorrentistaecomumacontapoupança_Select_Modelonovosenha6dígitos

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "4"
	And valido a existência da opção de Renegociação no menu Investimentos
	And clico na opcao do menu transacional: "3"
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	Then um dos textos "teve lançamentos registrados;lançamento registrado; saldo bruto total;totalizando o valor do seu saldo" for validado, com o tempo de execução "25000" em milissegundos
	
@URA1200
Scenario: URA1200-Investimentos_Poupanca_ConsultadeExtrato_clientecommultiplascontascorrenteepoupanca_Select_Modelonovosenha6digitos

	And estou na opcao do menu do ura com o TEXTO e ID " você está", com o tempo total de execução de "25000" milissegundos
	And clico no botao 'teclado' e clico nos numeros do 'CPF'
	And estou na opcao do menu ' desbloquear' para cliente que não solicita senha no topo, com o tempo total de execução de "25000" milissegundos
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
	Then um dos textos "teve lançamentos registrados;lançamento registrado; saldo bruto total;totalizando o valor do seu saldo" for validado, com o tempo de execução "25000" em milissegundos

@URA1223
Scenario: URA1223-Investimentos_Poupança_ConsultadeExtrato_clientecorrentistaecomumacontapoupança_Private_Modelonovosenha6dígitos

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "4"
	And valido a existência da opção de Renegociação no menu Investimentos
	And clico na opcao do menu transacional: "3"
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	Then um dos textos "teve lançamentos registrados;lançamento registrado; saldo bruto total;totalizando o valor do seu saldo" for validado, com o tempo de execução "25000" em milissegundos
	
@URA1241
Scenario: URA1241-Investimentos_Poupança_ConsultadeExtrato_clientecommultiplascontascorrenteepoupança_Private_Modelonovosenha6dígitos

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
	Then um dos textos "teve lançamentos registrados;lançamento registrado; saldo bruto total;totalizando o valor do seu saldo" for validado, com o tempo de execução "25000" em milissegundos 