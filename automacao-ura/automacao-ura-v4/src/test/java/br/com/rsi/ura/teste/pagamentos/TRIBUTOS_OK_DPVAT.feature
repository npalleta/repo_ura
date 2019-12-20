@PGT_TRIBUTOS_RENAVAM_CADASTRADO_DPVAT @PAGAMENTOS
Feature: Pagamento -- PGT_TRIBUTOS_RENAVAM_CADASTRADO_DPVAT

Background: 
	Given inicializo o 'Relatorio de Dados'
	When clico o numero do telefone da 'Ura'
	
@URA0887
Scenario: URA0887-Pagamentos_Tríbutos_PagamentodeDPVAT_clientecomRenavamcadastrado_Modelonovosenha6dígitos_SegmentoExclusivo 

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1" 
	And clico na opcao do menu transacional: "5" 
	Then realizo o caminho para PAGAMENTO de UM ou DOIS TRIBUTOS e valido resultado
	
@URA0890
Scenario: URA0890-Pagamentos_Tríbutos_PagamentodeDPVAT_semdébitoclientecomRenavamcadastrado_Modelonovosenha6dígitos_SegmentoClássico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "5"
	Then realizo o caminho para PAGAMENTO de UM ou DOIS TRIBUTOS e valido resultado
	
@URA0946
Scenario: URA0946-Pagamentos_Tríbutos_PagamentodeDPVAT_clientecomRenavamcadastrado_Modeloantigosenha4dígitos_SegmentoClássico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "5"
	Then realizo o caminho para PAGAMENTO de UM ou DOIS TRIBUTOS e valido resultado
	
@URA0948
Scenario: URA0948-Pagamentos_Tríbutos_PagamentodeDPVAT_RenavamsemdébitoclientecomRenavamcadastrado_Modeloantigosenha4dígitos_SegmentoExclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "5"
	Then realizo o caminho para PAGAMENTO de UM ou DOIS TRIBUTOS e valido resultado
	
@URA1078
Scenario: URA1078-Pagamentos_Tríbutos_PagamentodeDPVAT_clientecomRenavamcadastrado_Modelonovosenha6dígitos_SegmentoClássico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "5"
	Then realizo o caminho para PAGAMENTO de UM ou DOIS TRIBUTOS e valido resultado
	
@URA1016
Scenario: URA1016-Pagamentos_Tributos_PagamentodeDPVAT_clientecomRenavamcadastrado_FRASEOLOGIA_SegmentoPrivate

	And estou indo ao menu principal Private ou Select Fraseologia
	And um dos textos "pagamento;boleto;fatura;atendimento" for validado, com o tempo de execução "26000" em milissegundos
	And clico na opcao do menu: "1" 
	And um dos textos "títulos;fatura;transferências;pagamento" for validado, com o tempo de execução "20000" em milissegundos
	And clico na opcao do menu: "5"
	Then realizo o caminho para PAGAMENTO de UM ou DOIS TRIBUTOS e valido resultado
	
@URA1017
Scenario: URA1017-Pagamentos_Tríbutos_PagamentodeDPVAT_clientecomRenavamcadastrado_FRASEOLOGIA_SegmentoSelect

	And estou indo ao menu principal Private ou Select Fraseologia
	And um dos textos "pagamento;boleto;fatura;atendimento" for validado, com o tempo de execução "26000" em milissegundos
	And clico na opcao do menu: "1"
	And um dos textos "títulos;fatura;transferências;pagamento" for validado, com o tempo de execução "20000" em milissegundos
	And clico na opcao do menu: "5"
	Then realizo o caminho para PAGAMENTO de UM ou DOIS TRIBUTOS e valido resultado
	
@URA1020
Scenario: URA1020-Pagamentos_Tríbutos_PagamentodeDPVAT_RenavamsemdébitoclientecomRenavamcadastrado_FRASEOLOGIA_SegmentoSelect

	And estou indo ao menu principal Private ou Select Fraseologia
	And um dos textos "pagamento;boleto;fatura;atendimento" for validado, com o tempo de execução "26000" em milissegundos
	And clico na opcao do menu: "1"
	And um dos textos "títulos;fatura;transferências;pagamento" for validado, com o tempo de execução "20000" em milissegundos
	And clico na opcao do menu: "5"
	Then realizo o caminho para PAGAMENTO de UM ou DOIS TRIBUTOS e valido resultado