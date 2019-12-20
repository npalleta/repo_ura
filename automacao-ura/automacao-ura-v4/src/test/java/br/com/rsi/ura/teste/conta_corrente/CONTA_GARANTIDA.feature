@CONTA_GARANTIDA @CONTA_CORRENTE
Feature: Conta Corrente -- CONTA_GARANTIDA

Background: 
	Given inicializo o 'Relatorio de Dados'
	When clico o numero do telefone da 'Ura'

@URA0502
Scenario: URA0502-ContaCorrente_ContaGarantida_ConsultadeChequeespecial_Consultarchequeespecial_Vangogh

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "1"
	Then um dos textos "limite total disponível;limite da conta;limite total" for validado, com o tempo de execução "30000" em milissegundos

@URA0503
Scenario: URA0503-ContaCorrente_ContaGarantida_ConsultadeChequeespecial_Consultarchequeespecial_Select

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "1"
	Then um dos textos "limite total disponível;limite da conta;limite total" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0504
Scenario: URA0504-ContaCorrente_ContaGarantida_ConsultadeChequeespecial_Consultarchequeespecial_Private

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "1"
	Then um dos textos "limite total disponível;limite da conta;limite total" for validado, com o tempo de execução "30000" em milissegundos

@URA0573
Scenario: URA0573-Contacorrente_ContaGarantida_ConsultadelimiteChequeespecial_Ouvirnovamenteolimitedechequeespecial_Vangogh

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "1"
	And estou esperando por "30000" milissegundos
	And clico na opcao do menu transacional: "5"
	Then um dos textos "limite total disponível;limite da conta;limite total" for validado, com o tempo de execução "30000" em milissegundos

@URA0574
Scenario: URA0574-Contacorrente_ContaGarantida_AumentodelimitedeChequeespecial_Aumentarolimitedochequeespecial_Vangogh

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "1"
	And estou esperando por "30000" milissegundos
	#Extrato Último dia 1, Extrato Última semana 2, Extrto por período 3, Mais opções 4. 
	And clico na opcao do menu transacional: "4"
	#Informações sobre o limite 1.
	And clico na opcao do menu transacional: "1"
	#Ateração do limite 2.
	And clico na opcao do menu transacional: "2"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	And digito o RAMAL transacional
	Then um dos textos "transferir;ramal" for validado, com o tempo de execução "30000" em milissegundos

@URA0636
Scenario: URA0636-Contacorrente_ContaGarantida_ConsultadelimiteChequeespecial_Ouvirnovamenteolimitedechequeespecial_Select

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "1"
	And estou esperando por "30000" milissegundos
	And clico na opcao do menu transacional: "5"
	Then um dos textos "limite total disponível;limite da conta;limite total" for validado, com o tempo de execução "30000" em milissegundos

@URA0637
Scenario: URA0637-Contacorrente_ContaGarantida_AumentodelimitedeChequeespecial_Aumentarolimitedochequeespecial_Select

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "1"
	And estou esperando por "30000" milissegundos
	#Mais opções 4.
	And clico na opcao do menu transacional: "4"
	#Limite 1.
	And clico na opcao do menu transacional: "1"
	#Aumentar Limite 2.
	And clico na opcao do menu transacional: "2"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	And digito o RAMAL transacional
	Then um dos textos "transferir;ramal" for validado, com o tempo de execução "30000" em milissegundos

@URA0698
Scenario: URA0698-Contacorrente_ContaGarantida_ConsultadelimiteChequeespecial_Ouvirnovamenteolimitedechequeespecial_Private

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "1"
	And estou esperando por "30000" milissegundos
	And clico na opcao do menu transacional: "4"
	#Limite 1, Cadastro 2, Outros Assuntos 3.
	And clico na opcao do menu transacional: "1"
	#Ouvir Novamente 1, Aumentar Limite 2.
	And clico na opcao do menu transacional: "1"
	Then um dos textos "limite total disponível;limite da conta;limite total" for validado, com o tempo de execução "30000" em milissegundos

@URA0699
Scenario: URA0699-Contacorrente_ContaGarantida_AumentodelimitedeChequeespecial_Aumentarolimitedochequeespecial_Private

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "1"
	And estou esperando por "30000" milissegundos
	And clico na opcao do menu transacional: "4"
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "2"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	And digito o RAMAL transacional
	Then um dos textos "transferir;ramal" for validado, com o tempo de execução "30000" em milissegundos