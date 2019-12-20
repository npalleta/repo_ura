@SEM_DATA_OU_VALOR_ASSOCIADO_CREDITO @PAGAMENTOS
Feature: Pagamento -- SEM_DATA_OU_VALOR_ASSOCIADO_CREDITO

Background: 
	Given inicializo o 'Relatorio de Dados'
	When clico o numero do telefone da 'Ura'
	
@URA0850
Scenario: URA0850-Pagamentos_Títulosecontas_Pagamentodetítulo_válidocomcódigodebarrassemvalorassociadoviacartãodecrédito_Modeloantigosenha4dígitos_SegmentoExclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO
	
@URA0939	
Scenario: URA0939-Pagamentos_Títulosecontas_Pagamentodetítulo_válidocomcódigodebarrassemvalorassociadoviacartãodecrédito_Modelonovosenha6dígitos_SegmentoClássico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO	
	
@URA0941	
Scenario: URA0941-Pagamentos_Títulosecontas_Pagamentodetítulo_válidocomcódigodebarrassemvalorassociadoviacartãodecrédito_Modelonovosenha6dígitos_SegmentoExclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO	

@URA0943	
Scenario: URA0943-Pagamentos_Títulosecontas_Pagamentodetítulo_válidocomcódigodebarrassemdataassociadaviacartãodecrédito_Modelonovosenha6dígitos_SegmentoExclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1" 
	And clico na opcao do menu transacional: "1" 
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO
	
@URA0995	
Scenario: URA0995-Pagamentos_Títulosecontas_Pagamentodetítulo_válidocomcódigodebarrassemdataassociadaviacartãodecrédito_FRASEOLOGIA_SegmentoVanGogh

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Fraseologia
	And um dos textos "pagamento;boleto;fatura;atendimento" for validado, com o tempo de execução "26000" em milissegundos
	And clico na opcao do menu: "1" 
	And um dos textos "títulos;fatura;transferências;pagamento" for validado, com o tempo de execução "20000" em milissegundos
	And clico na opcao do menu: "1" 
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO	
	
@URA1004	
Scenario: URA1004-Pagamentos_Titulosecontas_Pagamentodetitulo_validocomcodigodebarrassemdataassociadaviacartaodecredito_FRASEOLOGIA_SegmentoPrivate

	And estou indo ao menu principal Private ou Select Fraseologia
	And um dos textos "pagamento;boleto;fatura;atendimento" for validado, com o tempo de execução "26000" em milissegundos
	And clico na opcao do menu: "1" 
	And um dos textos "títulos;fatura;transferências;pagamento" for validado, com o tempo de execução "20000" em milissegundos
	And clico na opcao do menu: "1" 
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO
	
@URA1005	
Scenario: URA1005-Pagamentos_Titulosecontas_Pagamentodetitulo_validocomcodigodebarrassemdataassociadaviacartaodecredito_FRASEOLOGIA_SegmentoSelect

	And estou indo ao menu principal Private ou Select Fraseologia
	And um dos textos "pagamento;boleto;fatura;atendimento" for validado, com o tempo de execução "26000" em milissegundos
	And clico na opcao do menu: "1" 
	And um dos textos "títulos;fatura;transferências;pagamento" for validado, com o tempo de execução "20000" em milissegundos
	And clico na opcao do menu: "1" 
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO
	
@URA1076
Scenario: URA1076-Pagamentos_Titulosecontas_Pagamentodetitulo_validocomcodigodebarrassemdataassociadaviacartaodecredito_FRASEOLOGIA_SegmentoExclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Fraseologia
	And um dos textos "pagamento;boleto;fatura;atendimento" for validado, com o tempo de execução "26000" em milissegundos
	And clico na opcao do menu: "1" 
	And um dos textos "títulos;fatura;transferências;pagamento" for validado, com o tempo de execução "20000" em milissegundos
	And clico na opcao do menu: "1" 
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO
	
@URA0878
Scenario: URA0878-Pagamentos_Títulosecontas_Pagamentodetítulo_válidocomcódigodebarrassemdataassociadaviacartãodecrédito_FRASEOLOGIA_SegmentoClassico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And um dos textos "pagamento;boleto;fatura;atendimento" for validado, com o tempo de execução "26000" em milissegundos
	And clico na opcao do menu: "1" 
	And um dos textos "títulos;fatura;transferências;pagamento" for validado, com o tempo de execução "20000" em milissegundos
	And clico na opcao do menu: "1" 
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO