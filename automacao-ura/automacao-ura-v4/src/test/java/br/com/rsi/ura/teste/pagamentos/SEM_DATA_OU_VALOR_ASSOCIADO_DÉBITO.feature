@SEM_DATA_OU_VALOR_ASSOCIADO @PAGAMENTOS
Feature: Pagamento -- SEM_DATA_OU_VALOR_ASSOCIADO

Background: 
	Given inicializo o 'Relatorio de Dados'
	When clico o numero do telefone da 'Ura'

@URA0857
Scenario: URA0857-Pagamentos_Títulosecontas_Pagamentodetítulo_viadébitoemconta_comcódigodebarrassemdataassociada_Modelonovosenha6dígitos_SegmentoExclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO