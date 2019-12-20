@AGENDAMENTO_FATURA_MINIMO_E_TOTAL @MEIOS_PAGAMENTOS
Feature: Meios de Pagamentos -- AGENDAMENTO_FATURA_MINIMO_E_TOTAL

Background: 
	Given inicializo o 'Relatorio de Dados'
	When clico o numero do telefone da 'Ura' 
	
@URA0074
Scenario: URA0074-Agendamento_Fatura_ValorentreoMinimoeoTotaldeFaturaparadatadovencimento_RF_TransacionalFinanceiramodelonovodesenha_Classico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And estou indo para o menu de FATURA
	And realizo o caminho validando as opções para pagamento ou agendamento de FATURA
	Then um dos textos "incluído na próxima fatura;será realizado no dia;melhor data para compra" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0081
Scenario: URA0081-Agendamento_Fatura_ValorentreoMínimoeoTotaldeFaturaparadatadovencimento_RF_FRASEOLOGIA_Clássico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And estou indo para o menu de FATURA
	And realizo o caminho validando as opções para pagamento ou agendamento de FATURA
	Then um dos textos "incluído na próxima fatura;será realizado no dia;melhor data para compra" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0322
Scenario: URA0322-Agendamento_Fatura_ValorentreoMinimoeoTotaldeFaturaparadatadovencimento_RF_FRASEOLOGIA_Private

	And estou indo ao menu principal Private ou Select Fraseologia
	And estou indo para o menu de FATURA
	And realizo o caminho validando as opções para pagamento ou agendamento de FATURA
	Then um dos textos "incluído na próxima fatura;será realizado no dia;melhor data para compra" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0323
Scenario: URA0323-Agendamento_Fatura_ValorentreoMinimoeoTotaldeFaturaparadatadovencimento_RF_FRASEOLOGIA_Select

	And estou indo ao menu principal Private ou Select Fraseologia
	And estou indo para o menu de FATURA
	And realizo o caminho validando as opções para pagamento ou agendamento de FATURA
	Then um dos textos "incluído na próxima fatura;será realizado no dia;melhor data para compra" for validado, com o tempo de execução "30000" em milissegundos