@PGT_TITULO_INVALIDO_AGENDADO @PAGAMENTOS
Feature: Pagamento -- PGT_TITULO_INVALIDO_AGENDADO

Background: 
	Given inicializo o 'Relatorio de Dados'
	When clico o numero do telefone da 'Ura'
	
@URA1102	
Scenario: URA1102-Pagamentos_Títulosecontas_PagamentoAgendadodetítulovencido_inválidodébitoemconta_Modelonovosenha6dígitos_SegmentoExclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO
	#And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	#And clico na opcao do menu transacional: "1"
	#And clico na opcao do menu transacional: "2"
	#And clico nos numeros da 'dataAgendamento' transacional
	#Then estou em codigo de barra indo para "inválido" como resultado esperado
	
@URA0884	
Scenario: URA0884-Pagamentos_Títulosecontas_PagamentoAgendadodetítulovencido_inválidodébitoemconta_Modelonovosenha6dígitos_SegmentoClássico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO
	
@URA0881	
Scenario: URA0881-Pagamentos_Títulosecontas_PagamentoAgendadodetítulovencido_inválidodébitoemconta_Modelonovosenha6dígitos_SegmentoExclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO
	
@URA0853	
Scenario: URA0853-Pagamentos_Titulosecontas_PagamentoAgendadodetitulovencido_invalidodebitoemconta_Modelonovosenha6digitos_SegmentoExclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO	
	
@URA0854	
Scenario: URA0854-Pagamentos_Titulosecontas_PagamentoAgendadodetitulovencido_invalidodebitoemconta_Modelonovosenha6digitos_SegmentoClassico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO
	
@URA0988	
Scenario: URA0988-Pagamentos_Titulosecontas_PagamentoAgendadodetitulovencido_invalido_debitoemconta_FRASEOLOGIA_SegmentoPrivate

	And estou indo ao menu principal Private ou Select Fraseologia
	And um dos textos "pagamento;boleto;fatura;atendimento" for validado, com o tempo de execução "26000" em milissegundos
	And clico na opcao do menu: "1" 
	And um dos textos "títulos;fatura;transferências;pagamento" for validado, com o tempo de execução "20000" em milissegundos
	And clico na opcao do menu: "1" 
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO
	
@URA0967	
Scenario: URA0967-Pagamentos_Titulosecontas_PagamentoAgendadodetitulovencido_invalido_debitoemconta_FRASEOLOGIA_SegmentoExclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Fraseologia
	And um dos textos "pagamento;boleto;fatura;atendimento" for validado, com o tempo de execução "26000" em milissegundos
	And clico na opcao do menu: "1"
	And um dos textos "títulos;fatura;transferências;pagamento" for validado, com o tempo de execução "20000" em milissegundos
	And clico na opcao do menu: "1"
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO
	
@URA0931	
Scenario: URA0931-Pagamentos_Títulosecontas_PagamentoAgendadodetítulovencido_inválido_débitoemconta_FRASEOLOGIA_SegmentoSelect

	And estou indo ao menu principal Private ou Select Fraseologia
	And um dos textos "pagamento;boleto;fatura;atendimento" for validado, com o tempo de execução "26000" em milissegundos
	And clico na opcao do menu: "1" 
	And um dos textos "títulos;fatura;transferências;pagamento" for validado, com o tempo de execução "20000" em milissegundos
	And clico na opcao do menu: "1" 
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO