@PGT_TRIBUTOS_OK_2DPVAT @PAGAMENTOS
Feature: Pagamento -- PGT_TRIBUTOS_OK_2DPVAT

Background: 
	Given inicializo o 'Relatorio de Dados'
	When clico o numero do telefone da 'Ura' 

@URA0901
Scenario: URA0901-Pagamentos_Tríbutos_PagamentodeIPVA_2DPVATs-clientecommaisde1Renavamcadastrado_Modelonovosenha6dígitos_SegmentoExclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "5"
	Then realizo o caminho para PAGAMENTO de UM ou DOIS TRIBUTOS e valido resultado 

@URA0959
Scenario: URA0959-Pagamentos_Tríbutos_PagamentodeIPVA_2DPVATs-clientecommaisde1Renavamcadastrado_Modeloantigosenha4dígitos_SegmentoClássico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "5"
	Then realizo o caminho para PAGAMENTO de UM ou DOIS TRIBUTOS e valido resultado
	
@URA1082
Scenario: URA1082-Pagamentos_Tríbutos_PagamentodeIPVA_2DPVATs-clientecommaisde1Renavamcadastrado_Modelonovosenha6dígitos_SegmentoClássico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "5"
	Then realizo o caminho para PAGAMENTO de UM ou DOIS TRIBUTOS e valido resultado

@URA1037
Scenario: URA1037-Pagamentos_Tríbutos_PagamentodeIPVA_2DPVATs-clientecommaisde1Renavamcadastrado_FRASEOLOGIA_SegmentoPrivate

	And estou indo ao menu principal Private ou Select Fraseologia
	And um dos textos "pagamento;boleto;fatura;atendimento" for validado, com o tempo de execução "26000" em milissegundos
	And clico na opcao do menu: "1"
	And um dos textos "títulos;fatura;transferências;pagamento" for validado, com o tempo de execução "20000" em milissegundos
	And clico na opcao do menu: "5"
	Then realizo o caminho para PAGAMENTO de UM ou DOIS TRIBUTOS e valido resultado

@URA1038
Scenario: URA1038-Pagamentos_Tríbutos_PagamentodeIPVA_2DPVATs-clientecommaisde1Renavamcadastrado_FRASEOLOGIA_SegmentoSelect

	And estou indo ao menu principal Private ou Select Fraseologia
	And um dos textos "pagamento;boleto;fatura;atendimento" for validado, com o tempo de execução "26000" em milissegundos
	And clico na opcao do menu: "1"
	And um dos textos "títulos;fatura;transferências;pagamento" for validado, com o tempo de execução "20000" em milissegundos
	And clico na opcao do menu: "5"
	Then realizo o caminho para PAGAMENTO de UM ou DOIS TRIBUTOS e valido resultado

@URA1086
Scenario: URA1086-Pagamentos_Tríbutos_PagamentodeIPVA_2DPVATs-clientecommaisde1Renavamcadastrado_FRASEOLOGIA_SegmentoExclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Fraseologia
	And um dos textos "pagamento;boleto;fatura;atendimento" for validado, com o tempo de execução "26000" em milissegundos
	And clico na opcao do menu: "1"
	And um dos textos "títulos;fatura;transferências;pagamento" for validado, com o tempo de execução "20000" em milissegundos
	And clico na opcao do menu: "5"
	Then realizo o caminho para PAGAMENTO de UM ou DOIS TRIBUTOS e valido resultado