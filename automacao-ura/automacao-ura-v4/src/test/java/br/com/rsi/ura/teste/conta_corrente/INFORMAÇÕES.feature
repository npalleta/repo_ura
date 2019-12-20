@INFORMAÇÕES @CONTA_CORRENTE
Feature: Conta Corrente -- INFORMAÇÕES

Background: 
	Given inicializo o 'Relatorio de Dados'
	When clico o numero do telefone da 'Ura'
	
@URA0541
Scenario: URA0541-Contacorrente_Informacao_Consultadeinformacao_Consultarinformacoessobrecontacorrente_Modeloantigosenha4digitos_Vangogh

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "1"
	And estou esperando por "30000" milissegundos
	And clico na opcao do menu transacional: "4"
	Then um dos textos "limite da conta;alteração cadastral;outros assuntos" for validado, com o tempo de execução "25000" em milissegundos
	
@URA0565
Scenario: URA0565-Contacorrente_Informação_Consultadeinformação_Consultarmaisopçõesnomenupósextrato_Modelonovosenha6dígitos_Vangogh

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "1"
	And estou esperando por "30000" milissegundos
	And clico na opcao do menu transacional: "4"
	Then um dos textos "limite da conta;alteração cadastral;outros assuntos" for validado, com o tempo de execução "25000" em milissegundos

@URA0572
Scenario: URA0572-ContaCorrente_Informacao_Consultadeinformacao_ConsultarmenuoutrasinformacoesdasuaContaCorrente_ModeloNovoSenha6Digitos_Vangogh

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "1"
	And estou esperando por "30000" milissegundos
	And clico na opcao do menu transacional: "4"
	Then um dos textos "limite da conta;alteração cadastral;outros assuntos" for validado, com o tempo de execução "25000" em milissegundos