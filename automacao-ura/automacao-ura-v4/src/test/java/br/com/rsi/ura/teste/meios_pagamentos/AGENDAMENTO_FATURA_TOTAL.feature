@AGENDAMENTO_FATURA_TOTAL @MEIOS_PAGAMENTOS
Feature: Meios de Pagamentos -- AGENDAMENTO_FATURA_TOTAL

Background: 
	Given inicializo o 'Relatorio de Dados'
	When clico o numero do telefone da 'Ura'
	
@URA0071
Scenario: URA0071-Agendamento_Fatura_TotaldeFaturaparadatadovencimento_RF_TransacionalFinanceiramodelonovodesenha_Exclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And estou indo para o menu de FATURA
	And realizo o caminho validando as opções para pagamento ou agendamento de FATURA
	Then um dos textos "incluído na próxima fatura;será realizado no dia;melhor data para compra" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0079
Scenario: URA0079-Agendamento_Fatura_TotaldeFaturaparadatadovencimento_RF_TransacionalFinanceiramodeloantigodesenha_Classico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And estou indo para o menu de FATURA
	And realizo o caminho validando as opções para pagamento ou agendamento de FATURA
	Then um dos textos "incluído na próxima fatura;será realizado no dia;melhor data para compra" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0318
Scenario: URA0318-Agendamento_Fatura_TotaldeFaturaparadatadovencimento_RF_FRASEOLOGIA_Private

	And estou indo ao menu principal Private ou Select Fraseologia
	And estou indo para o menu de FATURA
	And realizo o caminho validando as opções para pagamento ou agendamento de FATURA
	Then um dos textos "incluído na próxima fatura;será realizado no dia;melhor data para compra" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0319
Scenario: URA0319-Agendamento_Fatura_TotaldeFaturaparadatadovencimento_RF_FRASEOLOGIA_Select

	And estou indo ao menu principal Private ou Select Fraseologia
	And estou indo para o menu de FATURA
	And realizo o caminho validando as opções para pagamento ou agendamento de FATURA
	Then um dos textos "incluído na próxima fatura;será realizado no dia;melhor data para compra" for validado, com o tempo de execução "30000" em milissegundos