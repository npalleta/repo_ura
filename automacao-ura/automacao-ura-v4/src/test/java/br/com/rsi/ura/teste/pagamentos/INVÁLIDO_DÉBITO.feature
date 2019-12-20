@PGT_TITULO_INVALIDO @PAGAMENTOS
Feature: Pagamento -- PGT_TITULO_INVALIDO

Background: 
	Given inicializo o 'Relatorio de Dados'
	When clico o numero do telefone da 'Ura'

@URA0827
Scenario: URA0827-Pagamentos_Titulosecontas_Pagamentodetitulo_Santanderinvalidoviadebitoemconta_Modelonovosenha6digitos_SegmentoExclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO
	#And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	#And clico na opcao do menu transacional: "1"
	#And clico na opcao do menu transacional: "1"
	
@URA0829
Scenario: URA0829-Pagamentos_Titulosecontas_Pagamentodetitulo_OutrosBancosinvalidoviadebitoemconta_Modelonovosenha6digitos_SegmentoClassico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO

@URA0830
Scenario: URA0830-Pagamentos_Titulosecontas_Pagamentodetitulo_OutrosBancosinvalidoviadebitoemconta_Modelonovosenha6digitos_SegmentoExclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO

@URA0841
Scenario: URA0841-Pagamentos_Títulosecontas_Pagamentodetítulo_OutrosBancosinválidoviadébitoemconta_Modelonovosenha6dígitos_SegmentoClássico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1" 
	And clico na opcao do menu transacional: "1" 
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO

@URA0968
Scenario: URA0968-Pagamentos_Títulosecontas_Pagamentodetítulo_OutrosBancosinválidoviadébitoemconta_Modelonovosenha6dígitos_SegmentoClássico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO
	 
@URA0828	
Scenario: URA0828-Pagamentos_Titulosecontas_Pagamentodetitulo_Santanderinvalidoviadebitoemconta_Modelonovosenha6digitos_SegmentoClassico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO	
	
@URA0835	
Scenario: URA0835-Pagamentos_Títulosecontas_Pagamentodetítulo_Santanderinválidoviadébitoemconta_Modelonovosenha6dígitos_SegmentoSelect

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO	
	
@URA0840	
Scenario: URA0840-Pagamentos_Títulosecontas_Pagamentodetítulo_Santanderinválidoviadébitoemconta_Modelonovosenha6dígitos_SegmentoClássico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO				
	
@URA1100	
Scenario: URA1100-Pagamentos_Títulosecontas_Pagamentodetítulo_Santanderinválidoviadébitoemconta_Modeloantigosenha4dígitos_SegmentoClássico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO	
	
@URA0963	
Scenario: URA0963-Pagamentos_Títulosecontas_Pagamentodetítulo_Santanderinválidoviadébitoemconta_Modelonovosenha6dígitos_SegmentoExclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO			
	
@URA0974
Scenario: URA0974-Pagamentos_Titulosecontas_Pagamentodetitulo_OutrosBancosinvalidoviadebitoemconta_FRASEOLOGIA_SegmentoPrivate

	And estou indo ao menu principal Private ou Select Fraseologia
	And um dos textos "pagamento;boleto;fatura;atendimento" for validado, com o tempo de execução "26000" em milissegundos
	And clico na opcao do menu: "1" 
	And um dos textos "títulos;fatura;transferências;pagamento" for validado, com o tempo de execução "20000" em milissegundos
	And clico na opcao do menu: "1" 
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO

@URA0975
Scenario: URA0975-Pagamentos_Titulosecontas_Pagamentodetitulo_OutrosBancosinvalidoviadebitoemconta_FRASEOLOGIA_SegmentoSelect

	And estou indo ao menu principal Private ou Select Fraseologia
	And um dos textos "pagamento;boleto;fatura;atendimento" for validado, com o tempo de execução "26000" em milissegundos
	And clico na opcao do menu: "1" 
	And um dos textos "títulos;fatura;transferências;pagamento" for validado, com o tempo de execução "20000" em milissegundos
	And clico na opcao do menu: "1" 
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO

@URA1010
Scenario: URA1010-Pagamentos_Títulosecontas_Pagamentodetítulo_OutrosBancosinválidoviadébitoemconta_FRASEOLOGIA_SegmentoSelect

	And estou indo ao menu principal Private ou Select Fraseologia
	And um dos textos "pagamento;boleto;fatura;atendimento" for validado, com o tempo de execução "26000" em milissegundos
	And clico na opcao do menu: "1" 
	And um dos textos "títulos;fatura;transferências;pagamento" for validado, com o tempo de execução "20000" em milissegundos
	And clico na opcao do menu: "1" 
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO		

@URA0973	
Scenario: URA0973-Pagamentos_Titulosecontas_Pagamentodetitulo_Santanderinvalidoviadebitoemconta_FRASEOLOGIA_SegmentoExclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Fraseologia
	And um dos textos "pagamento;boleto;fatura;atendimento" for validado, com o tempo de execução "26000" em milissegundos
	And clico na opcao do menu: "1"
	And um dos textos "títulos;fatura;transferências;pagamento" for validado, com o tempo de execução "20000" em milissegundos
	And clico na opcao do menu: "1"
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO	
	
@URA0994	
Scenario: URA0994-Pagamentos_Títulosecontas_Pagamentodetítulo_Santanderinválidoviadébitoemconta_FRASEOLOGIA_SegmentoExclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Fraseologia
	And um dos textos "pagamento;boleto;fatura;atendimento" for validado, com o tempo de execução "26000" em milissegundos
	And clico na opcao do menu: "1"
	And um dos textos "títulos;fatura;transferências;pagamento" for validado, com o tempo de execução "20000" em milissegundos
	And clico na opcao do menu: "1"
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO		