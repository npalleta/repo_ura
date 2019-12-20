@CONSULTA_EXTRATO_NÃO_CORRENTISTA @INVESTIMENTOS
Feature: Investimentos -- CONSULTA_EXTRATO_NÃO_CORRENTISTA

Background: 
	Given inicializo o 'Relatorio de Dados'
	When clico o numero do telefone da 'Ura'
	
@URA1134
Scenario: URA1134-Investimentos_Poupança_ConsultadeExtrato_clientenãocorrentista_Vangogh_Modelonovosenha6dígitos

	And estou na opcao do menu do ura com o TEXTO e ID " você está", com o tempo total de execução de "25000" milissegundos
	And clico no botao 'teclado' e clico nos numeros do 'CPF'
	And estou na opcao do menu ' desbloquear' para cliente que não solicita senha no topo, com o tempo total de execução de "25000" milissegundos
	#Massa 'Puro Poupador', opção 1 -- Conta Poupança
	And clico na opcao do menu transacional: "1"
	And clico na 'conta poupança' e 'agencia poupança' transacional
	And estou na opcao do menu do ura com o texto ' desbloquear', com o tempo total de execução de "25000" milissegundos
	And clico nos numeros da senha transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	Then um dos textos "teve lançamentos registrados;lançamento registrado; saldo bruto total;totalizando o valor do seu saldo" for validado, com o tempo de execução "25000" em milissegundos
	
@URA1176
Scenario: URA1176-Investimentos_Poupanca_ConsultadeExtrato_clientenaocorrentista_Select_Modelonovosenha6digitos

	And estou na opcao do menu do ura com o TEXTO e ID " você está", com o tempo total de execução de "25000" milissegundos
	And clico no botao 'teclado' e clico nos numeros do 'CPF'
	And estou na opcao do menu ' desbloquear' para cliente que não solicita senha no topo, com o tempo total de execução de "25000" milissegundos
	#Massa 'Puro Poupador', opção 1 -- Conta Poupança
	And clico na opcao do menu transacional: "1"
	And clico na 'conta poupança' e 'agencia poupança' transacional
	And estou na opcao do menu do ura com o texto ' desbloquear', com o tempo total de execução de "25000" milissegundos
	And clico nos numeros da senha transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	Then um dos textos "lançamento registrado;conta poupança" for validado, com o tempo de execução "25000" em milissegundos
	
@URA1193
Scenario: URA1193-Investimentos_Poupança_ConsultadeExtrato_clientenãocorrentista_commaisdeumacontapoupança_Select_Modelonovosenha6dígitos

	And estou na opcao do menu do ura com o TEXTO e ID " você está", com o tempo total de execução de "25000" milissegundos
	And clico no botao 'teclado' e clico nos numeros do 'CPF'
	And estou na opcao do menu ' desbloquear' para cliente que não solicita senha no topo, com o tempo total de execução de "25000" milissegundos
	#Massa 'Puro Poupador', opção 1 -- Conta Poupança
	And clico na opcao do menu transacional: "1"
	And clico na 'conta poupança' e 'agencia poupança' transacional
	And estou na opcao do menu do ura com o texto ' desbloquear', com o tempo total de execução de "25000" milissegundos
	And clico nos numeros da senha transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	Then um dos textos "lançamento registrado;conta poupança" for validado, com o tempo de execução "25000" em milissegundos