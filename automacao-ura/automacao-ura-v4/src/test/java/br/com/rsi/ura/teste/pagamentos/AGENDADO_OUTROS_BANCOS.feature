@AGENDADO_OUTROS_BANCOS @PAGAMENTOS
Feature: Pagamento -- AGENDADO_OUTROS_BANCOS

Background: 
	Given inicializo o 'Relatorio de Dados'
	When clico o numero do telefone da 'Ura'

@URA0849
Scenario: URA0849-Pagamentos_TitulosEContas_PagamentoAgendadodetitulovencido_Outrosbancosvalido_vencido_debitoEmConta_ModeloNovoSenha6Digitos_Classico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO	
	
@URA0880
Scenario: URA0880-Pagamentos_Títulosecontas_PagamentoAgendadodetítulovencido_Outrosbancosválido_vencido_débitoemconta_Modelonovosenha6dígitos_SegmentoExclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO	
	
@URA0883
Scenario: URA0883-Pagamentos_Títulosecontas_PagamentoAgendadodetítulovencido_Outrosbancosválido_débitoemcontaDianãoútil_Modelonovosenha6dígitos_SegmentoClássico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO	
	
@URA0924
Scenario: URA0924-Pagamentos_Títulosecontas_PagamentoAgendadodetítulovencido_Outrosbancosválido_débitoemconta_ModeloNovosenha6dígitos_SegmentoExclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO	
	
@URA0928
Scenario: URA0928-Pagamentos_Títulosecontas_PagamentoAgendadodetítulovencido_Outrosbancosválido_débitoemcontaDianãoútil_Modeloantigosenha4dígitos_SegmentoExclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO
	
@URA1066
Scenario: URA1066-Pagamentos_Títulosecontas_PagamentoAgendadodetítulovencido_Outrosbancosválido_débitoemconta_Modelonovosenha6dígitos_SegmentoClássico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO	
	
@URA1095
Scenario: URA1095-Pagamentos_Títulosecontas_PagamentoAgendadodetítulovencido_Outrosbancosválido_vencido_débitoemconta_Modelonovosenha6dígitos_SegmentoExclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO	
	
@URA0980
Scenario: URA0980-Pagamentos_Titulosecontas_PagamentoAgendadodetitulovencido_Outrosbancosvalido_debitoemconta_FRASEOLOGIA_SegmentoPrivate

	And estou indo ao menu principal Private ou Select Fraseologia
	And um dos textos "pagamento;boleto;fatura;atendimento" for validado, com o tempo de execução "26000" em milissegundos
	And clico na opcao do menu: "1" 
	And um dos textos "títulos;fatura;transferências;pagamento" for validado, com o tempo de execução "20000" em milissegundos
	And clico na opcao do menu: "1" 
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO	
	
@URA0981
Scenario: URA0981-Pagamentos_Titulosecontas_PagamentoAgendadodetitulovencido_Outrosbancosvalido_debitoemconta_FRASEOLOGIA_SegmentoSelect

	And estou indo ao menu principal Private ou Select Fraseologia
	And um dos textos "pagamento;boleto;fatura;atendimento" for validado, com o tempo de execução "26000" em milissegundos
	And clico na opcao do menu: "1" 
	And um dos textos "títulos;fatura;transferências;pagamento" for validado, com o tempo de execução "20000" em milissegundos
	And clico na opcao do menu: "1" 
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO	
	
@URA0984
Scenario: URA0984-Pagamentos_Titulosecontas_PagamentoAgendadodetitulovencido_Outrosbancosvalido_vencido_debitoemconta_FRASEOLOGIA_SegmentoPrivate

	And estou indo ao menu principal Private ou Select Fraseologia
	And um dos textos "pagamento;boleto;fatura;atendimento" for validado, com o tempo de execução "26000" em milissegundos
	And clico na opcao do menu: "1" 
	And um dos textos "títulos;fatura;transferências;pagamento" for validado, com o tempo de execução "20000" em milissegundos
	And clico na opcao do menu: "1" 
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO		