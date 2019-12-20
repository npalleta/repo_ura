@EMISSÃO_2VIA_FATURA_CÓDIGO_DE_BARRAS @MEIOS_PAGAMENTOS
Feature: Meios de Pagamentos -- EMISSÃO_2VIA_FATURA_CÓDIGO_DE_BARRAS

Background: 
	Given inicializo o 'Relatorio de Dados'
	When clico o numero do telefone da 'Ura'

@URA0233
Scenario: URA0233-Consulta_Plástico_SegundaviaCartãodecréditoouvircodbarrasCartãoTitular_RF_TransacionalConsultiva_modeloantigodesenha_Select

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "2"
	And estou na opcao de cartões indo ao menu principal
	And clico na opcao do menu transacional: "1"
	And realizando o caminho para a EMISSÃO de segunda via por EMAIL ou OUVIR CÓDIGO DE BARRAS
	Then um dos textos "vou te passar o código de barra;passar o código de barra;ficar mais fácil de você anotar" for validado, com o tempo de execução "25000" em milissegundos

@URA0134
Scenario: URA0134-Emissaode2Via_Fatura_SegundaviaCartaodecreditoouvircodbarrasCartaoadicional_RF_TransacionalConsultivamodelonovodesenha_Classico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "2"
	And estou na opcao de cartões buscando cartão adicional
	And clico na opcao do menu transacional: "1"
	And realizando o caminho para a EMISSÃO de segunda via por EMAIL ou OUVIR CÓDIGO DE BARRAS
	Then um dos textos "vou te passar o código de barra;passar o código de barra;ficar mais fácil de você anotar" for validado, com o tempo de execução "25000" em milissegundos
	
@URA0135
Scenario: URA0135-Emissaode2Via_Fatura_SegundaviaCartaodecreditoouvircodbarrasCartaoTitular_RF_TransacionalConsultivamodelonovodesenha_Vangogh

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "2"
	And estou na opcao de cartões indo ao menu principal
	And clico na opcao do menu transacional: "1"
	And realizando o caminho para a EMISSÃO de segunda via por EMAIL ou OUVIR CÓDIGO DE BARRAS
	Then um dos textos "vou te passar o código de barra;passar o código de barra;ficar mais fácil de você anotar" for validado, com o tempo de execução "25000" em milissegundos
	
@URA0136
Scenario: URA0136-Emissãode2Via_Fatura_SegundaviaCartãodecréditoouvircodbarrasCartãoTitular_RF_TransacionalConsultiva_modelonovodesenha_Exclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "2"
	And estou na opcao de cartões indo ao menu principal
	And clico na opcao do menu transacional: "1"
	And realizando o caminho para a EMISSÃO de segunda via por EMAIL ou OUVIR CÓDIGO DE BARRAS
	Then um dos textos "vou te passar o código de barra;passar o código de barra;ficar mais fácil de você anotar" for validado, com o tempo de execução "25000" em milissegundos
	
@URA0168
Scenario: URA0168-Emissãode2Via_Fatura_SegundaviaCartãodecréditoouvircodbarrasCartãoTitular_RF_TransacionalConsultiva_modelonovodesenha_Clássico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "2"
	And estou na opcao de cartões indo ao menu principal
	And clico na opcao do menu transacional: "1"
	And realizando o caminho para a EMISSÃO de segunda via por EMAIL ou OUVIR CÓDIGO DE BARRAS
	Then um dos textos "vou te passar o código de barra;passar o código de barra;ficar mais fácil de você anotar" for validado, com o tempo de execução "25000" em milissegundos
	
@URA0199
Scenario: URA0199-Emissaode2Via_Fatura_SegundaviaCartaodecreditoouvircodbarrasCartaoadicional_RF_TransacionalConsultivamodelonovodesenha_Private

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "2"
	And estou na opcao de cartões buscando cartão adicional
	And clico na opcao do menu transacional: "1"
	And realizando o caminho para a EMISSÃO de segunda via por EMAIL ou OUVIR CÓDIGO DE BARRAS
	Then um dos textos "vou te passar o código de barra;passar o código de barra;ficar mais fácil de você anotar" for validado, com o tempo de execução "25000" em milissegundos
	
@URA0200
Scenario: URA0200-Emissaode2Via_Fatura_SegundaviaCartaodecreditoouvircodbarrasCartaoTitular_RF_TransacionalConsultivamodelonovodesenha_Private

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "2"
	And estou na opcao de cartões indo ao menu principal
	And clico na opcao do menu transacional: "1"
	And realizando o caminho para a EMISSÃO de segunda via por EMAIL ou OUVIR CÓDIGO DE BARRAS
	Then um dos textos "vou te passar o código de barra;passar o código de barra;ficar mais fácil de você anotar" for validado, com o tempo de execução "25000" em milissegundos