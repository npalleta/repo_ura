@CHEQUES_SUSTAÇÃO @CONTA_CORRENTE
Feature: Conta Corrente -- CHEQUES_SUSTAÇÃO

Background: 
	Given inicializo o 'Relatorio de Dados'
	When clico o numero do telefone da 'Ura'
	
@URA0586
Scenario: URA0586-Contacorrente_Cheques_Sustacaodecheques_Sustarcheque_Vangogh

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "3"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	#Desbloqueio 1, Solicitar 2, Sustar 3, Consultar Compensados 4.
	And clico na opcao do menu transacional: "3"
	#Não solicita a posição do cartão 
	And digito o RAMAL transacional
	Then um dos textos "transferir;ramal" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0648
Scenario: URA0648-Contacorrente_Cheques_Sustacaodecheques_Sustarcheque_Select

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "3"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	#Desbloqueio 1, Solicitar 2, Sustar 3, Consultar Compensados 4.
	And clico na opcao do menu transacional: "3"
	And digito o RAMAL transacional
	Then um dos textos "transferir;ramal" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0711
Scenario: URA0711-Contacorrente_Cheques_Sustacaodecheques_Sustarcheque_Private

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "3"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "20000" milissegundos
	#Desbloqueio 1, Solicitar 2, Sustar 3, Consultar Compensados 4.
	And clico na opcao do menu transacional: "3"
	And digito o RAMAL transacional
	Then um dos textos "transferir;ramal" for validado, com o tempo de execução "30000" em milissegundos