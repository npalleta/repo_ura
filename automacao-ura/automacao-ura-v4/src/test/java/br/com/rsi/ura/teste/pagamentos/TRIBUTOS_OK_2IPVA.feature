@PGT_TRIBUTOS_OK_2IPVA @PAGAMENTOS
Feature: Pagamento -- PGT_TRIBUTOS_OK_2IPVA

Background: 
	Given inicializo o 'Relatorio de Dados'
	When clico o numero do telefone da 'Ura'
	
@URA0899
Scenario: URA0899-Pagamentos_Tríbutos_PagamentodeIPVA_2IPVAs-clientecommaisde1Renavamcadastrado_Modelonovosenha6dígitos_SegmentoExclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "5"
	Then realizo o caminho para PAGAMENTO de UM ou DOIS TRIBUTOS e valido resultado
	
@URA0900
Scenario: URA0900-Pagamentos_Tríbutos_PagamentodeIPVA_2IPVAs-clientecommaisde1Renavamcadastrado_Modelonovosenha6dígitos_SegmentoClássico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "5"
	Then realizo o caminho para PAGAMENTO de UM ou DOIS TRIBUTOS e valido resultado
	
@URA0956
Scenario: URA0956-Pagamentos_Tríbutos_PagamentodeIPVA_2IPVAs-clientecommaisde1Renavamcadastrado_Modeloantigosenha4dígitos_SegmentoClássico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "5"
	Then realizo o caminho para PAGAMENTO de UM ou DOIS TRIBUTOS e valido resultado
	
@URA0957
Scenario: URA0957-Pagamentos_Tríbutos_PagamentodeIPVA_2IPVAs-clientecommaisde1Renavamcadastrado_Modeloantigosenha4dígitos_SegmentoExclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "5"
	Then realizo o caminho para PAGAMENTO de UM ou DOIS TRIBUTOS e valido resultado
	
@URA1034
Scenario: URA1034-Pagamentos_Tríbutos_PagamentodeIPVA_2IPVAs-clientecommaisde1Renavamcadastrado_FRASEOLOGIA_SegmentoPrivate

	And estou indo ao menu principal Private ou Select Fraseologia
	And um dos textos "pagamento;boleto;fatura;atendimento" for validado, com o tempo de execução "26000" em milissegundos
	And clico na opcao do menu: "1"
	And um dos textos "títulos;fatura;transferências;pagamento" for validado, com o tempo de execução "20000" em milissegundos
	And clico na opcao do menu: "5"
	Then realizo o caminho para PAGAMENTO de UM ou DOIS TRIBUTOS e valido resultado
	
@URA1035
Scenario: URA1035-Pagamentos_Tríbutos_PagamentodeIPVA_2IPVAs-clientecommaisde1Renavamcadastrado_FRASEOLOGIA_SegmentoSelect

	And estou indo ao menu principal Private ou Select Fraseologia
	And um dos textos "pagamento;boleto;fatura;atendimento" for validado, com o tempo de execução "26000" em milissegundos
	And clico na opcao do menu: "1"
	And um dos textos "títulos;fatura;transferências;pagamento" for validado, com o tempo de execução "20000" em milissegundos
	And clico na opcao do menu: "5"
	Then realizo o caminho para PAGAMENTO de UM ou DOIS TRIBUTOS e valido resultado