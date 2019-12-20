@SEM_DATA_OU_VALOR_ASSOCIADO_AGENDADO @PAGAMENTOS
Feature: Pagamento -- SEM_DATA_OU_VALOR_ASSOCIADO_AGENDADO

Background: 
	Given inicializo o 'Relatorio de Dados'
	When clico o numero do telefone da 'Ura'
	
@URA0859
Scenario: URA0859-Pagamentos_TitulosEContas_PagamentoAgendadodetitulovencido_comcodigodebarrassemdataassociada_ModeloNovoSenha6Digitos_Exclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO
	
@URA0860
Scenario: URA0860-Pagamentos_TitulosEContas_PagamentoAgendadodetitulovencido_comcodigodebarrassemdataassociada_ModeloNovoSenha6Digitos_Classico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO

@URA0904
Scenario: URA0904-Pagamentos_Títulosecontas_PagamentoAgendadodetítulovencido_comcódigodebarrassemvalorassociadoDianãoútil_Modelonovosenha6dígitos_SegmentoClássico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO

@URA0905
Scenario: URA0905-Pagamentos_Títulosecontas_PagamentoAgendadodetítulovencido_comcódigodebarrassemvalorassociado_Modelonovosenha6dígitos_SegmentoClássico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO
	
@URA0907
Scenario: URA0907-Pagamentos_Títulosecontas_PagamentoAgendadodetítulovencido_comcódigodebarrassemdataassociada_Modelonovosenha6dígitos_SegmentoPrivate

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO
	
@URA0913	
Scenario: URA0913-Pagamentos_Títulosecontas_PagamentoAgendadodetítulovencido_comcódigodebarrassemdataassociada_Modelonovosenha6dígitos_SegmentoSelect

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO	
	
@URA0942	
Scenario: URA0942-Pagamentos_Títulosecontas_PagamentoAgendadodetítulovencido_comcódigodebarrassemvalorassociado_FRASEOLOGIA_SegmentoPrivate

	And estou indo ao menu principal Private ou Select Fraseologia
	And um dos textos "pagamento;boleto;fatura;atendimento" for validado, com o tempo de execução "26000" em milissegundos
	And clico na opcao do menu: "1" 
	And um dos textos "títulos;fatura;transferências;pagamento" for validado, com o tempo de execução "20000" em milissegundos
	And clico na opcao do menu: "1" 
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO
	
@URA0965	
Scenario: URA0965-Pagamentos_Títulosecontas_PagamentoAgendadodetítulovencido_comcódigodebarrassemvalorassociado_FRASEOLOGIA_SegmentoSelect

	And estou indo ao menu principal Private ou Select Fraseologia
	And um dos textos "pagamento;boleto;fatura;atendimento" for validado, com o tempo de execução "26000" em milissegundos
	And clico na opcao do menu: "1" 
	And um dos textos "títulos;fatura;transferências;pagamento" for validado, com o tempo de execução "20000" em milissegundos
	And clico na opcao do menu: "1" 
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO