@POUPANÇA_ABERTURA_CONTA_NÃO_CORRENTISTA @INVESTIMENTOS
Feature: Investimentos -- POUPANÇA_ABERTURA_CONTA_NÃO_CORRENTISTA

Background: 
	Given inicializo o 'Relatorio de Dados'
	When clico o numero do telefone da 'Ura'

#FALTA
@URA1136
Scenario: URA1136-Investimentos_Poupanca_Aberturadeconta_clientenaocorrentista_Vangogh_Modelonovosenha6digitos
	
	And estou na opcao do menu do ura com o TEXTO e ID " você está", com o tempo total de execução de "25000" milissegundos
	And clico no botao 'teclado' e clico nos numeros do 'CPF'
	And estou na opcao do menu ' desbloquear' para cliente que não solicita senha no topo, com o tempo total de execução de "25000" milissegundos
	And clico na opcao do menu transacional: "1"
	And estou na opcao do menu do ura com o texto ' desbloquear', com o tempo total de execução de "25000" milissegundos
	And clico nos numeros da senha transacional
	And clico na opcao do menu transacional: "2"
	Then estou na opcao do menu do ura com o texto " planejar sua vida conta poupança", com o tempo total de execução de "20000" milissegundos 
	#VALIDAR CAMINHO (REFATORAR)
	
#FALTA
@URA1178
Scenario: URA1178-Investimentos_Poupança_Aberturadeconta_clientenãocorrentista_Select_Modelonovosenha6dígitos

	And estou na opcao do menu do ura com o TEXTO e ID " você está", com o tempo total de execução de "25000" milissegundos
	And clico no botao 'teclado' e clico nos numeros do 'CPF'
	And estou na opcao do menu ' desbloquear' para cliente que não solicita senha no topo, com o tempo total de execução de "25000" milissegundos
	And clico na opcao do menu transacional: "1"
	And clico na 'conta poupança' e 'agencia poupança' transacional
	And estou na opcao do menu do ura com o texto ' desbloquear', com o tempo total de execução de "25000" milissegundos
	And clico nos numeros da senha transacional
	And clico na opcao do menu transacional: "2"
	Then estou na opcao do menu do ura com o texto "  a conta poupança santander", com o tempo total de execução de "20000" milissegundos
	#VALIDAR CAMINHO (REFATORAR) 
	
#FALTA
@URA1195
Scenario: URA1195-Investimentos_Poupanca_Aberturadeconta_clientenaocorrentista_commaisdeumacontapoupanca_Select_Modelonovosenha6digitos

	And estou na opcao do menu do ura com o TEXTO e ID " você está", com o tempo total de execução de "30000" milissegundos
	And clico no botao 'teclado' e clico nos numeros do 'CPF'
	And estou na opcao do menu ' desbloquear' para cliente que não solicita senha no topo, com o tempo total de execução de "25000" milissegundos
	And clico na opcao do menu transacional: "1"
	And clico na 'conta poupança' e 'agencia poupança' transacional
	And estou na opcao do menu do ura com o texto ' desbloquear', com o tempo total de execução de "25000" milissegundos
	And clico nos numeros da senha transacional
	And clico na opcao do menu transacional: "1"
	Then estou na opcao do menu do ura com o texto " conta poupança", com o tempo total de execução de "30000" milissegundos 
	
#FALTA
@URA1219
Scenario: URA1219-Investimentos_Poupanca_Aberturadeconta_clientenaocorrentista_Private_Modelonovosenha6digitos

	And estou na opcao do menu do ura com o TEXTO e ID " você está", com o tempo total de execução de "25000" milissegundos
	And clico no botao 'teclado' e clico nos numeros do 'CPF'
	And estou na opcao do menu ' desbloquear' para cliente que não solicita senha no topo, com o tempo total de execução de "25000" milissegundos
	#Pulando o gerente...
	And clico na opcao do menu transacional: "1"
	And clico na 'conta poupança' e 'agencia poupança' transacional
	And estou na opcao do menu do ura com o texto ' desbloquear', com o tempo total de execução de "25000" milissegundos
	And clico nos numeros da senha transacional
	And clico na opcao do menu transacional: "1"
	Then estou na opcao do menu do ura com o texto " conta poupança", com o tempo total de execução de "20000" milissegundos