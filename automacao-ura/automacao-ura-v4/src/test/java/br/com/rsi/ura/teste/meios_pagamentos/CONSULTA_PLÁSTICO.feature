@CONSULTA_PLÁSTICO @MEIOS_PAGAMENTOS
Feature: Meios de Pagamentos -- CONSULTA_PLÁSTICO

Background: 
	Given inicializo o 'Relatorio de Dados'
	When clico o numero do telefone da 'Ura'
	
@URA0230
Scenario: URA0230-Consulta_Plástico_SegundaviaCartãodecréditoEmail_RF_TransacionalConsultiva_modeloantigodesenha_Vangogh

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "2"
	And estou na opcao de cartões indo ao menu principal
	And clico na opcao do menu transacional: "1"
	And estou na opcao do menu da ura onde solicito emissão de segunda via "segunda via email", com o tempo total de execução de "35000" milissegundos
	Then estou na opcao do menu do ura com o texto " vou encaminhar a segunda via da fatura", com o tempo total de execução de "18942" milissegundos
	
@URA0231
Scenario: URA0231-Consulta_Plástico_SegundaviaCartãodecréditoEmailCartãoTitular_RF_TransacionalConsultiva_modeloantigodesenha_Select

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "2"
	And estou na opcao de cartões indo ao menu principal
	And clico na opcao do menu transacional: "1"
	And estou na opcao do menu da ura onde solicito emissão de segunda via "segunda via email", com o tempo total de execução de "35000" milissegundos
	Then estou na opcao do menu do ura com o texto " vou encaminhar a segunda via da fatura", com o tempo total de execução de "18942" milissegundos
	
@URA0232
Scenario: URA0232-Consulta_Plástico_SegundaviaCartãodecréditoEmailCartãoTitularsememailcadastrado_RF_TransacionalConsultiva_modeloantigodesenha_Vangogh

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "2"
	And estou na opcao de cartões indo ao menu principal
	And clico na opcao do menu transacional: "1"
	And estou na opcao do menu da ura onde solicito emissão de segunda via "segunda via email", com o tempo total de execução de "35000" milissegundos
	Then estou na opcao do menu do ura com o texto " e-mail cadastrado", com o tempo total de execução de "18942" milissegundos
	
@URA0233
Scenario: URA0233-Consulta_Plástico_SegundaviaCartãodecréditoouvircodbarrasCartãoTitular_RF_TransacionalConsultiva_modeloantigodesenha_Select

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "2"
	And estou na opcao de cartões indo ao menu principal
	And clico na opcao do menu transacional: "1"
	And estou na opcao do menu da ura onde solicito emissão de segunda via "segunda via codigo de barras", com o tempo total de execução de "35000" milissegundos
	Then estou na opcao do menu do ura com o texto " vou te passar o código de barras", com o tempo total de execução de "27044" milissegundos