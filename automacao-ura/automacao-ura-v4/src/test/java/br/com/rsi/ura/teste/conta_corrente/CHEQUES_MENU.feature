@CHEQUES_MENU @CONTA_CORRENTE
Feature: Conta Corrente -- CHEQUES_MENU

Background: 
	Given inicializo o 'Relatorio de Dados'
	When clico o numero do telefone da 'Ura'
	
@URA0577
Scenario: URA0577-ContaCorrente_TalaodeCheques_ConsultamenuTalaodecheques_Acessarmenutalaodecheques_ModeloNovoSenha6Digitos_Vangogh

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "3"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	Then um dos textos "talão de cheque;queira solicitar;consulta de cheques;" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0639
Scenario: URA0639-ContaCorrente_TalaodeCheques_ConsultamenuTalaodecheques_Acessarmenutalaodecheques_ModeloNovoSenha6Digitos_Select

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "3"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "20000" milissegundos
	Then um dos textos "talão de cheque;queira solicitar;consulta de cheques" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0702
Scenario: URA0702-ContaCorrente_TalaodeCheques_ConsultamenuTalaodecheques_Acessarmenutalaodecheques_ModeloNovoSenha6Digitos_Private

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "3"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	Then um dos textos "talão de cheque;queira solicitar;consulta de cheques;" for validado, com o tempo de execução "30000" em milissegundos