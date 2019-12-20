@CONSULTA_FATURA_ANTERIOR @MEIOS_PAGAMENTOS
Feature: Meios de Pagamentos -- CONSULTA_FATURA_ANTERIOR

Background: 
	Given inicializo o 'Relatorio de Dados'
	When clico o numero do telefone da 'Ura'
	
@URA0003
Scenario: URA0003-Consulta_Fatura_Faturaanterior_titularcom1Cartão_RF_TransacionalConsultiva_modelonovodesenha_Clássico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "2"
	Then consulto a FATURA, validando os textos "fatura anterior;anterior", com execução de "30000" milissegundos
	
@URA0011
Scenario: URA0011-Consulta_Fatura_Faturaanterior_titularcom1Cartão_RF_TransacionalConsultiva_modeloantigodesenha_Exclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "2"
	Then consulto a FATURA, validando os textos "fatura anterior;anterior", com execução de "30000" milissegundos
	
@URA0021
Scenario: URA0021-Consulta_Fatura_Faturaanterior_titularcom1Cartão_RF_TransacionalConsultiva_modelonovodesenha_Exclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "2"
	Then consulto a FATURA, validando os textos "fatura anterior;anterior", com execução de "30000" milissegundos