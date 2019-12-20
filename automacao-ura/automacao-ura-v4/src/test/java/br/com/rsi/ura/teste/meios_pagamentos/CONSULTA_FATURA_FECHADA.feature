@CONSULTA_FATURA_FECHADA @MEIOS_PAGAMENTOS
Feature: Meios de Pagamentos -- CONSULTA_FATURA_FECHADA

Background: 
	Given inicializo o 'Relatorio de Dados'
	When clico o numero do telefone da 'Ura'
	
@URA0001
Scenario: URA0001-Consulta_Fatura_Faturafechadaenaovencida_titularcom1Cartao_RF_TransacionalConsultivamodelonovodesenha_Classico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "2"
	Then consulto a FATURA, validando os textos "fatura fechada com vencimento;fatura fechada", com execução de "25000" milissegundos
	
@URA0013
Scenario: URA0013-Consulta_Fatura_Faturafechadaenãovencida_titularcom1Cartão_RF_FRASEOLOGIA_Exclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Fraseologia
	And clico na opcao do menu transacional: "2"
	Then consulto a FATURA, validando os textos "fatura fechada com vencimento;fatura fechada", com execução de "25000" milissegundos
	
@URA0016
Scenario: URA0016-Consulta_Fatura_Faturafechadaenãovencida_titularcom1Cartão_RF_TransacionalConsultiva_modelonovodesenha_Exclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "2"
	Then consulto a FATURA, validando os textos "fatura fechada com vencimento;fatura fechada", com execução de "25000" milissegundos 
	
@URA0082
Scenario: URA0082-Consulta_Fatura_Faturafechadaenãovencida_titularcom1Cartão_RF_TransacionalConsultiva_modeloantigodesenha_Clássico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "2"
	Then consulto a FATURA, validando os textos "fatura fechada com vencimento;fatura fechada", com execução de "25000" milissegundos
	
@URA0280
Scenario: URA0280-Consulta_Fatura_Faturafechadaenaovencida_titularcom1Cartao_RF_FRASEOLOGIA_Select

	And estou indo ao menu principal Private ou Select Fraseologia
	And clico na opcao do menu transacional: "2"
	Then consulto a FATURA, validando os textos "fatura fechada com vencimento;fatura fechada", com execução de "25000" milissegundos
	
@URA0291
Scenario: URA0291-Consulta_Fatura_AdicionalFaturafechadaenaovencida_RF_FRASEOLOGIA_Private

	And estou indo ao menu principal Private ou Select Fraseologia
	And clico na opcao do menu transacional: "2"
	And estou na opcao de cartões buscando cartão adicional
	Then um dos textos "fatura fechada somada ao cartão adicional;somada ao cartão adicional;fatura fechada" for validado, com o tempo de execução "25000" em milissegundos
	
@URA0007
Scenario: URA0007-Consulta_Fatura_AdicionalFaturafechadaenaovencida_RF_TransacionalConsultivamodelonovodesenha_Classico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "2"
	And estou na opcao de cartões buscando cartão adicional
	Then um dos textos "fatura fechada somada ao cartão adicional;somada ao cartão adicional;fatura fechada" for validado, com o tempo de execução "25000" em milissegundos
	
@URA0028
Scenario: URA0028-Consulta_Fatura_AdicionalFaturafechadaenãovencida_RF_TransacionalConsultiva_modelonovodesenha_Exclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "2"
	And estou na opcao de cartões buscando cartão adicional
	Then um dos textos "fatura fechada somada ao cartão adicional;somada ao cartão adicional;fatura fechada" for validado, com o tempo de execução "25000" em milissegundos