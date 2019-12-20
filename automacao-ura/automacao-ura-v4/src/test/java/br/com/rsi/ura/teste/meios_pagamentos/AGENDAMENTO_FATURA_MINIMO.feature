@AGENDAMENTO_FATURA_MINIMO @MEIOS_PAGAMENTOS
Feature: Meios de Pagamentos -- AGENDAMENTO_FATURA_MINIMO

Background: 
	Given inicializo o 'Relatorio de Dados'
	When clico o numero do telefone da 'Ura'
	
@URA0072
Scenario: URA0072-Agendamento_Fatura_MinimodeFaturaparadatadovencimento_RF_TransacionalFinanceiramodelonovodesenha_Classico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And estou indo para o menu de FATURA
	And realizo o caminho validando as opções para pagamento ou agendamento de FATURA
	Then um dos textos "incluído na próxima fatura;será realizado no dia;melhor data para compra" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0080
Scenario: URA0080-Agendamento_Fatura_MinimodeFaturaparadatadovencimento_RF_TransacionalFinanceiramodeloantigodesenha_Exclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And estou indo para o menu de FATURA
	And realizo o caminho validando as opções para pagamento ou agendamento de FATURA
	Then um dos textos "incluído na próxima fatura;será realizado no dia;melhor data para compra" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0124
Scenario: URA0124-Agendamento_Fatura_MinimodeFaturaparadatadovencimento_RF_TransacionalFinanceiramodeloantigodesenha_Vangogh

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And estou indo para o menu de FATURA
	And realizo o caminho validando as opções para pagamento ou agendamento de FATURA
	Then um dos textos "incluído na próxima fatura;será realizado no dia;melhor data para compra" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0320
Scenario: URA0320-Agendamento_Fatura_MinimodeFaturaparadatadovencimento_RF_FRASEOLOGIA_Private

	And estou indo ao menu principal Private ou Select Fraseologia
	And estou indo para o menu de FATURA
	And realizo o caminho validando as opções para pagamento ou agendamento de FATURA
	Then um dos textos "incluído na próxima fatura;será realizado no dia;melhor data para compra" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0321
Scenario: URA0321-Agendamento_Fatura_MinimodeFaturaparadatadovencimento_RF_FRASEOLOGIA_Select

	And estou indo ao menu principal Private ou Select Fraseologia
	And estou indo para o menu de FATURA
	And realizo o caminho validando as opções para pagamento ou agendamento de FATURA
	Then um dos textos "incluído na próxima fatura;será realizado no dia;melhor data para compra" for validado, com o tempo de execução "30000" em milissegundos