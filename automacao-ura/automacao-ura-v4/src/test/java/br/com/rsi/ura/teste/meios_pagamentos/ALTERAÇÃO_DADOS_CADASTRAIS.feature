@ALTERAÇÃO_DADOS_CADASTRAIS @MEIOS_PAGAMENTOS
Feature: Meios de Pagamentos -- ALTERAÇÃO_DADOS_CADASTRAIS

Background: 
	Given inicializo o 'Relatorio de Dados'
	When clico o numero do telefone da 'Ura'
	
@URA0152
Scenario: URA0152-Alteracao_Dadoscadastrais_Opcaoprosseguir_RF_TransacionalConsultivamodelonovodesenha_Classico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "3"
	And clico na opcao do menu transacional: "1"
	And estou esperando por "35000" milissegundos
	And clico na opcao do menu transacional: "4"
	And clico na opcao do menu transacional: "2"
	And clico na opcao do menu transacional: "2"
	And clico na opcao do menu transacional: "1"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "15000" milissegundos
	Then estou na opcao do menu do ura com o texto " transferir", com o tempo total de execução de "35651" milissegundos	
	
@URA0342
Scenario: URA0342-Alteração_Dadoscadastrais_ClientecomAPP_IB_RF_FRASEOLOGIA_Vangogh

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Fraseologia
	And um dos textos "pagamento;boleto;fatura;atendimento" for validado, com o tempo de execução "26000" em milissegundos
	And clico na opcao do menu: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu: "1"
	And um dos textos "saldo;total;conta corrente;total;" for validado, com o tempo de execução "36000" em milissegundos
	And clico na opcao do menu: "4"
	And um dos textos "alteração;informações;limite;conta" for validado, com o tempo de execução "15200" em milissegundos
	And clico na opcao do menu: "2"
	And um dos textos "digitar" for validado, com o tempo de execução "17200" em milissegundos
	And clico na opcao do menu: "1"
	Then um dos textos "para alterar dados;primeiro você deve;fazer o seu login" for validado, com o tempo de execução "18000" em milissegundos 
	
@URA0364
Scenario: URA0364-Alteracao_Dadoscadastrais_ClientecomAPPIB_RF_FRASEOLOGIA_Select

 	And estou indo ao menu principal Private ou Select Fraseologia
	And um dos textos "pagamento;boleto;fatura;atendimento" for validado, com o tempo de execução "26000" em milissegundos
	And clico na opcao do menu: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu: "1"
	And um dos textos "saldo;total;conta corrente;total;" for validado, com o tempo de execução "36000" em milissegundos
	And clico na opcao do menu: "4"
	And um dos textos "alteração;informações;limite;conta" for validado, com o tempo de execução "15200" em milissegundos
	And clico na opcao do menu: "2"
	And um dos textos "digitar" for validado, com o tempo de execução "17200" em milissegundos
	And clico na opcao do menu: "1"
	Then um dos textos "para alterar dados;primeiro você deve;fazer o seu login" for validado, com o tempo de execução "18000" em milissegundos  
	
@URA0381
Scenario: URA0381-Alteracao_Dadoscadastrais_ClientecomAPPIB_RF_FRASEOLOGIA_Private

	And estou indo ao menu principal Private ou Select Fraseologia
	And um dos textos "pagamento;boleto;fatura;atendimento" for validado, com o tempo de execução "26000" em milissegundos
	And clico na opcao do menu: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu: "1"
	And um dos textos "saldo;total;conta corrente;total;" for validado, com o tempo de execução "36000" em milissegundos
	And clico na opcao do menu: "4"
	And um dos textos "alteração;informações;limite;conta" for validado, com o tempo de execução "15200" em milissegundos
	And clico na opcao do menu: "2"
	And um dos textos "digitar" for validado, com o tempo de execução "17200" em milissegundos
	And clico na opcao do menu: "1"
	Then um dos textos "para alterar dados;primeiro você deve;fazer o seu login" for validado, com o tempo de execução "18000" em milissegundos 
	
@URA0404
Scenario: URA0404-Alteracao_Dadoscadastrais_ClientecomAPPIB_RF_FRASEOLOGIA_Cartaomultiplo_Vangogh

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Fraseologia
	And um dos textos "pagamento;boleto;fatura;atendimento" for validado, com o tempo de execução "26000" em milissegundos
	And clico na opcao do menu: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu: "1"
	And um dos textos "saldo;total;conta corrente;total;" for validado, com o tempo de execução "36000" em milissegundos
	And clico na opcao do menu: "4"
	And um dos textos "alteração;informações;limite;conta" for validado, com o tempo de execução "15200" em milissegundos
	And clico na opcao do menu: "2"
	And um dos textos "digitar" for validado, com o tempo de execução "17200" em milissegundos
	And clico na opcao do menu: "1"
	Then um dos textos "para alterar dados;primeiro você deve;fazer o seu login" for validado, com o tempo de execução "18000" em milissegundos 