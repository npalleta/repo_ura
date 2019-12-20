@PGT_TITULO_INVALIDO_CREDITO @PAGAMENTOS
Feature: Pagamento -- PGT_TITULO_INVALIDO_CREDITO

Background: 
	Given inicializo o 'Relatorio de Dados'
	When clico o numero do telefone da 'Ura'
	
@URA0869	
Scenario: URA0869-Pagamentos_Titulosecontas_Pagamentodetitulo_Santanderinvalidocomcartaodecredito_Modelonovosenha6digitos_SegmentoClassico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1" 
	And clico na opcao do menu transacional: "1"
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO
	#And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	#And clico na opcao do menu transacional: "2" 
	#Then estou em codigo de barra indo para "inválido" como resultado esperado
	
@URA0871
Scenario: URA0871-Pagamentos_Titulosecontas_Pagamentodetitulo_deOutrosBancosinvalidocartaodecredito_Modelonovosenha6digitos_SegmentoClassico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO

@URA0923	
Scenario: URA0923-Pagamentos_Títulosecontas_Pagamentodetítulo_Santanderinválidocomcartãodecrédito_Modelonovosenha6dígitos_SegmentoClássico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO
	
@URA0985	
Scenario: URA0985-Pagamentos_Títulosecontas_Pagamentodetítulo_Santanderinválidocomcartãodecrédito_FRASEOLOGIA_SegmentoExclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Fraseologia
	And um dos textos "pagamento;boleto;fatura;atendimento" for validado, com o tempo de execução "26000" em milissegundos
	And clico na opcao do menu: "1" 
	And um dos textos "títulos;fatura;transferências;pagamento" for validado, com o tempo de execução "20000" em milissegundos
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO
	
@URA0998	
Scenario: URA0998-Pagamentos_Titulosecontas_Pagamentodetitulo_Santanderinvalidocomcartaodecredito_FRASEOLOGIA_SegmentoExclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Fraseologia
	And um dos textos "pagamento;boleto;fatura;atendimento" for validado, com o tempo de execução "26000" em milissegundos
	And clico na opcao do menu: "1" 
	And um dos textos "títulos;fatura;transferências;pagamento" for validado, com o tempo de execução "20000" em milissegundos
	And clico na opcao do menu: "1" 
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO
	
@URA1074
Scenario: URA1074-Pagamentos_Titulosecontas_Pagamentodetitulo_deOutrosBancosinvalidocartaodecredito_FRASEOLOGIA_SegmentoExclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Fraseologia
	And um dos textos "pagamento;boleto;fatura;atendimento" for validado, com o tempo de execução "26000" em milissegundos
	And clico na opcao do menu: "1" 
	And um dos textos "títulos;fatura;transferências;pagamento" for validado, com o tempo de execução "20000" em milissegundos
	And clico na opcao do menu: "1" 
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO