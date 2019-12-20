@POUPANÇA_CONSULTA_SALDO_NÃO_CORRENTISTA @INVESTIMENTOS
Feature: Investimentos -- POUPANÇA_CONSULTA_SALDO_NÃO_CORRENTISTA 

Background: 
	Given inicializo o 'Relatorio de Dados'
	When clico o numero do telefone da 'Ura'
	
#FALTA
@URA1133
Scenario: URA1133-Investimentos_Poupanca_ConsultadeSaldo_clientenaocorrentista_Vangogh_Modelonovosenha6digitos 

	And estou na opcao do menu do ura com o TEXTO e ID " você está", com o tempo total de execução de "25000" milissegundos 
	And clico no botao 'teclado' e clico nos numeros do 'CPF' 
	And estou na opcao do menu ' desbloquear' para cliente que não solicita senha no topo, com o tempo total de execução de "25000" milissegundos 
	And clico na opcao do menu transacional: "1"
	#Este cliente não pode ter mais de uma conta poupança, pois o menu para consulta do saldo irá mudar
	#Para puvir o saldo ----> Opção 3(Apenas com uma conta-poupança) -- Opção 4(Com mais de uma conta-poupança)
	And estou na opcao do menu do ura com o texto ' desbloquear', com o tempo total de execução de "20000" milissegundos
	And clico nos numeros da senha transacional
	And clico na opcao do menu transacional: "3" 
	Then um dos textos "saldo atual;regra nova;total disponível;saldo atual da conta poupança;saldo total" for validado, com o tempo de execução "25000" em milissegundos
	
#FALTA
@URA1175
Scenario: URA1175-Investimentos_Poupanca_ConsultadeSaldo_clientenaocorrentista_Select_Modelonovosenha6digitos

	And estou na opcao do menu do ura com o TEXTO e ID " você está", com o tempo total de execução de "25000" milissegundos
	And clico no botao 'teclado' e clico nos numeros do 'CPF'
	And estou na opcao do menu ' desbloquear' para cliente que não solicita senha no topo, com o tempo total de execução de "25000" milissegundos
	And clico na opcao do menu transacional: "1"
	#Este cliente não pode ter mais de uma conta poupança, pois o menu para consulta do saldo irá mudar
	#Para puvir o saldo ----> Opção 3(Apenas com uma conta-poupança) -- Opção 4(Com mais de uma conta-poupança)
	And estou na opcao do menu do ura com o texto ' desbloquear', com o tempo total de execução de "25000" milissegundos
	And clico nos numeros da senha transacional
	And clico na opcao do menu transacional: "3"
	Then um dos textos "saldo atual;regra nova;total disponível;saldo atual da conta poupança;saldo total" for validado, com o tempo de execução "25000" em milissegundos
	
#FALTA
@URA1197
Scenario: URA1197-Investimentos_Poupança_Consultadesaldo_clientenãocorrentistaecommaisdeumacontapoupança_Select_Modelonovosenha6dígitos

	And estou na opcao do menu do ura com o TEXTO e ID " você está", com o tempo total de execução de "25000" milissegundos
	And clico no botao 'teclado' e clico nos numeros do 'CPF'
	And estou na opcao do menu ' desbloquear' para cliente que não solicita senha no topo, com o tempo total de execução de "25000" milissegundos
	And clico na opcao do menu transacional: "1"
	#Para puvir o saldo ----> Opção 3(Apenas com uma conta-poupança) -- Opção 4(Com mais de uma conta-poupança)
	And clico na 'conta poupança' e 'agencia poupança' transacional
	And estou na opcao do menu do ura com o texto ' desbloquear', com o tempo total de execução de "25000" milissegundos
	And clico nos numeros da senha transacional
	And clico na opcao do menu transacional: "4"
	Then um dos textos "saldo atual;regra nova;total disponível;saldo atual da conta poupança;saldo total" for validado, com o tempo de execução "25000" em milissegundos
	
#FALTA
@URA1216
Scenario: URA1216-Investimentos_Poupanca_ConsultadeSaldo_clientenaocorrentista_Private_Modelonovosenha6digitos

	And estou na opcao do menu do ura com o TEXTO e ID " você está", com o tempo total de execução de "25000" milissegundos
	And clico no botao 'teclado' e clico nos numeros do 'CPF'
	And estou na opcao do menu ' desbloquear' para cliente que não solicita senha no topo, com o tempo total de execução de "25000" milissegundos
	And clico na opcao do menu transacional: "1"
	#Este cliente não pode ter mais de uma conta poupança, pois o menu para consulta do saldo irá mudar
	#Para puvir o saldo ----> Opção 3(Apenas com uma conta-poupança) -- Opção 4(Com mais de uma conta-poupança)
	And estou na opcao do menu do ura com o texto ' desbloquear', com o tempo total de execução de "25000" milissegundos
	And clico nos numeros da senha transacional
	And clico na opcao do menu transacional: "3"
	Then um dos textos "saldo atual;regra nova;total disponível;saldo atual da conta poupança;saldo total" for validado, com o tempo de execução "25000" em milissegundos