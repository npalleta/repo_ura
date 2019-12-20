@CONSULTA_FATURA_VENCIDA @MEIOS_PAGAMENTOS
Feature: Meios de Pagamentos -- CONSULTA_FATURA_VENCIDA

Background: 
	Given inicializo o 'Relatorio de Dados'
	When clico o numero do telefone da 'Ura'
	
@URA0411
Scenario: URA0411-Consulta_Fatura_TitularFaturavencida_RF_TransacionalConsultivamodelonovodesenha_Cartaomultiplo_Classico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "2"
	Then consulto a FATURA, validando os textos "fatura fechada e vencida;vencida", com execução de "25000" milissegundos
	
@URA0033
Scenario: URA0033-Consulta_Fatura_AdicionalFaturavencida_RF_TransacionalConsultiva_modelonovodesenha_Exclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "2"
	And estou na opcao de cartões buscando cartão adicional
	Then um dos textos "fatura fechada somada ao cartão adicional;venceu" for validado, com o tempo de execução "25000" em milissegundos
	
@URA0086
Scenario: URA0086-Consulta_Fatura_AdicionalFaturavencida_RF_TransacionalConsultiva_modeloantigodesenha_Exclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "2"
	And estou na opcao de cartões buscando cartão adicional
	Then um dos textos "fatura fechada somada ao cartão adicional;venceu" for validado, com o tempo de execução "25000" em milissegundos
	
@URA0087
Scenario: URA0087-Consulta_Fatura_AdicionalFaturavencida_RF_TransacionalConsultiva_modeloantigodesenha_Clássico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "2"
	And estou na opcao de cartões buscando cartão adicional
	Then um dos textos "fatura fechada somada ao cartão adicional;venceu" for validado, com o tempo de execução "25000" em milissegundos

@URA0009
Scenario: URA0009-Consulta_Fatura_AdicionalFaturavencida_RF_TransacionalConsultivamodelonovodesenha_Classico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "2"
	And estou na opcao de cartões buscando cartão adicional
	Then um dos textos "fatura fechada somada ao cartão adicional;venceu" for validado, com o tempo de execução "25000" em milissegundos
	
@URA0296
Scenario: URA0296-Consulta_Fatura_AdicionalFaturavencida_RF_FRASEOLOGIA_Select

	And estou indo ao menu principal Private ou Select Fraseologia
	And clico na opcao do menu transacional: "2"
	And estou na opcao de cartões buscando cartão adicional
	Then um dos textos "fatura fechada somada ao cartão adicional;venceu" for validado, com o tempo de execução "25000" em milissegundos
	
@URA0410
Scenario: URA0410-Consulta_Fatura_AdicionalFaturavencida_RF_TransacionalConsultiva_modelonovodesenha_Cartãomultiplo_Clássico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "2"
	And estou na opcao de cartões buscando cartão adicional
	Then um dos textos "fatura fechada somada ao cartão adicional;venceu" for validado, com o tempo de execução "25000" em milissegundos