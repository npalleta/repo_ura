@CONSULTA_CONTESTAÇÃO @MEIOS_PAGAMENTOS
Feature: Meios de Pagamentos -- CONSULTA_CONTESTAÇÃO

Background: 
	Given inicializo o 'Relatorio de Dados'
	When clico o numero do telefone da 'Ura'
	
@URA0144
Scenario: URA0144-Consulta_Contestação_Clientecomlançamentosnocartão_RF_TransacionalConsultiva_modelonovodesenha_Exclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "2"
	And estou na opcao de cartões indo ao menu principal
	And clico na opcao do menu transacional: "2"
	And clico na opcao do menu transacional: "4"
	And clico na opcao do menu transacional: "2"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	And digito o RAMAL transacional
	Then um dos textos "ramal;transferir;segurança;ligação será gravada" for validado, com o tempo de execução "35000" em milissegundos
	
@URA0145
Scenario: URA0145-Consulta_Contestação_contestaçãoForadohorário_RF_TransacionalConsultiva_modelonovodesenha_Clássico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "2"
	And estou na opcao de cartões indo ao menu principal
	And clico na opcao do menu transacional: "2"
	And clico na opcao do menu transacional: "4"
	And clico na opcao do menu transacional: "2"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	And digito o RAMAL transacional
	Then um dos textos "ramal;transferir;segurança;ligação será gravada" for validado, com o tempo de execução "35000" em milissegundos
	
@URA0176
Scenario: URA0176-Consulta_Contestação_Clientecomlançamentosnocartão_RF_TransacionalConsultiva,modelonovodesenha_Clássico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "2"
	And estou na opcao de cartões indo ao menu principal
	And clico na opcao do menu transacional: "2"
	And clico na opcao do menu transacional: "4"
	And clico na opcao do menu transacional: "2"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	And digito o RAMAL transacional
	Then um dos textos "ramal;transferir;segurança;ligação será gravada" for validado, com o tempo de execução "35000" em milissegundos
	
@URA0177
Scenario: URA0177-Consulta_Contestação_contestaçãoForadohorário_RF_TransacionalConsultiva,modelonovodesenha_Exclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "2"
	And estou na opcao de cartões indo ao menu principal
	And clico na opcao do menu transacional: "2"
	And clico na opcao do menu transacional: "4"
	And clico na opcao do menu transacional: "2"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	And digito o RAMAL transacional
	Then um dos textos "ramal;transferir;segurança;ligação será gravada" for validado, com o tempo de execução "35000" em milissegundos
	
@URA0256
Scenario: URA0256-Consulta_Contestacao_contestacaodecobrancaMenuMaisinformacoes_RF_TransacionalConsultivamodeloantigodesenha_Select

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "2"
	And estou na opcao de cartões indo ao menu principal
	And clico na opcao do menu transacional: "2"
	And clico na opcao do menu transacional: "4"
	And clico na opcao do menu transacional: "2"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	And digito o RAMAL transacional
	Then um dos textos "ramal;transferir;segurança;ligação será gravada" for validado, com o tempo de execução "35000" em milissegundos
	
@URA0328
Scenario: URA0328-Consulta_Contestacao_Clientecomlancamentosnocartao_RF_FRASEOLOGIA_Vangogh

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Fraseologia
	And um dos textos "conta;assunto;atendimento;pagamentos;boletos" for validado, com o tempo de execução "20000" em milissegundos
	And clico na opcao do menu: "2"
	And estou na opcao de cartões indo ao menu principal
	And clico na opcao do menu: "2"
	And um dos textos "saldo;detalhado;fatura;consultar" for validado, com o tempo de execução "14000" em milissegundos
	And clico na opcao do menu: "4"
	And um dos textos "cancelar;compra;contestar;lançamentos" for validado, com o tempo de execução "12000" em milissegundos
	And clico na opcao do menu: "2"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	And digito o RAMAL transacional
	Then um dos textos "ramal;transferir;segurança;ligação será gravada" for validado, com o tempo de execução "35000" em milissegundos

@URA0329
Scenario: URA0329-Consulta_Contestação_contestaçãoForadohorário_RF_FRASEOLOGIA_Vangogh

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Fraseologia
	And um dos textos "conta;assunto;atendimento;pagamentos;boletos" for validado, com o tempo de execução "20000" em milissegundos
	And clico na opcao do menu: "2"
	And estou na opcao de cartões indo ao menu principal
	And clico na opcao do menu: "2"
	And um dos textos "saldo;detalhado;fatura;consultar" for validado, com o tempo de execução "14000" em milissegundos
	And clico na opcao do menu: "4"
	And um dos textos "cancelar;compra;contestar;lançamentos" for validado, com o tempo de execução "12000" em milissegundos
	And clico na opcao do menu: "2"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	And digito o RAMAL transacional
	Then um dos textos "ramal;transferir;segurança;ligação será gravada" for validado, com o tempo de execução "35000" em milissegundos
	
@URA0353
Scenario: URA0353-Consulta_Contestação_Clientecomlançamentosnocartão_RF_FRASEOLOGIA_Select

	And estou indo ao menu principal Private ou Select Fraseologia
	And um dos textos "conta;assunto;atendimento;pagamentos;boletos" for validado, com o tempo de execução "20000" em milissegundos
	And clico na opcao do menu: "2"
	And estou na opcao de cartões indo ao menu principal
	And clico na opcao do menu: "2"
	And um dos textos "saldo;detalhado;fatura;consultar" for validado, com o tempo de execução "14000" em milissegundos
	And clico na opcao do menu: "4"
	And um dos textos "cancelar;compra;contestar;lançamentos" for validado, com o tempo de execução "12000" em milissegundos
	And clico na opcao do menu: "2"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	And digito o RAMAL transacional
	Then um dos textos "ramal;transferir;segurança;ligação será gravada" for validado, com o tempo de execução "35000" em milissegundos

@URA0354
Scenario: URA0354-Consulta_Contestação_contestaçãoForadohorário_RF_FRASEOLOGIA_Select

	And estou indo ao menu principal Private ou Select Fraseologia
	And um dos textos "conta;assunto;atendimento;pagamentos;boletos" for validado, com o tempo de execução "20000" em milissegundos
	And clico na opcao do menu: "2"
	And estou na opcao de cartões indo ao menu principal
	And clico na opcao do menu: "2"
	And um dos textos "saldo;detalhado;fatura;consultar" for validado, com o tempo de execução "14000" em milissegundos
	And clico na opcao do menu: "4"
	And um dos textos "cancelar;compra;contestar;lançamentos" for validado, com o tempo de execução "12000" em milissegundos
	And clico na opcao do menu: "2"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	And digito o RAMAL transacional
	Then um dos textos "ramal;transferir;segurança;ligação será gravada" for validado, com o tempo de execução "35000" em milissegundos

@URA0403
Scenario: URA0403-Consulta_Contestacao_Clientecomlancamentosnocartao_RF_FRASEOLOGIA_Cartaomultiplo_Private

	And estou indo ao menu principal Private ou Select Fraseologia
	And um dos textos "conta;assunto;atendimento;pagamentos;boletos" for validado, com o tempo de execução "20000" em milissegundos
	And clico na opcao do menu: "2"
	And estou na opcao de cartões indo ao menu principal
	And clico na opcao do menu: "2"
	And um dos textos "saldo;detalhado;fatura;consultar" for validado, com o tempo de execução "14000" em milissegundos
	And clico na opcao do menu: "4"
	And um dos textos "cancelar;compra;contestar;lançamentos" for validado, com o tempo de execução "12000" em milissegundos
	And clico na opcao do menu: "2"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	And digito o RAMAL transacional
	Then um dos textos "ramal;transferir;segurança;ligação será gravada" for validado, com o tempo de execução "35000" em milissegundos