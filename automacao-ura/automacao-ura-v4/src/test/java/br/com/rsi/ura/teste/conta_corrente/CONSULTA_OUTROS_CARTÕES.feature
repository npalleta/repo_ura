@CONSULTA_OUTROS_CARTÕES @CONTA_CORRENTE
Feature: Conta Corrente -- CONSULTA_OUTROS_CARTÕES

Background: 
	Given inicializo o 'Relatorio de Dados'
	When clico o numero do telefone da 'Ura'

@URA0158
Scenario: URA0158-Consulta_Outroscartões_OutroCartãoclienteapenascomCartãoDebito_RF_TransacionalConsultiva_modelonovodesenha_Exclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "5"
	And clico na opcao do menu transacional: "1"
	Then um dos textos "débitos e movimentações;consultar débitos" for validado, com o tempo de execução "25000" em milissegundos

@URA0221
Scenario: URA0221-Consulta_Outroscartoes_OutroCartaoclienteapenascomCartaoDebito_RF_TransacionalConsultivamodelonovodesenha_Private

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "2"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "11764" milissegundos
	And clico na opcao do menu transacional: "5"
	And clico na opcao do menu transacional: "1"
	Then um dos textos "débitos e movimentações;consultar débitos" for validado, com o tempo de execução "25000" em milissegundos
	
@URA0347
Scenario: URA0347-Consulta_Outroscartões_OutroCartãoclienteapenascomCartãoDebito_RF_FRASEOLOGIA_Vangogh

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Fraseologia
	And um dos textos "pagamento;boleto;fatura;transferência" for validado, com o tempo de execução "25000" em milissegundos
	And clico na opcao do menu: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "11764" milissegundos
	And clico na opcao do menu: "5"
	And um dos textos "conta;cartão;débito;lançamento" for validado, com o tempo de execução "12000" em milissegundos
	And clico na opcao do menu: "1"
	Then um dos textos "débitos e movimentações;consultar débitos" for validado, com o tempo de execução "25000" em milissegundos

@URA0369
Scenario: URA0369-Consulta_Outroscartoes_OutroCartaoclienteapenascomCartaoDebito_RF_FRASEOLOGIA_Select

	And estou indo ao menu principal Private ou Select Fraseologia
	And um dos textos "pagamento;boleto;fatura;transferência" for validado, com o tempo de execução "25000" em milissegundos
	And clico na opcao do menu: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "11764" milissegundos
	And clico na opcao do menu: "5"
	And um dos textos "conta;cartão;débito;lançamento" for validado, com o tempo de execução "12000" em milissegundos
	And clico na opcao do menu: "1"
	Then um dos textos "débitos e movimentações;consultar débitos" for validado, com o tempo de execução "25000" em milissegundos