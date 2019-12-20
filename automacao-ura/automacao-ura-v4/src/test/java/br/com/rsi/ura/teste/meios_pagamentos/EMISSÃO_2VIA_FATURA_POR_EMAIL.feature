@EMISSÃO_2VIA_FATURA_POR_EMAIL @MEIOS_PAGAMENTOS
Feature: Meios de Pagamentos -- EMISSÃO_2VIA_FATURA_POR_EMAIL

Background: 
	Given inicializo o 'Relatorio de Dados'
	When clico o numero do telefone da 'Ura'
	
@URA0230
Scenario: URA0230-Consulta_Plástico_SegundaviaCartãodecréditoEmail_RF_TransacionalConsultiva_modeloantigodesenha_Vangogh

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "2"
	And estou na opcao de cartões indo ao menu principal
	And clico na opcao do menu transacional: "1"
	And realizando o caminho para a EMISSÃO de segunda via por EMAIL ou OUVIR CÓDIGO DE BARRAS
	Then um dos textos "cartão selecionado já foi enviada para o seu e-mail;enviada para o seu e-mail cadastrado;enviada para o seu e-mail" for validado, com o tempo de execução "25000" em milissegundos
	
@URA0231
Scenario: URA0231-Consulta_Plástico_SegundaviaCartãodecréditoEmailCartãoTitular_RF_TransacionalConsultiva_modeloantigodesenha_Select

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "2"
	And estou na opcao de cartões indo ao menu principal
	And clico na opcao do menu transacional: "1"
	And realizando o caminho para a EMISSÃO de segunda via por EMAIL ou OUVIR CÓDIGO DE BARRAS
	Then um dos textos "cartão selecionado já foi enviada para o seu e-mail;enviada para o seu e-mail cadastrado;enviada para o seu e-mail" for validado, com o tempo de execução "25000" em milissegundos
	
@URA0232
Scenario: URA0232-Consulta_Plástico_SegundaviaCartãodecréditoEmailCartãoTitularsememailcadastrado_RF_TransacionalConsultiva_modeloantigodesenha_Vangogh

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "2"
	And estou na opcao de cartões indo ao menu principal
	And clico na opcao do menu transacional: "1"
	And realizando o caminho para a EMISSÃO de segunda via por EMAIL ou OUVIR CÓDIGO DE BARRAS
	Then um dos textos "cartão selecionado já foi enviada para o seu e-mail;enviada para o seu e-mail cadastrado;enviada para o seu e-mail" for validado, com o tempo de execução "25000" em milissegundos
	
@URA0130
Scenario: URA0130-Emissaode2Via_Fatura_SegundaviaCartaodecreditoEmail_RF_TransacionalConsultivamodelonovodesenha_Classico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "2"
	And estou na opcao de cartões indo ao menu principal
	And clico na opcao do menu transacional: "1"
	And realizando o caminho para a EMISSÃO de segunda via por EMAIL ou OUVIR CÓDIGO DE BARRAS
	Then um dos textos "cartão selecionado já foi enviada para o seu e-mail;enviada para o seu e-mail cadastrado;enviada para o seu e-mail" for validado, com o tempo de execução "25000" em milissegundos
	
@URA0131
Scenario: URA0131-Emissaode2Via_Fatura_SegundaviaCartaodecreditoEmailCartaoadicional_RF_TransacionalConsultivamodelonovodesenha_Exclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "2"
	And estou na opcao de cartões buscando cartão adicional
	And clico na opcao do menu transacional: "1"
	And realizando o caminho para a EMISSÃO de segunda via por EMAIL ou OUVIR CÓDIGO DE BARRAS
	Then um dos textos "cartão selecionado já foi enviada para o seu e-mail;enviada para o seu e-mail cadastrado;enviada para o seu e-mail" for validado, com o tempo de execução "25000" em milissegundos
	
@URA0195
Scenario: URA0195-Emissaode2Via_Fatura_SegundaviaCartaodecreditoEmail_RF_TransacionalConsultivamodelonovodesenha_Private

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "2"
	And estou na opcao de cartões indo ao menu principal
	And clico na opcao do menu transacional: "1"
	And realizando o caminho para a EMISSÃO de segunda via por EMAIL ou OUVIR CÓDIGO DE BARRAS
	Then um dos textos "cartão selecionado já foi enviada para o seu e-mail;enviada para o seu e-mail cadastrado;enviada para o seu e-mail" for validado, com o tempo de execução "25000" em milissegundos
	
@URA0196
Scenario: URA0196-Emissaode2Via_Fatura_SegundaviaCartaodecreditoEmailCartaoadicional_RF_TransacionalConsultivamodelonovodesenha_Private

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "2"
	And estou na opcao de cartões buscando cartão adicional
	And clico na opcao do menu transacional: "1"
	And realizando o caminho para a EMISSÃO de segunda via por EMAIL ou OUVIR CÓDIGO DE BARRAS
	Then um dos textos "cartão selecionado já foi enviada para o seu e-mail;enviada para o seu e-mail cadastrado;enviada para o seu e-mail" for validado, com o tempo de execução "25000" em milissegundos