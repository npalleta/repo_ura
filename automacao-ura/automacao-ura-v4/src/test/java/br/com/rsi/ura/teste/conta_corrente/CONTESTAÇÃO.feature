@CONTESTAÇÃO @CONTA_CORRENTE
Feature: Conta Corrente -- CONTESTAÇÃO

Background: 
	Given inicializo o 'Relatorio de Dados'
	When clico o numero do telefone da 'Ura'

@URA0566
Scenario: URA0566-ContaCorrente_Contestacao_Consultacontestacao_Consultarcontestacaodecobrancamenumaisinformacoes_Vangogh_ModeloNovoSenha6Digitos

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "11764" milissegundos
	#1 Extrato, 2 Poupança, 3 Cheque 4, 5 Cartão, 6 Mais.
	And clico na opcao do menu transacional: "5"
	And estou na opcao de cartões indo ao menu principal
	#2 Contestação
	And clico na opcao do menu transacional: "2"
	#4 Contestar algum lançamento
	And clico na opcao do menu transacional: "4"
	#2 Contestar algum lançamento que você não reconhece
	And clico na opcao do menu transacional: "2"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "20000" milissegundos
	And digito o RAMAL transacional
	Then um dos textos "transferir;ramal" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0595
Scenario: URA0595-Contacorrente_Contestação_Consultacontestação_Consultarmenucontestação_Vangogh

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "11764" milissegundos
	#1 Extrato, 2 Poupança, 3 Cheque 4, 5 Cartão, 6 Mais.
	And clico na opcao do menu transacional: "5"
	And estou na opcao de cartões indo ao menu principal
	#2 Contestação
	And clico na opcao do menu transacional: "2"
	#4 Contestar algum lançamento
	And clico na opcao do menu transacional: "4"
	Then um dos textos "para contestar lançamentos;contestar lançamentos;contestar lançamentos que você não reconhece;contestar" for validado, com o tempo de execução "25000" em milissegundos

@URA0597
Scenario: URA0597-ContaCorrente_Contestação_ConsultaContestação_consultarMenuOutrasOpções_ClienteComApenasUmaContaCorrente_Vangogh

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "11764" milissegundos
	#1 Extrato, 2 Poupança, 3 Cheque 4, 5 Cartão, 6 Mais.
	And clico na opcao do menu transacional: "5"
	And estou na opcao de cartões indo ao menu principal
	#2 Contestação
	And clico na opcao do menu transacional: "2"
	#4 Contestar algum lançamento
	And clico na opcao do menu transacional: "4"
	#3 outras opções
	And clico na opcao do menu transacional: "3"
	Then um dos textos " contas relacionadas;contratar;investimentos;bloqueio do cartão;escolha uma opção" for validado, com o tempo de execução "25000" em milissegundos
	
@URA0602
Scenario: URA0602-Contacorrente_Contestação_Consultacontestação_consultarmenuoutrasopçõesclientecomapenasumacontacorrente_Vangogh

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "11764" milissegundos
	#1 Extrato, 2 Poupança, 3 Cheque 4, 5 Cartão, 6 Mais.
	And clico na opcao do menu transacional: "5"
	And estou na opcao de cartões indo ao menu principal
	#2 Contestação
	And clico na opcao do menu transacional: "2"
	#4 Contestar algum lançamento
	And clico na opcao do menu transacional: "4"
	#3 outras opções
	And clico na opcao do menu transacional: "3"
	Then um dos textos " contas relacionadas;contratar;investimentos;bloqueio do cartão;escolha uma opção" for validado, com o tempo de execução "25000" em milissegundos

@URA0657
Scenario: URA0657-Contacorrente_Contestacao_Consultacontestacao_Consultarmenucontestacao_Select

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	#1 Extrato, 2 Poupança, 3 Cheque 4, 5 Cartão, 6 Mais.
	And clico na opcao do menu transacional: "5"
	And estou na opcao de cartões indo ao menu principal
	#2 Contestação
	And clico na opcao do menu transacional: "2"
	#4 Contestar algum lançamento
	And clico na opcao do menu transacional: "4"
	#2 Contestar algum lançamento que você não reconhece
	And clico na opcao do menu transacional: "2"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "20000" milissegundos
	And digito o RAMAL transacional
	Then um dos textos "transferir;ramal" for validado, com o tempo de execução "30000" em milissegundos

@URA0659
Scenario: URA0659-Contacorrente_Contestacao_Consultacontestacao_consultarmenuoutrasopcoesclientecomapenasumacontacorrente_Select

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	#1 Extrato, 2 Poupança, 3 Cheque 4, 5 Cartão, 6 Mais.
	And clico na opcao do menu transacional: "5"
	And estou na opcao de cartões indo ao menu principal
	#2 Contestação
	And clico na opcao do menu transacional: "2"
	#4 Contestar algum lançamento
	And clico na opcao do menu transacional: "4"
	#3 outras opções
	And clico na opcao do menu transacional: "3"
	Then um dos textos " contas relacionadas;contratar;investimentos;bloqueio do cartão;escolha uma opção" for validado, com o tempo de execução "25000" em milissegundos

@URA0664
Scenario: URA0664-Contacorrente_Contestacao_Consultacontestacao_consultarmenuoutrasopcoesclientecomapenasumacontacorrente_Select

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "11764" milissegundos
	#1 Extrato, 2 Poupança, 3 Cheque 4, 5 Cartão, 6 Mais.
	And clico na opcao do menu transacional: "5"
	And estou na opcao de cartões indo ao menu principal
	#2 Contestação
	And clico na opcao do menu transacional: "2"
	#4 Contestar algum lançamento
	And clico na opcao do menu transacional: "4"
	#3 outras opções
	And clico na opcao do menu transacional: "3"
	Then um dos textos " contas relacionadas;contratar;investimentos;bloqueio do cartão;escolha uma opção" for validado, com o tempo de execução "25000" em milissegundos

@URA0691
Scenario: URA0691-Contacorrente_Contestacao_Consultacontestacao_Consultarcontestacaodecobrancamenumaisinformacoes_Private

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "11764" milissegundos
	#1 Extrato, 2 Poupança, 3 Cheque 4, 5 Cartão, 6 Mais.
	And clico na opcao do menu transacional: "5"
	And estou na opcao de cartões indo ao menu principal
	#2 Contestação
	And clico na opcao do menu transacional: "2"
	#4 Contestar algum lançamento
	And clico na opcao do menu transacional: "4"
	#2 Contestar algum lançamento que você não reconhece
	And clico na opcao do menu transacional: "2"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "20000" milissegundos
	And digito o RAMAL transacional
	Then um dos textos "transferir;ramal" for validado, com o tempo de execução "30000" em milissegundos

@URA0720
Scenario: URA0720-Contacorrente_Contestacao_Consultacontestacao_Consultarmenucontestacao_Private

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "11764" milissegundos
	#1 Extrato, 2 Poupança, 3 Cheque 4, 5 Cartão, 6 Mais.
	And clico na opcao do menu transacional: "5"
	And estou na opcao de cartões indo ao menu principal
	#2 Contestação
	And clico na opcao do menu transacional: "2"
	#4 Contestar algum lançamento
	And clico na opcao do menu transacional: "4"
	#3 outras opções
	And clico na opcao do menu transacional: "3"
	Then um dos textos " contas relacionadas;contratar;investimentos;bloqueio do cartão;escolha uma opção" for validado, com o tempo de execução "25000" em milissegundos

@URA0722
Scenario: URA0722-Contacorrente_Contestação_Consultacontestação_consultarmenuoutrasopçõesclientecomapenasumacontacorrente_Private

	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "11764" milissegundos
	#1 Extrato, 2 Poupança, 3 Cheque 4, 5 Cartão, 6 Mais.
	And clico na opcao do menu transacional: "5"
	And estou na opcao de cartões indo ao menu principal
	#2 Contestação
	And clico na opcao do menu transacional: "2"
	#4 Contestar algum lançamento
	And clico na opcao do menu transacional: "4"
	#3 outras opções
	And clico na opcao do menu transacional: "3"
	Then um dos textos " contas relacionadas;contratar;investimentos;bloqueio do cartão;escolha uma opção" for validado, com o tempo de execução "25000" em milissegundos

@URA0728
Scenario: URA0728-Contacorrente_Contestação_Consultacontestação_consultarmenuoutrasopçõesclientecomapenasumacontacorrente_Private

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "11764" milissegundos
	#1 Extrato, 2 Poupança, 3 Cheque 4, 5 Cartão, 6 Mais.
	And clico na opcao do menu transacional: "5"
	And estou na opcao de cartões indo ao menu principal
	#2 Contestação
	And clico na opcao do menu transacional: "2"
	#4 Contestar algum lançamento
	And clico na opcao do menu transacional: "4"
	#3 outras opções
	And clico na opcao do menu transacional: "3"
	Then um dos textos " contas relacionadas;contratar;investimentos;bloqueio do cartão;escolha uma opção" for validado, com o tempo de execução "25000" em milissegundos