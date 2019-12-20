@CONSULTA_FATURA_ABERTA @MEIOS_PAGAMENTOS
Feature: Meios de Pagamentos -- CONSULTA_FATURA_ABERTA

Background: 
	Given inicializo o 'Relatorio de Dados'
	When clico o numero do telefone da 'Ura'
	
@URA0002
Scenario: URA0002-Consulta_Fatura_Faturaatualaberta_titularcom1Cartao_RF_TransacionalConsultivamodelonovodesenha_Exclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "2"
	Then consulto a FATURA, validando os textos "fatura parcial do cartão de crédito;fatura parcial", com execução de "25000" milissegundos
	
@URA0010
Scenario: URA0010-Consulta_Fatura_Faturaatualaberta_titularcom1Cartão_RF_TransacionalConsultiva_modeloantigodesenha_Clássico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "2"
	Then consulto a FATURA, validando os textos "fatura parcial do cartão de crédito;fatura parcial", com execução de "25000" milissegundos
	
@URA0019
Scenario: URA0019-Consulta_Fatura_Faturaatualaberta_titularcom1Cartão_RF_TransacionalConsultiva_modelonovodesenha_Clássico
	
	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "2"
	Then consulto a FATURA, validando os textos "fatura parcial do cartão de crédito;fatura parcial", com execução de "25000" milissegundos

@URA0030
Scenario: URA0030-Consulta_Fatura_AdicionalFaturaatualaberta_RF_TransacionalConsultiva_modelonovodesenha_Clássico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "2"
	And estou na opcao de cartões buscando cartão adicional
	Then um dos textos "fatura parcial somada ao cartão adicional;fatura parcial" for validado, com o tempo de execução "25000" em milissegundos

@URA0008
Scenario: URA0008-Consulta_Fatura_AdicionalFaturaatualaberta_RF_TransacionalConsultivamodelonovodesenha_Exclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "2"
	And estou na opcao de cartões buscando cartão adicional
	Then um dos textos "fatura parcial somada ao cartão adicional;fatura parcial" for validado, com o tempo de execução "25000" em milissegundos