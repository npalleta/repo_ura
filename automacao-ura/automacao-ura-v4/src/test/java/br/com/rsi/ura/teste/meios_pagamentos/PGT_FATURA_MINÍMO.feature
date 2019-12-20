@PGT_FATURA_MINÍMO @MEIOS_PAGAMENTOS
Feature: Meios de Pagamentos -- PGT_FATURA_MINÍMO

Background: 
	Given inicializo o 'Relatorio de Dados'
	When clico o numero do telefone da 'Ura'
	
@URA0040
Scenario: URA0040-Pagamento_Fatura_ValorMínimodaFaturavencida_titularcom1Cartão_RF_TransacionalFinanceiramodelonovodesenha_Exclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And estou indo para o menu de FATURA
	And realizo o caminho validando as opções para pagamento ou agendamento de FATURA
	Then um dos textos "realizado com sucesso;melhor data para compra" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0041
Scenario: URA0041-Pagamento_Fatura_ValorMinimodaFaturavencida_titularcom1Cartao_RF_TransacionalFinanceiramodelonovodesenha_Classico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And estou indo para o menu de FATURA
	And realizo o caminho validando as opções para pagamento ou agendamento de FATURA
	Then um dos textos "realizado com sucesso;melhor data para compra" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0042
Scenario: URA0042-Pagamento_Fatura_ValorMinimodaFaturanadatadevencimento_titularcom1Cartao_RF_TransacionalFinanceiramodelonovodesenha_Exclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And estou indo para o menu de FATURA
	And realizo o caminho validando as opções para pagamento ou agendamento de FATURA
	Then um dos textos "realizado com sucesso;melhor data para compra" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0043
Scenario: URA0043-Pagamento_Fatura_ValorMínimodaFaturanadatadevencimento_titularcom1Cartão_RF_TransacionalFinanceiramodelonovodesenha_Classico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And estou indo para o menu de FATURA
	And realizo o caminho validando as opções para pagamento ou agendamento de FATURA
	Then um dos textos "realizado com sucesso;melhor data para compra" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0044
Scenario: URA0044-Pagamento_Fatura_ValorMínimodaFaturaantesdovencimento_titularcom1Cartão_RF_TransacionalFinanceiramodelonovodesenha_Classico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And estou indo para o menu de FATURA
	And realizo o caminho validando as opções para pagamento ou agendamento de FATURA
	Then um dos textos "realizado com sucesso;melhor data para compra" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0045
Scenario: URA0045-Pagamento_Fatura_ValorMínimodaFaturaantesdovencimento_titularcom1Cartão_RF_TransacionalFinanceiramodelonovodesenha_Exclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And estou indo para o menu de FATURA
	And realizo o caminho validando as opções para pagamento ou agendamento de FATURA
	Then um dos textos "realizado com sucesso;melhor data para compra" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0093
Scenario: URA0093-Pagamento_Fatura_ValorMínimodaFaturanadatadevencimento_titularcom1Cartão_RF_TransacionalFinanceiramodeloantigodesenha_Classico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And estou indo para o menu de FATURA
	And realizo o caminho validando as opções para pagamento ou agendamento de FATURA
	Then um dos textos "realizado com sucesso;melhor data para compra" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0094
Scenario: URA0094-Pagamento_Fatura_ValorMínimodaFaturanadatadevencimento_titularcom1Cartão_RF_TransacionalFinanceiramodeloantigodesenha_Exclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And estou indo para o menu de FATURA
	And realizo o caminho validando as opções para pagamento ou agendamento de FATURA
	Then um dos textos "realizado com sucesso;melhor data para compra" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0095
Scenario: URA0095-Pagamento_Fatura_ValorMínimodaFaturaantesdovencimento_titularcom1Cartão_RF_TransacionalFinanceiramodeloantigodesenha_Exclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And estou indo para o menu de FATURA
	And realizo o caminho validando as opções para pagamento ou agendamento de FATURA
	Then um dos textos "realizado com sucesso;melhor data para compra" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0096
Scenario: URA0096-Pagamento_Fatura_ValorMínimodaFaturaantesdovencimento_titularcom1Cartão_RF_TransacionalFinanceiramodeloantigodesenha_Classico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And estou indo para o menu de FATURA
	And realizo o caminho validando as opções para pagamento ou agendamento de FATURA
	Then um dos textos "realizado com sucesso;melhor data para compra" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0268
Scenario: URA0268-Pagamento_Fatura_ValorMínimodaFaturavencida_titularcom1Cartão_RF_TransacionalFinanceiramodeloantigodesenha_Classico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And estou indo para o menu de FATURA
	And realizo o caminho validando as opções para pagamento ou agendamento de FATURA
	Then um dos textos "realizado com sucesso;melhor data para compra" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0301
Scenario: URA0301-Pagamento_Fatura_ValorMínimodaFaturavencida_titularcom1Cartão_RF_FRASEOLOGIA_Classico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Fraseologia
	And estou indo para o menu de FATURA
	And realizo o caminho validando as opções para pagamento ou agendamento de FATURA
	Then um dos textos "realizado com sucesso;melhor data para compra" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0302
Scenario: URA0302-Pagamento_Fatura_ValorMínimodaFaturavencida_titularcom1Cartão_RF_FRASEOLOGIA_Exclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Fraseologia
	And estou indo para o menu de FATURA
	And realizo o caminho validando as opções para pagamento ou agendamento de FATURA
	Then um dos textos "realizado com sucesso;melhor data para compra" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0416
Scenario: URA0416-Pagamento_Fatura_ValorMínimodaFaturavencida_titularcom1Cartão_RF_TransacionalFinanceiramodelonovodesenha_Cartãomultiplo_Classico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And estou indo para o menu de FATURA
	And realizo o caminho validando as opções para pagamento ou agendamento de FATURA
	Then um dos textos "realizado com sucesso;melhor data para compra" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0417
Scenario: URA0417-Pagamento_Fatura_ValorMínimodaFaturanadatadevencimento_titularcom1Cartão_RF_TransacionalFinanceiramodelonovodesenha_Cartãomultiplo_Classico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And estou indo para o menu de FATURA
	And realizo o caminho validando as opções para pagamento ou agendamento de FATURA
	Then um dos textos "realizado com sucesso;melhor data para compra" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0429
Scenario: URA0429-Pagamento_Fatura_ValorMínimodaFaturanadatadevencimento_titularcom1Cartão_RF_TransacionalFinanceiramodeloantigodesenha_Cartãomultiplo_Classico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And estou indo para o menu de FATURA
	And realizo o caminho validando as opções para pagamento ou agendamento de FATURA
	Then um dos textos "realizado com sucesso;melhor data para compra" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0443
Scenario: URA0443-Pagamento_Fatura_ValorMínimodaFaturavencida_titularcom1Cartão_RF_TransacionalFinanceiramodeloantigodesenha_Cartãomultiplo_Classico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And estou indo para o menu de FATURA
	And realizo o caminho validando as opções para pagamento ou agendamento de FATURA
	Then um dos textos "realizado com sucesso;melhor data para compra" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0448
Scenario: URA0448-Pagamento_Fatura_ValorMínimodaFaturavencida_titularcom1Cartão_RF_FRASEOLOGIA_Cartãomultiplo_Classico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Fraseologia
	And estou indo para o menu de FATURA
	And realizo o caminho validando as opções para pagamento ou agendamento de FATURA
	Then um dos textos "realizado com sucesso;melhor data para compra" for validado, com o tempo de execução "30000" em milissegundos