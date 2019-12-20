@SANTANDER_VALIDO @PAGAMENTOS
Feature: Pagamento -- SANTANDER_VALIDO

Background: 
	Given inicializo o 'Relatorio de Dados'
	When clico o numero do telefone da 'Ura'

@URA0811
Scenario: URA0811-Pagamentos_Titulosecontas_Pagamentodetitulo_Santandervalido_novencimento_debitoemconta_Modelonovosenha6digitos_SegmentoExclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1" 
	And clico na opcao do menu transacional: "1" 
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO

@URA0812
Scenario: URA0812-Pagamentos_Titulosecontas_Pagamentodetitulo_Santandervalido_novencimento_debitoemconta_Modelonovosenha6digitos_SegmentoClassico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO

@URA0815
Scenario: URA0815-Pagamentos_TitulosEContas_PagamentoDeTitulovencidos_SantanderValido_vencidoviadebitoEmConta_ModeloNovoSenha6Digitos_Classico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO

@URA0836
Scenario: URA0836-Pagamentos_Títulosecontas_Pagamentodetítulo_Santander_débitoemconta_DIANÃOÚTILSEMSALDO_Modelonovosenha6dígitos_SegmentoClássico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO

@URA0839
Scenario: URA0839-Pagamentos_Títulosecontas_Pagamentodetítulovencidos_Santanderválido_vencidoviadébitoemconta_Modeloantigosenha4dígitos_SegmentoClássico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO

@URA0929
Scenario: URA0929-Pagamentos_Títulosecontas_Pagamentodetítulo_Santanderválido_novencimento_débitoemconta_Modelonovosenha6dígitos_Segmento_VanGogh

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1" 
	And clico na opcao do menu transacional: "1" 
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO

@URA0933
Scenario: URA0933-Pagamentos_Títulosecontas_Pagamentodetítulo_Santanderválido_novencimento_débitoemconta_Modelonovosenha6dígitos_SegmentoClássico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO

@URA0938
Scenario: URA0938-Pagamentos_Títulosecontas_Pagamentodetítulovencidos_Santanderválido_vencidoviadébitoemconta_Modelonovosenha6dígitos_SegmentoClássico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO
@URA0960
Scenario: URA0960-Pagamentos_Títulosecontas_Pagamentodetítulovencidos_Santanderválido_vencidoviadébitoemconta_Modelonovosenha6dígitos_SegmentoExclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1" 
	And clico na opcao do menu transacional: "1" 
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO

@URA0993
Scenario: URA0993-Pagamentos_Títulosecontas_Pagamentodetítulovencidos_Santanderválido_vencidoviadébitoemconta_Modelonovosenha6dígitos_SegmentoExclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1" 
	And clico na opcao do menu transacional: "1" 
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO

@URA1003
Scenario: URA1003-Pagamentos_TitulosEContas_PagamentoDeTitulovencidos_SantanderValido_vencidoviadebitoEmConta_ModeloNovoSenha6Digitos_Exclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO

@URA1072
Scenario: URA1072-Pagamentos_Títulosecontas_Pagamentodetítulo_Santanderválido_novencimento_débitoemconta_Modeloantigosenha4dígitos_SegmentoClássico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1" 
	And clico na opcao do menu transacional: "1" 
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO
	
@URA1077
Scenario: URA1077-Pagamentos_Títulosecontas_Pagamentodetítulo_Santanderválido_novencimento_débitoemconta_Modeloantigosenha4dígitos_SegmentoExclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1" 
	And clico na opcao do menu transacional: "1" 
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO
	
@URA0969
Scenario: URA0969-Pagamentos_TitulosEContas_PagamentoDeTitulovencidos_SantanderValido_vencidoviadebitoEmConta_FRASEOLOGIA_Exclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Fraseologia
	And um dos textos "pagamento;boleto;fatura;atendimento" for validado, com o tempo de execução "26000" em milissegundos
	And clico na opcao do menu: "1"
	And um dos textos "títulos;fatura;transferências;pagamento" for validado, com o tempo de execução "20000" em milissegundos
	And clico na opcao do menu: "1"
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO

@URA0992
Scenario: URA0992-Pagamentos_Títulosecontas_Pagamentodetítulovencidos_Santanderválido_vencidoviadébitoemconta_FRASEOLOGIA_SegmentoExclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Fraseologia
	And um dos textos "pagamento;boleto;fatura;atendimento" for validado, com o tempo de execução "26000" em milissegundos
	And clico na opcao do menu: "1" 
	And um dos textos "títulos;fatura;transferências;pagamento" for validado, com o tempo de execução "20000" em milissegundos
	And clico na opcao do menu: "1" 
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO