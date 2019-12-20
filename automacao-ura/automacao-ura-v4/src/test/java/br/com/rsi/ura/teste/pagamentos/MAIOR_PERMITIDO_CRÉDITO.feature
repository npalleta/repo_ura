@PGT_MAIOR_PERMITIDO_CREDITO @PAGAMENTOS
Feature: Pagamento -- PGT_MAIOR_PERMITIDO_CREDITO

Background: 
	Given inicializo o 'Relatorio de Dados'
	When clico o numero do telefone da 'Ura'
	
@URA0873
Scenario: URA0873-Pagamentos_TitulosEContas_PagamentoDeTitulo_SantanderValido_comvalormaiorqueopermitidoviacartaodecredito_ModeloNovoSenha6Digitos_Classico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO

@URA0874
Scenario: URA0874-Pagamentos_TitulosEContas_PagamentoDeTitulo_SantanderValido_comvalormaiorqueopermitidoviacartaodecredito_ModeloNovoSenha6Digitos_Exclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO
	
@URA0875
Scenario: URA0875-Pagamentos_TitulosEContas_PagamentoDeTitulo_Outrosbancosvalido_comvalormaiorqueopermitidoviacartaodecredito_ModeloNovoSenha6Digitos_Classico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO

@URA0876
Scenario: URA0876-Pagamentos_TitulosEContas_PagamentoDeTitulo_Outrosbancosvalido_comvalormaiorqueopermitidoviacartaodecredito_ModeloNovoSenha6Digitos_Exclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO
	
@URA0925
Scenario: URA0925-Pagamentos_Títulosecontas_Pagamentodetítulo_Santanderválido_comvalormaiorqueopermitidoviacartãodecrédito_Modelonovosenha6dígitos_SegmentoClássico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO
	
@URA0927
Scenario: URA0927-Pagamentos_Títulosecontas_Pagamentodetítulo_Santanderválido_comvalormaiorqueopermitidoviacartãodecrédito_Modelonovosenha6dígitos_SegmentoExclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO

@URA0930
Scenario: URA0930-Pagamentos_Títulosecontas_Pagamentodetítulo_Outrosbancosválido_comvalormaiorqueopermitidoviacartãodecrédito_Modelonovosenha6dígitos_SegmentoClássico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO
	
@URA0935
Scenario: URA0935-Pagamentos_Títulosecontas_Pagamentodetítulo_Outrosbancosválido_comvalormaiorqueopermitidoviacartãodecrédito_Modelonovosenha6dígitos_SegmentoExclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO
	
	
@URA0989
Scenario: URA0989-Pagamentos_Títulosecontas_Pagamentodetítulo_Santanderválido_comvalormaiorqueopermitidoviacartãodecrédito_FRASEOLOGIA_SegmentoExclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Fraseologia
	And um dos textos "pagamento;boleto;fatura;atendimento" for validado, com o tempo de execução "26000" em milissegundos
	And clico na opcao do menu: "1"
	And um dos textos "títulos;fatura;transferências;pagamento" for validado, com o tempo de execução "20000" em milissegundos
	And clico na opcao do menu: "1"
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO
	
@URA0991
Scenario: URA0991-Pagamentos_Títulosecontas_Pagamentodetítulo_Santanderválido_comvalormaiorqueopermitidoviacartãodecrédito_FRASEOLOGIA_SegmentoSelect

	And estou indo ao menu principal Private ou Select Fraseologia
	And um dos textos "pagamento;boleto;fatura;atendimento" for validado, com o tempo de execução "26000" em milissegundos
	And clico na opcao do menu: "1"
	And um dos textos "títulos;fatura;transferências;pagamento" for validado, com o tempo de execução "20000" em milissegundos
	And clico na opcao do menu: "1"
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO

@URA0999
Scenario: URA0999-Pagamentos_TitulosEContas_PagamentoDeTitulo_SantanderValido_comvalormaiorqueopermitidoviacartaodecredito_FRASEOLOGIA_Exclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Fraseologia
	And um dos textos "pagamento;boleto;fatura;atendimento" for validado, com o tempo de execução "26000" em milissegundos
	And clico na opcao do menu: "1"
	And um dos textos "títulos;fatura;transferências;pagamento" for validado, com o tempo de execução "20000" em milissegundos
	And clico na opcao do menu: "1"
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO
	
@URA1000
Scenario: URA1000-Pagamentos_TitulosEContas_PagamentoDeTitulo_SantanderValido_comvalormaiorqueopermitidoviacartaodecredito_FRASEOLOGIA_Select

	And estou indo ao menu principal Private ou Select Fraseologia
	And um dos textos "pagamento;boleto;fatura;atendimento" for validado, com o tempo de execução "26000" em milissegundos
	And clico na opcao do menu: "1"
	And um dos textos "títulos;fatura;transferências;pagamento" for validado, com o tempo de execução "20000" em milissegundos
	And clico na opcao do menu: "1"
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO