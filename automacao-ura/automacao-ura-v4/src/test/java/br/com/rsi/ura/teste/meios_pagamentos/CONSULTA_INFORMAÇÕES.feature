@CONSULTA_INFORMAÇÕES @MEIOS_PAGAMENTOS
Feature: Meios de Pagamentos -- CONSULTA_INFORMAÇÕES

Background: 
	Given inicializo o 'Relatorio de Dados'
	When clico o numero do telefone da 'Ura'
	
@URA0146
Scenario: URA0146-Consulta_Informacoes_MenuEsferatitular_RF_TransacionalConsultivamodelonovodesenha_Vangogh

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "2"
	And estou na opcao de cartões indo ao menu principal
	And clico na opcao do menu transacional: "3"
	Then um dos textos "saldo de pontos esfera;quanto mais você usa;mais pontos você junta" for validado, com o tempo de execução "26000" em milissegundos
	
@URA0147
Scenario: URA0147-Consulta_Informações_MenuEsferanãotitular_RF_TransacionalConsultiva_modelonovodesenha_Exclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "2"
	And estou na opcao de cartões indo ao menu principal
	And clico na opcao do menu transacional: "3"
	Then um dos textos "saldo de pontos esfera;quanto mais você usa;mais pontos você junta" for validado, com o tempo de execução "26000" em milissegundos
	
@URA0148
Scenario: URA0148-Consulta_Informacoes_informacoesepromocoesesfera_RF_TransacionalConsultivamodelonovodesenha_Classico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "2"
	And estou na opcao de cartões indo ao menu principal
	And clico na opcao do menu transacional: "3"
	Then um dos textos "saldo de pontos esfera;quanto mais você usa;mais pontos você junta" for validado, com o tempo de execução "26000" em milissegundos
	
@URA0191
Scenario: URA0191-Consulta_Informações_InformaçõessobreCartãoWAY_RF_TransacionalConsultiva_modelonovodesenha_Clássico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "2"
	And estou na opcao de cartões indo ao menu principal
	And clico na opcao do menu transacional: "5"
	And clico na opcao do menu transacional: "6"
	And clico na opcao do menu transacional: "4"
	And clico na opcao do menu transacional: "1"
	Then um dos textos "way é um aplicativo;experiência digital de forma simples;eficiente e com muita segurança" for validado, com o tempo de execução "21000" em milissegundos
	
@URA0192
Scenario: URA0192-Consulta_Informações_ClientecomCartãodecréditook_RF_TransacionalConsultiva_modelonovodesenha_Private

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu: "2"
	And estou na opcao de cartões indo ao menu principal
	And clico na opcao do menu: "6"
	Then um dos textos "seguro cartão protegido;anuidade taxas serviços;fazer alteração de dados" for validado, com o tempo de execução "21000" em milissegundos
	
@URA0210
Scenario: URA0210-Consulta_Informacoes_informacoesepromocoesesfera_RF_TransacionalConsultivamodelonovodesenha_Private

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "2"
	And estou na opcao de cartões indo ao menu principal
	And clico na opcao do menu transacional: "3"
	Then um dos textos "saldo de pontos esfera;quanto mais você usa;mais pontos você junta" for validado, com o tempo de execução "26000" em milissegundos
	
@URA0222
Scenario: URA0222-Consulta_Informacoes_InformacoessobreCartaoWAY_RF_TransacionalConsultivamodelonovodesenha_Private

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "2"
	And estou na opcao de cartões indo ao menu principal
	And clico na opcao do menu transacional: "5"
	And clico na opcao do menu transacional: "6"
	And clico na opcao do menu transacional: "4"
	And clico na opcao do menu transacional: "1"
	Then um dos textos "way é um aplicativo;experiência digital de forma simples;eficiente e com muita segurança" for validado, com o tempo de execução "21000" em milissegundos
	
@URA0239
Scenario: URA0239-Consulta_Informações_MenuEsferatitular_RF_TransacionalConsultiva_modeloantigodesenha_Select

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "2"
	And estou na opcao de cartões indo ao menu principal
	And clico na opcao do menu transacional: "3"
	Then um dos textos "saldo de pontos esfera;quanto mais você usa;mais pontos você junta" for validado, com o tempo de execução "26000" em milissegundos
	
@URA0247
Scenario: URA0247-Consulta_Informacoes_Menuinformacoesdoscartoes-clientecomCartaodedebitoecredito__RF_TransacionalConsultivamodelonovodesenha_Vangogh

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu: "5"
	Then um dos textos "você quer falar sobre;sobre seu cartão de crédito;sobre seu cartão de débito" for validado, com o tempo de execução "18000" em milissegundos
	
@URA0248
Scenario: URA0248-Consulta_Informações_Cartãodecreditoclientecomcartaodecréditoativo__RF_TransacionalConsultiva_modelonovodesenha_Vangogh

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And um dos textos "saldo;conta;corrente;pagamento;atendimento" for validado, com o tempo de execução "21000" em milissegundos
	And clico na opcao do menu: "2"
	And estou na opcao de cartões indo ao menu principal
	And clico na opcao do menu: "6"
	Then um dos textos "seguro cartão protegido;anuidade taxas serviços;fazer alteração de dados" for validado, com o tempo de execução "21000" em milissegundos
	
@URA0250
Scenario: URA0250-Consulta_Informações_Menuinformaçõesdoscartões-clientecomCartãodedébitoecrédito__RF_TransacionalConsultiva_modelonovodesenha_Select

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu: "5"
	Then um dos textos "você quer falar sobre;sobre seu cartão de crédito;sobre seu cartão de débito" for validado, com o tempo de execução "18000" em milissegundos 
	
@URA0251
Scenario: URA0251-Consulta_Informações_Cartãodecreditoclientecomcartaodecréditoativo__RF_TransacionalConsultiva,modelonovodesenha_Select

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu: "2"
	And estou na opcao de cartões indo ao menu principal
	And clico na opcao do menu: "6"
	Then um dos textos "seguro cartão protegido;anuidade taxas serviços;fazer alteração de dados" for validado, com o tempo de execução "21000" em milissegundos
	
@URA0252
Scenario: URA0252-Consulta_Informações_CartãodecreditoclientecomCartãodecréditoinativoblqoueado__RF_TransacionalConsultiva_modelonovodesenha_Select

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "2"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	And digito o RAMAL transacional
	Then um dos textos "ramal;transferir;segurança;ligação será gravada" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0253
Scenario: URA0253-Consulta_Informações_Menuinformaçõesdoscartões-clientecomCartãodedébitoecrédito__RF_TransacionalConsultiva_modelonovodesenha_Private

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu: "5"
	Then um dos textos "você quer falar sobre;sobre seu cartão de crédito;sobre seu cartão de débito" for validado, com o tempo de execução "18000" em milissegundos
	
@URA0254
Scenario: URA0254-Consulta_Informações_Cartãodecreditoclientecomcartaodecréditoativo__RF_TransacionalConsultiva_modelonovodesenha_Private

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu: "2"
	And estou na opcao de cartões indo ao menu principal
	And clico na opcao do menu: "6"
	Then um dos textos "seguro cartão protegido;anuidade taxas serviços;fazer alteração de dados" for validado, com o tempo de execução "21000" em milissegundos
	
@URA0330
Scenario: URA0330-Consulta_Informações_MenuEsferatitular_RF_FRASEOLOGIA_Vangogh

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Fraseologia
	And estou na opcao do menu do ura com o texto " pagamento", com o tempo total de execução de "26000" milissegundos
	And clico na opcao do menu: "2"
	And estou na opcao de cartões indo ao menu principal
	And clico na opcao do menu: "3"
	Then um dos textos "saldo de pontos esfera;quanto mais você usa;mais pontos você junta" for validado, com o tempo de execução "26000" em milissegundos
	
@URA0332
Scenario: URA0332-Consulta_Informacoes_informacoesepromocoesesfera_RF_FRASEOLOGIA_Vangogh

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Fraseologia
	And estou na opcao do menu do ura com o texto " pagamento", com o tempo total de execução de "26000" milissegundos
	And clico na opcao do menu: "2"
	And estou na opcao de cartões indo ao menu principal
	And clico na opcao do menu: "3"
	Then um dos textos "saldo de pontos esfera;quanto mais você usa;mais pontos você junta" for validado, com o tempo de execução "26000" em milissegundos
	
@URA0348
Scenario: URA0348-Consulta_Informações_InformaçõessobreCartãoWAY_RF_FRASEOLOGIA_Vangogh

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Fraseologia
	And um dos textos "saldo;conta;corrente;parcelamento;pagamento" for validado, com o tempo de execução "21000" em milissegundos
	And clico na opcao do menu: "2"
	And estou na opcao de cartões indo ao menu principal
	And clico na opcao do menu: "5"
	And um dos textos "liberar;exterior;alterar;dados;cadastrais" for validado, com o tempo de execução "27000" em milissegundos
	And clico na opcao do menu: "6"
	And um dos textos "seguro;cartão;protegido;segunda via" for validado, com o tempo de execução "25000" em milissegundos
	And clico na opcao do menu: "4"
	And um dos textos "aplicativo;santander way;informações" for validado, com o tempo de execução "18000" em milissegundos
	And clico na opcao do menu: "1"
	Then um dos textos "way é um aplicativo;experiência digital de forma simples;eficiente e com muita segurança" for validado, com o tempo de execução "21000" em milissegundos
	
@URA0349
Scenario: URA0349-Consulta_Informações_ClientecomCartãodecréditook_RF_FRASEOLOGIA_Select

	And estou indo ao menu principal Private ou Select Fraseologia
	And um dos textos "saldo;conta;corrente;pagamento;atendimento" for validado, com o tempo de execução "21000" em milissegundos
	And clico na opcao do menu: "2"
	And estou na opcao de cartões indo ao menu principal
	And clico na opcao do menu: "6"
	Then um dos textos "seguro cartão protegido;anuidade taxas serviços;fazer alteração de dados" for validado, com o tempo de execução "21000" em milissegundos
	
@URA0356
Scenario: URA0356-Consulta_Informacoes_informacoesepromocoesesfera_RF_FRASEOLOGIA_Select

	And estou indo ao menu principal Private ou Select Fraseologia
	And estou na opcao do menu do ura com o texto " pagamento", com o tempo total de execução de "26000" milissegundos
	And clico na opcao do menu: "2"
	And estou na opcao de cartões indo ao menu principal
	And clico na opcao do menu: "3"
	Then um dos textos "saldo de pontos esfera;quanto mais você usa;mais pontos você junta" for validado, com o tempo de execução "26000" em milissegundos
	
@URA0370
Scenario: URA0370-Consulta_Informacoes_InformacoessobreCartaoWAY_RF_FRASEOLOGIA_Select 

	And estou indo ao menu principal Private ou Select Fraseologia
	And um dos textos "saldo;conta;corrente;parcelamento;pagamento" for validado, com o tempo de execução "21000" em milissegundos
	And clico na opcao do menu: "2"
	And estou na opcao de cartões indo ao menu principal
	And clico na opcao do menu: "5"
	And um dos textos "liberar;exterior;alterar;dados;cadastrais" for validado, com o tempo de execução "27000" em milissegundos
	And clico na opcao do menu: "6"
	And um dos textos "seguro;cartão;protegido;segunda via" for validado, com o tempo de execução "25000" em milissegundos
	And clico na opcao do menu: "4"
	And um dos textos "aplicativo;santander way;informações" for validado, com o tempo de execução "18000" em milissegundos
	And clico na opcao do menu: "1"
	Then um dos textos "way é um aplicativo;experiência digital de forma simples;eficiente e com muita segurança" for validado, com o tempo de execução "21000" em milissegundos
	
@URA0373
Scenario: URA0373-Consulta_Informacoes_MenuEsferanaotitular_RF_FRASEOLOGIA_Private

	And estou indo ao menu principal Private ou Select Fraseologia
	And estou na opcao do menu do ura com o texto " pagamento", com o tempo total de execução de "26000" milissegundos
	And clico na opcao do menu: "2"
	And estou na opcao de cartões indo ao menu principal
	And clico na opcao do menu: "3"
	Then um dos textos "saldo de pontos esfera;quanto mais você usa;mais pontos você junta" for validado, com o tempo de execução "26000" em milissegundos
	
@URA0383
Scenario: URA0383-Consulta_Informacoes_MenuinformacoesdoscartoesclientecomCartaodedebitoecredito__RF_FRASEOLOGIA_Vangogh

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Fraseologia
	And um dos textos "saldo;conta;corrente;pagamento;atendimento" for validado, com o tempo de execução "21000" em milissegundos
	And clico na opcao do menu: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu: "5"
	Then um dos textos "você quer falar sobre;sobre seu cartão de crédito;sobre seu cartão de débito" for validado, com o tempo de execução "18000" em milissegundos
	
@URA0384
Scenario: URA0384-Consulta_Informações_MenuinformaçõesdoscartõesclientecomCartãodedébitoecrédito__RF_FRASEOLOGIA_Select

	And estou indo ao menu principal Private ou Select Fraseologia
	And um dos textos "saldo;conta;corrente;pagamento;atendimento" for validado, com o tempo de execução "21000" em milissegundos
	And clico na opcao do menu: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu: "5"
	Then um dos textos "você quer falar sobre;sobre seu cartão de crédito;sobre seu cartão de débito" for validado, com o tempo de execução "18000" em milissegundos 
	
@URA0387
Scenario: URA0387-Consulta_Informacoes_MenuinformacoesdoscartoesclientecomCartaodedebitoecredito__RF_FRASEOLOGIA_Private

	And estou indo ao menu principal Private ou Select Fraseologia
	And um dos textos "saldo;conta;corrente;pagamento;atendimento" for validado, com o tempo de execução "21000" em milissegundos
	And clico na opcao do menu: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu: "5"
	Then um dos textos "você quer falar sobre;sobre seu cartão de crédito;sobre seu cartão de débito" for validado, com o tempo de execução "18000" em milissegundos
	
@URA0396
Scenario: URA0396-Consulta_Informacoes_informacoessobreOutrosassuntos_RF_TransacionalConsultivamodeloantigodesenha_Private

	And estou indo ao menu principal Private ou Select Transacional
	And um dos textos "saldo;conta;corrente;pagamento;atendimento" for validado, com o tempo de execução "21000" em milissegundos
	And clico na opcao do menu: "2"
	And estou na opcao de cartões indo ao menu principal
	And clico na opcao do menu: "6"
    Then um dos textos "seguro cartão protegido;anuidade taxas serviços;fazer alteração de dados" for validado, com o tempo de execução "21000" em milissegundos