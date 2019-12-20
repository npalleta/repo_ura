@CHEQUES_SOLICITAÇÃO @CONTA_CORRENTE
Feature: Conta Corrente -- CHEQUES_SOLICITAÇÃO

Background: 
	Given inicializo o 'Relatorio de Dados'
	When clico o numero do telefone da 'Ura'
	
@URA0584
Scenario: URA0584-ContaCorrente_TalaodeCheques_Solicitacaodetalao_Solicitartalaodecheques_clientesemchequescompensados_ModeloNovoSenha6Digitos_Vangogh

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "3"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	#Desbloqueio 1, Solicitar 2, Sustar 3, Consultar Compensados 4.
	And clico na opcao do menu transacional: "2"
	#Confirmar 1.
	And clico na opcao do menu transacional: "1"
	Then um dos textos "realizado com sucesso;sucesso;enviados por correio" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0646
Scenario: URA0646-ContaCorrente_TalaodeCheques_Solicitacaodetalao_Solicitartalaodecheques_ModeloNovoSenha6Digitos_Select

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "3"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "15000" milissegundos
	#Desbloqueio 1, Solicitar 2, Sustar 3, Consultar Compensados 4.
	And clico na opcao do menu transacional: "2"
	And clico na opcao do menu transacional: "1"
	Then um dos textos "realizado com sucesso;sucesso" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0709
Scenario: URA0709-ContaCorrente_TalaodeCheques_Solicitacaodetalao_Solicitartalaodecheques_ModeloNovoSenha6Digitos_Private

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "3"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "20000" milissegundos
	And clico na opcao do menu transacional: "2"
	And clico na opcao do menu transacional: "1"
	Then um dos textos "realizado com sucesso;sucesso" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0754
Scenario: URA0754-ContaCorrente_TalaodeCheques_Solicitacaodetalao_Solicitartalaodecheques_Fraseologia_Select

	And estou indo ao menu principal Private ou Select Fraseologia
	And um dos textos "pagamento;faturas;cartões;contrata" for validado, com o tempo de execução "25000" em milissegundos
	And clico na opcao do menu: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu: "3"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "20000" milissegundos
	And clico na opcao do menu: "2"
	And um dos textos "confirmar;solicitação;talão de cheques" for validado, com o tempo de execução "15000" em milissegundos
	And clico na opcao do menu: "1"
	Then um dos textos "realizado com sucesso;sucesso" for validado, com o tempo de execução "30000" em milissegundos