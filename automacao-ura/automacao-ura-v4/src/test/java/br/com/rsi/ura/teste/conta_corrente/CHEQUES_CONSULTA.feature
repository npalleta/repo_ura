@CHEQUES_CONSULTA @CONTA_CORRENTE
Feature: Conta Corrente -- CHEQUES_CONSULTA

Background: 
	Given inicializo o 'Relatorio de Dados'
	When clico o numero do telefone da 'Ura'

@URA0567
Scenario: URA0567-Contacorrente_Cheques_ConsultadeCheques_Consultarchequescompensadospelonumero_Pelonumero__Vangogh

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "3"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	#Desbloqueio 1, Solicitar 2, Sustar 3, Consultar Compensados 4
	And clico na opcao do menu transacional: "4"
	#Mês Atual 1, Por Número 2, Outros Periodos 3
	And clico na opcao do menu transacional: "2"
	And clico nos numeros do talao de cheque transacional
	Then um dos textos "você possui cheque compensado;você possui;no valor de" for validado, com o tempo de execução "25000" em milissegundos

@URA0587
Scenario: URA0587-Contacorrente_Cheques_ConsultadeCheques_Consultarultimoschequescompensados_clientesemchequescompensados__Vangogh

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "11764" milissegundos
	And clico na opcao do menu transacional: "3"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "20000" milissegundos
	#Desbloqueio 1, Solicitar 2, Sustar 3, Consultar Compensados 4.
	And clico na opcao do menu transacional: "4"
	#Após digitar a opção de >Consulta Cheque, ela tem que verbalizar que não possui
	Then um dos textos "não possui;não possui lançamentos" for validado, com o tempo de execução "25000" em milissegundos

@URA0588
Scenario: URA0588-Contacorrente_Cheques_ConsultadeCheques_Consultarultimoschequescompensados_clientecomchequescompensadosconsultaultimoscheques__Vangogh

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "3"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	#Desbloqueio 1, Solicitar 2, Sustar 3, Consultar Compensados 4.
	And clico na opcao do menu transacional: "4"
	#Mês Atual 1, Por Número 2, Outros Períodos 3.
	And clico na opcao do menu transacional: "1"
	Then um dos textos "você possui cheque compensado;você possui;no valor de" for validado, com o tempo de execução "25000" em milissegundos

@URA0589
Scenario: URA0589-Contacorrente_Cheques_ConsultadeCheques_Consultarchequescompensadospelonumero_clientecomchequescompensadosconsultapornumero__Vangogh

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "3"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	#Desbloqueio 1, Solicitar 2, Sustar 3, Consultar Compensados 4.
	And clico na opcao do menu transacional: "4"
	#Mês Atual 1, Por Número 2, Outros Períodos 3.
	And clico na opcao do menu transacional: "2"
	And clico nos numeros do talao de cheque transacional
	Then um dos textos "você possui cheque compensado;você possui;no valor de" for validado, com o tempo de execução "25000" em milissegundos
	
@URA0590
Scenario: URA0590-Contacorrente_Cheques_ConsultadeCheques_Consultarchequescompensadosporperiodoultimasemana_clientecomchequescompensadosconsultaporperiodoultimasemana__Vangogh

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "3"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	#Desbloqueio 1, Solicitar 2, Sustar 3, Consultar Compensados 4.
	And clico na opcao do menu transacional: "4"
	#Ultimo Mês 1, Por Número 2, Outros Períodos 3
	And clico na opcao do menu transacional: "3"
	#Ultima Semana 1, Mês Atual 2, Mês Anterior 3, Escolher Período 4. -- (DDMMYY Max 35 Dias)
	And clico na opcao do menu transacional: "1"
	Then um dos textos "você possui cheque compensado;você possui;no valor de" for validado, com o tempo de execução "25000" em milissegundos	

@URA0591
Scenario: URA0591-Contacorrente_Cheques_ConsultadeCheques_Consultarchequescompensadosporperiodomesanterior_clientecomchequescompensadosconsultaporperiodomesanterior__Vangogh

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "3"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "4"
	#Ultimo Mês 1, Por Número 2, Outros Períodos 3.
	And clico na opcao do menu transacional: "3"
	#Ultima Semana 1, Mês Atual 2, Mês Anterior 3, Escolher Período 4. -- (DDMMYY Max 35 Dias)
	And clico na opcao do menu transacional: "3"
	Then um dos textos "você possui cheque compensado;você possui;no valor de" for validado, com o tempo de execução "25000" em milissegundos

@URA0592
Scenario: URA0592-Contacorrente_Cheques_ConsultadeCheques_Consultarchequescompensadosporperiodomesatual_clientecomchequescompensadosconsultaporperiodomesatual__Vangogh

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "3"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "20000" milissegundos
	#Desbloqueio 1, Solicitar 2, Sustar 3, Consultar Compensados 4.
	And clico na opcao do menu transacional: "4"
	#Ultimo Mês 1, Por Número 2, Outros Períodos 3.
	And clico na opcao do menu transacional: "3"
	#Ultima Semana 1, Mês Atual 2, Mês Anterior 3, Escolher Período 4. (ddMMyy Max 35 Dias)
	And clico na opcao do menu transacional: "2"
	Then um dos textos "você possui cheque compensado;você possui;no valor de" for validado, com o tempo de execução "25000" em milissegundos

@URA0593
Scenario: URA0593-Contacorrente_Cheques_ConsultadeCheques_Consultarchequescompensadospordata_clientecomchequescompensadosconsultaporperiododata__Vangogh

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "3"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "20000" milissegundos
	#Desbloqueio 1, Solicitar 2, Sustar 3, Consultar Compensados 4.
	And clico na opcao do menu transacional: "4"
	#Ultimo Mês 1, Por Número 2, Outros Períodos 3.
	And clico na opcao do menu transacional: "3"
	#Ultima Semana 1, Mês Atual 2, Mês Anterior 3, Escolher Período 4. -- (ddMMyy Max 35 Dias)
	And clico na opcao do menu transacional: "4"
	And clico nos numeros da 'dataPassada' transacional
	And clico nos numeros da 'dataAtual' transacional
	Then um dos textos "você possui cheque compensado;você possui;no valor de" for validado, com o tempo de execução "25000" em milissegundos

@URA0630
Scenario: URA0630-Contacorrente_Cheques_ConsultadeCheques_Consultarchequescompensadospelonumero_Pelonumero__Select

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "3"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	#Desbloqueio 1, Solicitar 2, Sustar 3, Consultar Compensados 4.
	And clico na opcao do menu transacional: "4"
	#Ultimo Mês 1, Por Número 2, Outros Períodos 3.
	And clico na opcao do menu transacional: "2"
	And clico nos numeros do talao de cheque
	Then um dos textos "você possui cheque compensado;você possui;no valor de" for validado, com o tempo de execução "25000" em milissegundos

@URA0649
Scenario: URA0649-Contacorrente_Cheques_ConsultadeCheques_Consultarultimoschequescompensados_clientesemchequescompensados__Select

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "3"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "20000" milissegundos
	#Desbloqueio 1, Solicitar 2, Sustar 3, Consultar Compensados 4.
	And clico na opcao do menu transacional: "4"
	#Após digitar a opção de >Consulta Cheque, ela tem que verbalizar que não possui
	Then um dos textos "não possui;não possui lançamentos" for validado, com o tempo de execução "25000" em milissegundos

@URA0650
Scenario: URA0650-Contacorrente_Cheques_ConsultadeCheques_Consultarultimoschequescompensados_clientecomchequescompensadosconsultaultimoscheques__Select

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "3"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "20000" milissegundos
	#Desbloqueio 1, Solicitar 2, Sustar 3, Consultar Compensados 4.
	And clico na opcao do menu transacional: "4"
	#Ultimo Mês 1, Por Número 2, Outros Períodos 3.
	And clico na opcao do menu transacional: "1"
	Then um dos textos "você possui cheque compensado;você possui;no valor de" for validado, com o tempo de execução "25000" em milissegundos

@URA0651
Scenario: URA0651-Contacorrente_Cheques_ConsultadeCheques_Consultarchequescompensadospelonumero_clientecomchequescompensadosconsultapornumero__Select

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "3"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "20000" milissegundos
	#Desbloqueio 1, Solicitar 2, Sustar 3, Consultar Compensados 4.
	And clico na opcao do menu transacional: "4"
	#Ultimo Mês 1, Por Número 2, Outros Períodos 3.
	And clico na opcao do menu transacional: "2"
	And clico nos numeros do talao de cheque
	Then um dos textos "você possui cheque compensado;você possui;no valor de" for validado, com o tempo de execução "25000" em milissegundos

@URA0652
Scenario: URA0652-Contacorrente_Cheques_ConsultadeCheques_Consultarchequescompensadosporperiodoultimasemana_clientecomchequescompensadosconsultaporperiodoultimasemana__Select

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "3"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "20000" milissegundos
	#Desbloqueio 1, Solicitar 2, Sustar 3, Consultar Compensados 4.
	And clico na opcao do menu transacional: "4"
	#Ultimo Mês 1, Por Número 2, Outros Períodos 3.
	And clico na opcao do menu transacional: "3"
	#Ultima Semana 1, Mês Atual 2, Mês Anterior 3, Escolher Período 4. -- (ddMMyy Max 35 Dias)
	And clico na opcao do menu transacional: "1"
	Then um dos textos "você possui cheque compensado;você possui;no valor de" for validado, com o tempo de execução "25000" em milissegundos

@URA0653
Scenario: URA0653-Contacorrente_Cheques_ConsultadeCheques_Consultarchequescompensadosporperiodomesanterior_clientecomchequescompensadosconsultaporperiodomesanterior__Select

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "3"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	#Desbloqueio 1, Solicitar 2, Sustar 3, Consultar Compensados 4.
	And clico na opcao do menu transacional: "4"
	#Ultimo Mês 1, Por Número 2, Outros Períodos 3.
	And clico na opcao do menu transacional: "3"
	#Ultima Semana 1, Mês Atual 2, Mês Anterior 3, Escolher Período 4. -- (ddMMyy Max 35 Dias)
	And clico na opcao do menu transacional: "3"
	Then um dos textos "você possui cheque compensado;você possui;no valor de" for validado, com o tempo de execução "25000" em milissegundos

@URA0654
Scenario: URA0654-Contacorrente_Cheques_ConsultadeCheques_Consultarchequescompensadosporperiodomesatual_clientecomchequescompensadosconsultaporperiodomesatual__Select

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "3"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	#Desbloqueio 1, Solicitar 2, Sustar 3, Consultar Compensados 4.
	And clico na opcao do menu transacional: "4"
	#Ultimo Mês 1, Por Número 2, Outros Períodos 3.
	And clico na opcao do menu transacional: "3"
	#Ultima Semana 1, Mês Atual 2, Mês Anterior 3, Escolher Período 4. -- (ddMMyy Max 35 Dias)
	And clico na opcao do menu transacional: "2"
	Then um dos textos "você possui cheque compensado;você possui;no valor de" for validado, com o tempo de execução "25000" em milissegundos

@URA0655
Scenario: URA0655-Contacorrente_Cheques_ConsultadeCheques_Consultarchequescompensadospordata_clientecomchequescompensadosconsultaporperiododata__Select

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "3"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	#Desbloqueio 1, Solicitar 2, Sustar 3, Consultar Compensados 4.
	And clico na opcao do menu transacional: "4"
	#Ultimo Mês 1, Por Número 2, Outros Períodos 3.
	And clico na opcao do menu transacional: "3"
	#Ultima Semana 1, Mês Atual 2, Mês Anterior 3, Escolher Período 4. -- (ddMMyy Max 35 Dias)
	And clico na opcao do menu transacional: "4"
	And clico nos numeros da 'dataPassada'
	And clico nos numeros da 'dataAtual'
	Then um dos textos "você possui cheque compensado;você possui;no valor de" for validado, com o tempo de execução "25000" em milissegundos

@URA0692
Scenario: URA0692-Contacorrente_Cheques_ConsultadeCheques_Consultarchequescompensadospelonumero_Pelonumero__Private

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "3"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	#Desbloqueio 1, Solicitar 2, Sustar 3, Consultar Compensados 4.
	And clico na opcao do menu transacional: "4"
	#Ultimo Mês 1, Por Número 2, Outros Períodos 3.
	And clico na opcao do menu transacional: "2"
	And clico nos numeros do talao de cheque transacional
	Then um dos textos "você possui cheque compensado;você possui;no valor de" for validado, com o tempo de execução "25000" em milissegundos

@URA0712
Scenario: URA0712-Contacorrente_Cheques_ConsultadeCheques_Consultarultimoschequescompensados_clientesemchequescompensados__Private

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "3"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	#Desbloqueio 1, Solicitar 2, Sustar 3, Consultar Compensados 4.
	And clico na opcao do menu transacional: "4"
	#Após digitar a opção de >Consulta Cheque, ela tem que verbalizar que não possui
	Then um dos textos "não possui;não possui lançamentos" for validado, com o tempo de execução "25000" em milissegundos

@URA0713
Scenario: URA0713-Contacorrente_Cheques_ConsultadeCheques_Consultarultimoschequescompensados_clientecomchequescompensadosconsultaultimoscheques__Private

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "3"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	#Desbloqueio 1, Solicitar 2, Sustar 3, Consultar Compensados 4.
	And clico na opcao do menu transacional: "4"
	#Ultimo Mês 1, Por Número 2, Outros Períodos 3.
	And clico na opcao do menu transacional: "1"
	Then um dos textos "você possui cheque compensado;você possui;no valor de" for validado, com o tempo de execução "25000" em milissegundos

@URA0714
Scenario: URA0714-Contacorrente_Cheques_ConsultadeCheques_Consultarchequescompensadospelonumero_clientecomchequescompensadosconsultapornumero__Private

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "3"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	#Desbloqueio 1, Solicitar 2, Sustar 3, Consultar Compensados 4.
	And clico na opcao do menu transacional: "4"
	#Ultimo Mês 1, Por Número 2, Outros Períodos 3.
	And clico na opcao do menu transacional: "2"
	And clico nos numeros do talao de cheque transacional
	Then um dos textos "você possui cheque compensado;você possui;no valor de" for validado, com o tempo de execução "25000" em milissegundos

@URA0715
Scenario: URA0715-Contacorrente_Cheques_ConsultadeCheques_Consultarchequescompensadosporperiodoultimasemana_clientecomchequescompensadosconsultaporperiodoultimasemana__Private

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "3"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	#Desbloqueio 1, Solicitar 2, Sustar 3, Consultar Compensados 4.
	And clico na opcao do menu transacional: "4"
	#Ultimo Mês 1, Por Número 2, Outros Períodos 3.
	And clico na opcao do menu transacional: "3"
	#Ultima Semana 1, Mês Atual 2, Mês Anterior 3, Escolher Período 4. -- (ddMMyy Max 35 Dias)
	And clico na opcao do menu transacional: "1"
	Then um dos textos "você possui cheque compensado;você possui;no valor de" for validado, com o tempo de execução "25000" em milissegundos

@URA0716
Scenario: URA0716-Contacorrente_Cheques_ConsultadeCheques_Consultarchequescompensadosporperiodomesanterior_clientecomchequescompensadosconsultaporperiodomesanterior__Private

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "3"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	#Desbloqueio 1, Solicitar 2, Sustar 3, Consultar Compensados 4.
	And clico na opcao do menu transacional: "4"
	#Ultimo Mês 1, Por Número 2, Outros Períodos 3.
	And clico na opcao do menu transacional: "3"
	#Ultima Semana 1, Mês Atual 2, Mês Anterior 3, Escolher Período 4. -- (ddMMyy Max 35 Dias)
	And clico na opcao do menu transacional: "3"
	Then um dos textos "você possui cheque compensado;você possui;no valor de" for validado, com o tempo de execução "25000" em milissegundos

@URA0717
Scenario: URA0717-Contacorrente_Cheques_ConsultadeCheques_Consultarchequescompensadosporperiodomesatual_clientecomchequescompensadosconsultaporperiodomesatual__Private

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "3"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	#Desbloqueio 1, Solicitar 2, Sustar 3, Consultar Compensados 4.
	And clico na opcao do menu transacional: "4"
	#Ultimo Mês 1, Por Número 2, Outros Períodos 3.
	And clico na opcao do menu transacional: "3"
	#Ultima Semana 1, Mês Atual 2, Mês Anterior 3, Escolher Período 4. -- (ddMMyy Max 35 Dias)
	And clico na opcao do menu transacional: "2"
	Then um dos textos "você possui cheque compensado;você possui;no valor de" for validado, com o tempo de execução "25000" em milissegundos

@URA0718
Scenario: URA0718-Contacorrente_Cheques_ConsultadeCheques_Consultarchequescompensadospordata_clientecomchequescompensadosconsultaporperiododata__Private

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "3"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	#Desbloqueio 1, Solicitar 2, Sustar 3, Consultar Compensados 4.
	And clico na opcao do menu transacional: "4"
	#Ultimo Mês 1, Por Número 2, Outros Períodos 3.
	And clico na opcao do menu transacional: "3"
	#Ultima Semana 1, Mês Atual 2, Mês Anterior 3, Escolher Período 4. -- (ddMMyy Max 35 Dias)
	And clico na opcao do menu transacional: "4"
	And clico nos numeros da 'dataPassada' transacional
	And clico nos numeros da 'dataAtual' transacional
	Then um dos textos "você possui cheque compensado;você possui;no valor de" for validado, com o tempo de execução "25000" em milissegundos

@URA0585
Scenario: URA0585-Contacorrente_TalaodeCheques_ConsultadeCheques_Consultarchequescompensadosporperiodomesanterior_clientecomchequescompensados_Modelonovosenha6digitos_Exclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "3"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	#Desbloqueio 1, Solicitar 2, Sustar 3, Consultar Compensados 4.
	And clico na opcao do menu transacional: "4"
	#Mês anterior 1.
	And clico na opcao do menu transacional: "1"
	Then um dos textos "realizado com sucesso;sucesso" for validado, com o tempo de execução "30000" em milissegundos