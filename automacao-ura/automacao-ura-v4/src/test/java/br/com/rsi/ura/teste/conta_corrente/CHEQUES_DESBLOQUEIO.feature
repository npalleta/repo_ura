@CHEQUES_DESBLOQUEIO @CONTA_CORRENTE
Feature: Conta Corrente -- CHEQUES_DESBLOQUEIO

Background: 
	Given inicializo o 'Relatorio de Dados'
	When clico o numero do telefone da 'Ura'
	
@URA0580
Scenario: URA0580-Contacorrente_TalãodeCheques_Desbloqueiodetalão_Desbloqueartalãodecheques_clientecomchequescompensadosconsultaporperiodomêsanterior_Modelonovosenha6dígitos_Vangogh

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "3"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	#Desbloqueio 1, Solicitar 2, Sustar 3, Consultar Compensados 4.
	And clico na opcao do menu transacional: "1"
	#Talao 1, Remessa 2.
	And clico na opcao do menu transacional: "1"
	And clico nos numeros do talao de cheque transacional
	Then um dos textos "desbloqueado com sucesso;sucesso" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0581
Scenario: URA0581-Contacorrente_TalãodeCheques_Desbloqueiodetalão_Desbloqueartalãodecheques_clientecomchequescompensadosconsultaporperiodomêsatual_Modelonovosenha6dígitos_Vangogh

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "3"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	#Desbloqueio 1, Solicitar 2, Sustar 3, Consultar Compensados 4.
	And clico na opcao do menu transacional: "1"
	#Talao 1, Remessa 2.
	And clico na opcao do menu transacional: "1"
	And clico nos numeros do talao de cheque transacional
	Then um dos textos "desbloqueado com sucesso;sucesso" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0582
Scenario: URA0582-Contacorrente_TalãodeCheques_Desbloqueiodetalão_Desbloqueartalãodecheques_clientecomchequescompensadosconsultaporperiododata_Modelonovosenha6dígitos_Vangogh

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "3"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	#Desbloqueio 1, Solicitar 2, Sustar 3, Consultar Compensados 4.
	And clico na opcao do menu transacional: "1"
	#Talao 1, Remessa 2.
	And clico na opcao do menu transacional: "1"
	And clico nos numeros do talao de cheque transacional
	Then um dos textos "desbloqueado com sucesso;sucesso" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0583
Scenario: URA0583-Contacorrente_TalaodeCheques_Desbloqueiodetalao_Desbloqueartalaodecheques_Pelonumero_Modelonovosenha6digitos_Vangogh

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "3"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	#Desbloqueio 1, Solicitar 2, Sustar 3, Consultar Compensados 4.
	And clico na opcao do menu transacional: "1"
	#Talão 1, Remessa 2.
	And clico na opcao do menu transacional: "1"
	And clico nos numeros do talao de cheque transacional
	Then um dos textos "desbloqueado com sucesso;sucesso" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0642
Scenario: URA0642-Contacorrente_TalaodeCheques_Desbloqueiodetalao_Desbloqueartalaodecheques_Modelonovosenha6digitos_Select

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "3"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "20000" milissegundos
	#Desbloqueio 1, Solicitar 2, Sustar 3, Consultar Compensados 4.
	And clico na opcao do menu transacional: "1"
	#Talão 1.
	And clico na opcao do menu transacional: "1"
	And clico nos numeros do talao de cheque
	Then um dos textos "desbloqueado com sucesso;sucesso" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0705
Scenario: URA0705-Contacorrente_TalaodeCheques_Desbloqueiodetalao_Desbloqueartalaodecheques_Modelonovosenha6digitos_Private

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "3"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "20000" milissegundos
	#Desbloqueio 1, Solicitar 2, Sustar 3, Consultar Compensados 4.
	And clico na opcao do menu transacional: "1"
	#Talão 1.
	And clico na opcao do menu transacional: "1"
	And clico nos numeros do talao de cheque
	Then um dos textos "desbloqueado com sucesso;sucesso" for validado, com o tempo de execução "30000" em milissegundos