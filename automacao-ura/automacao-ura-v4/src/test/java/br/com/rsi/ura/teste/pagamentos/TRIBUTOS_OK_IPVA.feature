@PGT_TRIBUTOS_RENAVAM_CADASTRADO_IPVA @PAGAMENTOS
Feature: Pagamento -- PGT_TRIBUTOS_RENAVAM_CADASTRADO_IPVA

Background: 
	Given inicializo o 'Relatorio de Dados'
	When clico o numero do telefone da 'Ura'
	
@URA0882
Scenario: URA0882-Pagamentos_Tríbutos_PagamentodeIPVA_clientecomRenavamcadastrado_Dianãoútil_Modelonovosenha6dígitos_SegmentoExclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "5"
	Then realizo o caminho para PAGAMENTO de UM ou DOIS TRIBUTOS e valido resultado
	
@URA0885
Scenario: URA0885-Pagamentos_Tríbutos_PagamentodeIPVA_clientecomRenavamcadastrado_Modelonovosenha6dígitos_SegmentoEspecial

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "5"
	Then realizo o caminho para PAGAMENTO de UM ou DOIS TRIBUTOS e valido resultado
	
@URA0886
Scenario: URA0886-Pagamentos_Tríbutos_PagamentodeIPVA_clientecomRenavamcadastrado_Modelonovosenha6dígitos_SegmentoExclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "5"
	Then realizo o caminho para PAGAMENTO de UM ou DOIS TRIBUTOS e valido resultado
	
@URA0886
Scenario: URA0886-Pagamentos_Tríbutos_PagamentodeIPVA_clientecomRenavamcadastrado_Modelonovosenha6dígitos_SegmentoExclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "5"
	Then realizo o caminho para PAGAMENTO de UM ou DOIS TRIBUTOS e valido resultado
	
@URA0889
Scenario: URA0889-Pagamentos_Tríbutos_PagamentodeIPVA_semdébitoclientecomRenavamcadastrado_Modelonovosenha6dígitos_SegmentoClássico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "5"
	Then realizo o caminho para PAGAMENTO de UM ou DOIS TRIBUTOS e valido resultado
	
@URA0944
Scenario: URA0944-Pagamentos_Tríbutos_PagamentodeIPVA_clientecomRenavamcadastrado_Modeloantigosenha4dígitos_SegmentoClássico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "5"
	Then realizo o caminho para PAGAMENTO de UM ou DOIS TRIBUTOS e valido resultado
	
@URA0945
Scenario: URA0945-Pagamentos_Tríbutos_PagamentodeIPVA_clientecomRenavamcadastrado_Modeloantigosenha4dígitos_SegmentoSelect

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "5"
	Then realizo o caminho para PAGAMENTO de UM ou DOIS TRIBUTOS e valido resultado

@URA1088
Scenario: URA1088-Pagamentos_Tríbutos_PagamentodeIPVA_RenavamsemdébitoclientecomRenavamcadastrado_Modelonovosenha6dígitos_SegmentoClássico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "5"
	Then realizo o caminho para PAGAMENTO de UM ou DOIS TRIBUTOS e valido resultado
	
@URA1091
Scenario: URA1091-Pagamentos_Tríbutos_PagamentodeIPVA_clientecomRenavamcadastrado_Modeloantigosenha4dígitos_SegmentoExclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "5"
	Then realizo o caminho para PAGAMENTO de UM ou DOIS TRIBUTOS e valido resultado
	
@URA1101
Scenario: URA1101-Pagamentos_Tríbutos_PagamentodeIPVA_clientecomRenavamcadastradoDianãoútil_Modelonovosenha6dígitos_SegmentoEspecial

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "5"
	Then realizo o caminho para PAGAMENTO de UM ou DOIS TRIBUTOS e valido resultado

@URA1013
Scenario: URA1013-Pagamentos_Tríbutos_PagamentodeIPVA_clientecomRenavamcadastrado_FRASEOLOGIA_SegmentoExclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Fraseologia
	And um dos textos "pagamento;boleto;fatura;atendimento" for validado, com o tempo de execução "26000" em milissegundos
	And clico na opcao do menu: "1"
	And um dos textos "títulos;fatura;transferências;pagamento" for validado, com o tempo de execução "20000" em milissegundos
	And clico na opcao do menu: "5"
	Then realizo o caminho para PAGAMENTO de UM ou DOIS TRIBUTOS e valido resultado
	
@URA1014
Scenario: URA1014-Pagamentos_Tríbutos_PagamentodeIPVA_clientecomRenavamcadastrado_FRASEOLOGIA_SegmentoClássico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Fraseologia
	And um dos textos "pagamento;boleto;fatura;atendimento" for validado, com o tempo de execução "26000" em milissegundos
	And clico na opcao do menu: "1"
	And um dos textos "títulos;fatura;transferências;pagamento" for validado, com o tempo de execução "20000" em milissegundos
	And clico na opcao do menu: "5"
	Then realizo o caminho para PAGAMENTO de UM ou DOIS TRIBUTOS e valido resultado
	
@URA1019
Scenario: URA1019-Pagamentos_Tríbutos_PagamentodeIPVA_RenavamsemdébitoclientecomRenavamcadastrado_FRASEOLOGIA_SegmentoPrivate

	And estou indo ao menu principal Private ou Select Fraseologia
	And um dos textos "pagamento;boleto;fatura;atendimento" for validado, com o tempo de execução "26000" em milissegundos
	And clico na opcao do menu: "1"
	And um dos textos "títulos;fatura;transferências;pagamento" for validado, com o tempo de execução "20000" em milissegundos
	And clico na opcao do menu: "5"
	Then realizo o caminho para PAGAMENTO de UM ou DOIS TRIBUTOS e valido resultado