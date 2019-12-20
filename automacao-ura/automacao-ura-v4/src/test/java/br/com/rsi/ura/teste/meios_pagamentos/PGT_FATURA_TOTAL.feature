@PGT_FATURA_TOTAL @MEIOS_PAGAMENTOS
Feature: Meios de Pagamentos -- PGT_FATURA_TOTAL

Background: 
	Given inicializo o 'Relatorio de Dados'
	When clico o numero do telefone da 'Ura'
	
@URA0034
Scenario: URA0034-Pagamento_Fatura_ValorTotaldaFaturavencida_titularcom1Cartao_RF_TransacionalFinanceiramodelonovodesenha_Exclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And estou indo para o menu de FATURA
	And realizo o caminho validando as opções para pagamento ou agendamento de FATURA
	Then um dos textos "realizado com sucesso;melhor data para compra" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0035
Scenario: URA0035-Pagamento_Fatura_ValorTotaldaFaturavencida_titularcom1Cartão_RF_TransacionalFinanceiramodelonovodesenha_Clássico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And estou indo para o menu de FATURA
	And realizo o caminho validando as opções para pagamento ou agendamento de FATURA
	Then um dos textos "realizado com sucesso;melhor data para compra" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0036
Scenario: URA0036-Pagamento_Fatura_ValorTotaldaFaturanadatadevencimento_titularcom1Cartão_RF_TransacionalFinanceiramodelonovodesenha_Clássico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And estou indo para o menu de FATURA
	And realizo o caminho validando as opções para pagamento ou agendamento de FATURA
	Then um dos textos "realizado com sucesso;melhor data para compra" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0038
Scenario: URA0038-Pagamento_Fatura_ValorTotaldaFaturaantesdovencimento_titularcom1Cartão_RF_TransacionalFinanceiramodelonovodesenha_Exclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And estou indo para o menu de FATURA
	And realizo o caminho validando as opções para pagamento ou agendamento de FATURA
	Then um dos textos "realizado com sucesso;melhor data para compra" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0039
Scenario: URA0039-Pagamento_Fatura_ValorTotaldaFaturaantesdovencimento_titularcom1Cartao_RF_TransacionalFinanceiramodelonovodesenha_Classico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And estou indo para o menu de FATURA
	And realizo o caminho validando as opções para pagamento ou agendamento de FATURA
	Then um dos textos "realizado com sucesso;melhor data para compra" for validado, com o tempo de execução "30000" em milissegundos

@URA0088
Scenario: URA0088-Pagamento_Fatura_ValorTotaldaFaturavencida_titularcom1Cartão_RF_TransacionalFinanceiramodeloantigodesenha_Clássico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And estou indo para o menu de FATURA
	And realizo o caminho validando as opções para pagamento ou agendamento de FATURA
	Then um dos textos "realizado com sucesso;melhor data para compra" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0089
Scenario: URA0089-Pagamento_Fatura_ValorTotaldaFaturavencida_titularcom1Cartão_RF_TransacionalFinanceiramodeloantigodesenha_Exclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And estou indo para o menu de FATURA
	And realizo o caminho validando as opções para pagamento ou agendamento de FATURA
	Then um dos textos "realizado com sucesso;melhor data para compra" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0090
Scenario: URA0090-Pagamento_Fatura_ValorTotaldaFaturanadatadevencimento_titularcom1Cartão_RF_TransacionalFinanceiramodeloantigodesenha_Exclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And estou indo para o menu de FATURA
	And realizo o caminho validando as opções para pagamento ou agendamento de FATURA
	Then um dos textos "realizado com sucesso;melhor data para compra" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0091
Scenario: URA0091-Pagamento_Fatura_ValorTotaldaFaturaantesdovencimento_titularcom1Cartão_RF_TransacionalFinanceiramodeloantigodesenha_Vangogh

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And estou indo para o menu de FATURA
	And realizo o caminho validando as opções para pagamento ou agendamento de FATURA
	Then um dos textos "realizado com sucesso;melhor data para compra" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0106
Scenario: URA0106-Pagamento_Fatura_ValorTotaldaFaturanadatadevencimento_titularcom1Cartão_RF_TransacionalFinanceiramodelonovodesenha_Exclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And estou indo para o menu de FATURA
	And realizo o caminho validando as opções para pagamento ou agendamento de FATURA
	Then um dos textos "realizado com sucesso;melhor data para compra" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0194
Scenario: URA0194-Pagamento_Fatura_FaturaCartãodecrédito_RF_TransacionalFinanceiramodelonovodesenha_Private

	And estou indo ao menu principal Private ou Select Transacional
	And estou indo para o menu de FATURA
	And realizo o caminho validando as opções para pagamento ou agendamento de FATURA
	Then um dos textos "realizado com sucesso;melhor data para compra" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0266
Scenario: URA0266-Pagamento_Fatura_ValorTotaldaFaturanadatadevencimento_titularcom1Cartão_RF_TransacionalFinanceiramodeloantigodesenha_Clássico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And estou indo para o menu de FATURA
	And realizo o caminho validando as opções para pagamento ou agendamento de FATURA
	Then um dos textos "realizado com sucesso;melhor data para compra" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0267
Scenario: URA0267-Pagamento_Fatura_ValorTotaldaFaturaantesdovencimento_titularcom1CartãoDigital_RF_TransacionalFinanceiramodeloantigodesenha_Vangogh

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And estou indo para o menu de FATURA
	And realizo o caminho validando as opções para pagamento ou agendamento de FATURA
	Then um dos textos "realizado com sucesso;melhor data para compra" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0297
Scenario: URA0297-Pagamento_Fatura_ValorTotaldaFaturavencida_titularcom1Cartão_RF_FRASEOLOGIA_VanGogh

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Fraseologia
	And estou indo para o menu de FATURA
	And realizo o caminho validando as opções para pagamento ou agendamento de FATURA
	Then um dos textos "realizado com sucesso;melhor data para compra" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0298
Scenario: URA0298-Pagamento_Fatura_ValorTotaldaFaturanadatadevencimento_titularcom1Cartão_RF_FRASEOLOGIA_Exclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Fraseologia
	And estou indo para o menu de FATURA
	And realizo o caminho validando as opções para pagamento ou agendamento de FATURA
	Then um dos textos "realizado com sucesso;melhor data para compra" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0299
Scenario: URA0299-Pagamento_Fatura_ValorTotaldaFaturaantesdovencimento_titularcom1Cartão_RF_FRASEOLOGIA_Clássico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Fraseologia
	And estou indo para o menu de FATURA
	And realizo o caminho validando as opções para pagamento ou agendamento de FATURA
	Then um dos textos "realizado com sucesso;melhor data para compra" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0300
Scenario: URA0300-Pagamento_Fatura_ValorTotaldaFaturaantesdovencimento_titularcom1Cartão_RF_FRASEOLOGIA_Exclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Fraseologia
	And estou indo para o menu de FATURA
	And realizo o caminho validando as opções para pagamento ou agendamento de FATURA
	Then um dos textos "realizado com sucesso;melhor data para compra" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0325
Scenario: URA0325-Pagamento_Fatura_FaturaCartãodecrédito_RF_FRASEOLOGIA_Vangogh

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Fraseologia
	And estou indo para o menu de FATURA
	And realizo o caminho validando as opções para pagamento ou agendamento de FATURA
	Then um dos textos "realizado com sucesso;melhor data para compra" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0412
Scenario: URA0412-Pagamento_Fatura_ValorTotaldaFaturavencida_titularcom1Cartão_RF_TransacionalFinanceiramodelonovodesenha_Cartãomultiplo_Clássico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And estou indo para o menu de FATURA
	And realizo o caminho validando as opções para pagamento ou agendamento de FATURA
	Then um dos textos "realizado com sucesso;melhor data para compra" for validado, com o tempo de execução "30000" em milissegundos

@URA0413
Scenario: URA0413-Pagamento_Fatura_ValorTotaldaFaturanadatadevencimento_titularcom1Cartão_RF_TransacionalFinanceiramodelonovodesenha_Cartãomultiplo_Clássico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And estou indo para o menu de FATURA
	And realizo o caminho validando as opções para pagamento ou agendamento de FATURA
	Then um dos textos "realizado com sucesso;melhor data para compra" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0415
Scenario: URA0415-Pagamento_Fatura_ValorTotaldaFaturaantesdovencimento_titularcom1Cartão_RF_TransacionalFinanceiramodelonovodesenha_Cartãomultiplo_Clássico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And estou indo para o menu de FATURA
	And realizo o caminho validando as opções para pagamento ou agendamento de FATURA
	Then um dos textos "realizado com sucesso;melhor data para compra" for validado, com o tempo de execução "30000" em milissegundos

@URA0428
Scenario: URA0428-Pagamento_Fatura_ValorTotaldaFaturavencida_titularcom1Cartão_RF_TransacionalFinanceiramodeloantigodesenha_Cartãomultiplo_Clássico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And estou indo para o menu de FATURA
	And realizo o caminho validando as opções para pagamento ou agendamento de FATURA
	Then um dos textos "realizado com sucesso;melhor data para compra" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0442
Scenario: URA0442-Pagamento_Fatura_ValorTotaldaFaturanadatadevencimento_titularcom1Cartão_RF_TransacionalFinanceiramodeloantigodesenha_Cartãomultiplo_Clássico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And estou indo para o menu de FATURA
	And realizo o caminho validando as opções para pagamento ou agendamento de FATURA
	Then um dos textos "realizado com sucesso;melhor data para compra" for validado, com o tempo de execução "30000" em milissegundos