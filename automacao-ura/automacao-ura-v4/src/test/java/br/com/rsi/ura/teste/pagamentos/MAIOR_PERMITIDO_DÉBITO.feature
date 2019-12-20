@PGT_MAIOR_PERMITIDO @PAGAMENTOS
Feature: Pagamento -- PGT_MAIOR_PERMITIDO

Background: 
	Given inicializo o 'Relatorio de Dados'
	When clico o numero do telefone da 'Ura'

@URA0831
Scenario: URA0831-Pagamentos_TitulosEContas_PagamentoDeTitulo_SantandercomvalormaiorqueopermitidoviadebitoEmConta_ModeloNovoSenha6Digitos_Classico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO

@URA0832
Scenario: URA0832-Pagamentos_TitulosEContas_PagamentoDeTitulo_SantandercomvalormaiorqueopermitidoviadebitoEmConta_ModeloNovoSenha6Digitos_Exclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO

@URA0833
Scenario: URA0833-Pagamentos_TitulosEContas_PagamentoDeTitulo_OutrosbancoscomvalormaiorqueopermitidoviadebitoEmConta_ModeloNovoSenha6Digitos_Exclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO

@URA0845
Scenario: URA0845-Pagamentos_Títulosecontas_Pagamentodetítulo_Santandercomvalormaiorqueopermitidoviadébitoemconta_Modelonovosenha6dígitos_SegmentoClássico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO

@URA0848
Scenario: URA0848-Pagamentos_Títulosecontas_Pagamentodetítulo_Santandercomvalormaiorqueopermitidoviadébitoemconta_Modelonovosenha6dígitos_SegmentoExclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO

@URA0877
Scenario: URA0877-Pagamentos_Títulosecontas_Pagamentodetítulo_Outrosbancoscomvalormaiorqueopermitidoviadébitoemconta_Modelonovosenha6dígitos_SegmentoExclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO

@URA0976
Scenario: URA0976-Pagamentos_TitulosEContas_PagamentoDeTitulo_SantandercomvalormaiorqueopermitidoviadebitoEmConta_FRASEOLOGIA_Exclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Fraseologia
	And um dos textos "pagamento;boleto;fatura;atendimento" for validado, com o tempo de execução "26000" em milissegundos
	And clico na opcao do menu: "1"
	And um dos textos "títulos;fatura;transferências;pagamento" for validado, com o tempo de execução "20000" em milissegundos
	And clico na opcao do menu: "1"
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO