@PGT_MAIOR_PERMITIDO_AGENDADO @PAGAMENTOS
Feature: Pagamento -- PGT_MAIOR_PERMITIDO_AGENDADO

Background: 
	Given inicializo o 'Relatorio de Dados'
	When clico o numero do telefone da 'Ura'
	
@URA0903
Scenario: URA0903-Pagamentos_Títulosecontas_PagamentoAgendadodetítulovencido_válidocomvalormaiorqueopermitido_Modelonovosenha6dígitos_SegmentoClássico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO
	
@URA0855
Scenario: URA0855-Pagamentos_TitulosEContas_AgendarTituloVencido_validocomvalormaiorqueopermitido_Senha6Dig_Classico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO
	
@URA0932
Scenario: URA0932-Pagamentos_Títulosecontas_PagamentoAgendadodetítulovencido_válidocomvalormaiorqueopermitido_FRASEOLOGIA_SegmentoPrivate

	And estou indo ao menu principal Private ou Select Fraseologia
	And um dos textos "pagamento;boleto;fatura;atendimento" for validado, com o tempo de execução "26000" em milissegundos
	And clico na opcao do menu: "1" 
	And um dos textos "títulos;fatura;transferências;pagamento" for validado, com o tempo de execução "20000" em milissegundos
	And clico na opcao do menu: "1" 
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO

@URA0937
Scenario: URA0937-Pagamentos_Títulosecontas_PagamentoAgendadodetítulovencido_válidocomvalormaiorqueopermitido_FRASEOLOGIA_SegmentoSelect

	And estou indo ao menu principal Private ou Select Fraseologia
	And um dos textos "pagamento;boleto;fatura;atendimento" for validado, com o tempo de execução "26000" em milissegundos
	And clico na opcao do menu: "1" 
	And um dos textos "títulos;fatura;transferências;pagamento" for validado, com o tempo de execução "20000" em milissegundos
	And clico na opcao do menu: "1" 
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO
	
@URA0990
Scenario: URA0990-Pagamentos_Titulosecontas_PagamentoAgendadodetitulovencido_validocomvalormaiorqueopermitido_FRASEOLOGIA_SegmentoPrivate

	And estou indo ao menu principal Private ou Select Fraseologia
	And um dos textos "pagamento;boleto;fatura;atendimento" for validado, com o tempo de execução "26000" em milissegundos
	And clico na opcao do menu: "1" 
	And um dos textos "títulos;fatura;transferências;pagamento" for validado, com o tempo de execução "20000" em milissegundos
	And clico na opcao do menu: "1" 
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO