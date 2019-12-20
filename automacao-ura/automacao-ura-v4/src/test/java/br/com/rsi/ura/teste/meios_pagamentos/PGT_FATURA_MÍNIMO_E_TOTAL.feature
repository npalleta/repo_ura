@PGT_FATURA_MÍNIMO_E_TOTAL @MEIOS_PAGAMENTOS
Feature: Meios de Pagamentos -- PGT_FATURA_MINÍMO_E_TOTAL

Background: 
	Given inicializo o 'Relatorio de Dados'
	When clico o numero do telefone da 'Ura'
	
@URA0046
Scenario: URA0046-Pagamento_Fatura_ValorentreoMínimoeoTotaldaFaturavencida_titularcom1Cartão_RF_TransacionalFinanceiramodelonovodesenha_Exclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And estou indo para o menu de FATURA
	And realizo o caminho validando as opções para pagamento ou agendamento de FATURA
	Then um dos textos "realizado com sucesso;melhor data para compra;incluído na próxima fatura;sucesso" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0047
Scenario: URA0047-Pagamento_Fatura_ValorentreoMinimoeoTotaldaFaturavencida_titularcom1Cartao_RF_TransacionalFinanceiramodelonovodesenha_Classico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And estou indo para o menu de FATURA
	And realizo o caminho validando as opções para pagamento ou agendamento de FATURA
	Then um dos textos "realizado com sucesso;melhor data para compra;incluído na próxima fatura;sucesso" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0048
Scenario: URA0048-Pagamento_Fatura_ValorentreoMínimoeoTotaldaFaturanadatadevencimento_titularcom1Cartão_RF_TransacionalFinanceiramodelonovodesenha_Clássico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And estou indo para o menu de FATURA
	And realizo o caminho validando as opções para pagamento ou agendamento de FATURA
	Then um dos textos "realizado com sucesso;melhor data para compra;incluído na próxima fatura;sucesso" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0049
Scenario: URA0049-Pagamento_Fatura_ValorentreoMínimoeoTotaldaFaturanadatadevencimento_titularcom1Cartão_RF_TransacionalFinanceiramodelonovodesenha_Exclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And estou indo para o menu de FATURA
	And realizo o caminho validando as opções para pagamento ou agendamento de FATURA
	Then um dos textos "realizado com sucesso;melhor data para compra;incluído na próxima fatura;sucesso" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0050
Scenario: URA0050-Pagamento_Fatura_ValorentreoMínimoeoTotaldaFaturaantesdovencimento_titularcom1Cartão_RF_TransacionalFinanceiramodelonovodesenha_Clássico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And estou indo para o menu de FATURA
	And realizo o caminho validando as opções para pagamento ou agendamento de FATURA
	Then um dos textos "realizado com sucesso;melhor data para compra;incluído na próxima fatura;sucesso" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0097
Scenario: URA0097-Pagamento_Fatura_ValorentreoMínimoeoTotaldaFaturavencida_titularcom1Cartão_RF_TransacionalFinanceiramodeloantigodesenha_Clássico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And estou indo para o menu de FATURA
	And realizo o caminho validando as opções para pagamento ou agendamento de FATURA
	Then um dos textos "realizado com sucesso;melhor data para compra;incluído na próxima fatura;sucesso" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0098
Scenario: URA0098-Pagamento_Fatura_ValorentreoMínimoeoTotaldaFaturavencida_titularcom1Cartão_RF_TransacionalFinanceiramodeloantigodesenha_Exclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And estou indo para o menu de FATURA
	And realizo o caminho validando as opções para pagamento ou agendamento de FATURA
	Then um dos textos "realizado com sucesso;melhor data para compra;incluído na próxima fatura;sucesso" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0099
Scenario: URA0099-Pagamento_Fatura_ValorentreoMínimoeoTotaldaFaturanadatadevencimento_titularcom1Cartão_RF_TransacionalFinanceiramodeloantigodesenha_Exclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And estou indo para o menu de FATURA
	And realizo o caminho validando as opções para pagamento ou agendamento de FATURA
	Then um dos textos "realizado com sucesso;melhor data para compra;incluído na próxima fatura;sucesso" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0100
Scenario: URA0100-Pagamento_Fatura_ValorentreoMínimoeoTotaldaFaturanadatadevencimento_titularcom1Cartão_RF_TransacionalFinanceiramodeloantigodesenha_Clássico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And estou indo para o menu de FATURA
	And realizo o caminho validando as opções para pagamento ou agendamento de FATURA
	Then um dos textos "realizado com sucesso;melhor data para compra;incluído na próxima fatura;sucesso" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0101
Scenario: URA0101-Pagamento_Fatura_ValorentreoMínimoeoTotaldaFaturaantesdovencimento_titularcom1Cartão_RF_TransacionalFinanceiramodeloantigodesenha_Exclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And estou indo para o menu de FATURA
	And realizo o caminho validando as opções para pagamento ou agendamento de FATURA
	Then um dos textos "realizado com sucesso;melhor data para compra;incluído na próxima fatura;sucesso" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0303
Scenario: URA0303-Pagamento_Fatura_ValorentreoMinimoeoTotaldaFaturanadatadevencimento_titularcom1Cartao_RF_FRASEOLOGIA_Private

	And estou indo ao menu principal Private ou Select Fraseologia
	And estou indo para o menu de FATURA
	And realizo o caminho validando as opções para pagamento ou agendamento de FATURA
	Then um dos textos "realizado com sucesso;melhor data para compra;incluído na próxima fatura;sucesso" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0419
Scenario: URA0419-Pagamento_Fatura_ValorentreoMinimoeoTotaldaFaturavencida_titularcom1Cartao_RF_TransacionalFinanceiramodelonovodesenha_Cartaomultiplo_Classico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And estou indo para o menu de FATURA
	And realizo o caminho validando as opções para pagamento ou agendamento de FATURA
	Then um dos textos "realizado com sucesso;melhor data para compra;incluído na próxima fatura;sucesso" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0420
Scenario: URA0420-Pagamento_Fatura_ValorentreoMínimoeoTotaldaFaturanadatadevencimento_titularcom1Cartão_RF_TransacionalFinanceiramodelonovodesenha_Cartãomultiplo_Clássico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And estou indo para o menu de FATURA
	And realizo o caminho validando as opções para pagamento ou agendamento de FATURA
	Then um dos textos "realizado com sucesso;melhor data para compra;incluído na próxima fatura;sucesso" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0431
Scenario: URA0431-Pagamento_Fatura_ValorentreoMínimoeoTotaldaFaturavencida_titularcom1Cartão_RF_TransacionalFinanceiramodeloantigodesenha_Cartãomultiplo_Clássico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And estou indo para o menu de FATURA
	And realizo o caminho validando as opções para pagamento ou agendamento de FATURA
	Then um dos textos "realizado com sucesso;melhor data para compra;incluído na próxima fatura;sucesso" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0432
Scenario: URA0432-Pagamento_Fatura_ValorentreoMínimoeoTotaldaFaturanadatadevencimento_titularcom1Cartão_RF_TransacionalFinanceiramodeloantigodesenha_Cartãomultiplo_Clássico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And estou indo para o menu de FATURA
	And realizo o caminho validando as opções para pagamento ou agendamento de FATURA
	Then um dos textos "realizado com sucesso;melhor data para compra;incluído na próxima fatura;sucesso" for validado, com o tempo de execução "30000" em milissegundos