@OUTROS_BANCOS_VALIDO_CREDITO @PAGAMENTOS
Feature: Pagamento -- OUTROS_BANCOS_VALIDO_CREDITO

Background: 
	Given inicializo o 'Relatorio de Dados'
	When clico o numero do telefone da 'Ura'
	
@URA0846	
Scenario: URA0846-Pagamentos_Títulosecontas_Pagamentodetítulovencidos_deOutrosBancosválido_vencidocomcartãodecrédito_Modeloantigosenha4dígitos_SegmentoSelect

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "1" 
	And clico na opcao do menu transacional: "1" 
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO
	
@URA0864
Scenario: URA0864-Pagamentos_Titulosecontas_Pagamentodetitulo_deOutrosBancosvalidocomcartaodecreditonovencimento_Modelonovosenha6digitos_SegmentoClassico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1" 
	And clico na opcao do menu transacional: "1" 
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO
	
@URA0867
Scenario: URA0867-Pagamentos_TitulosEContas_PagamentoDeTitulovencidos_deOutrosBancosvalido_vencidocomcartaodecredito_ModeloNovoSenha6Digitos_Exclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO	
	
@URA0868
Scenario: URA0868-Pagamentos_TitulosEContas_PagamentoDeTitulovencidos_deOutrosBancosvalido_vencidocomcartaodecredito_ModeloNovoSenha6Digitos_Classico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO
	
@URA0916
Scenario: URA0916-Pagamentos_Títulosecontas_Pagamentodetítulo_deOutrosBancosválidocomcartãodecréditonovencimento_Modelonovosenha6dígitos_SegmentoClássico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO
	
@URA0919	
Scenario: URA0919-Pagamentos_Títulosecontas_Pagamentodetítulovencidos_deOutrosBancosválido_vencidocomcartãodecrédito_Modelonovosenha6dígitos_SegmentoClássico
	
	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO	
	
@URA0921	
Scenario: URA0921-Pagamentos_Títulosecontas_Pagamentodetítulovencidos_deOutrosBancosválido_vencidocomcartãodecrédito_Modelonovosenha6dígitos_SegmentoVanGogh
	
	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO
	
@URA0922	
Scenario: URA0922-Pagamentos_Títulosecontas_Pagamentodetítulo_deOutrosBancosválidocomcartãodecréditonovencimentoDianãoútil_Modelonovosenha6dígitos_SegmentoClássico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO
	
@URA0962	
Scenario: URA0962-Pagamentos_Títulosecontas_Pagamentodetítulo_deOutrosBancosválidocomcartãodecréditonovencimentoDianãoútil_Modelonovosenha6dígitos_SegmentoClássico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1" 
	And clico na opcao do menu transacional: "1" 
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO
	
@URA1392	
Scenario: URA1392-Pagamentotituloecontas_PagamentodetituloOutrosBancosnovencimentoválidoclientecomumcartãodecrédito_Clássico_FRASEOLOGIA

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Fraseologia
	And um dos textos "pagamento;boleto;fatura;atendimento" for validado, com o tempo de execução "26000" em milissegundos
	And clico na opcao do menu: "1"
	And um dos textos "títulos;fatura;transferências;pagamento" for validado, com o tempo de execução "20000" em milissegundos
	And clico na opcao do menu: "1"
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO	
	
@URA1393	
Scenario: URA1393-Pagamentotituloecontas_PagamentodetítuloOutrosBancosvencidoválidoclientecommaisdeumcartãodecrédito_Clássico_FRASEOLOGIA

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Fraseologia
	And um dos textos "pagamento;boleto;fatura;atendimento" for validado, com o tempo de execução "26000" em milissegundos
	And clico na opcao do menu: "1"
	And um dos textos "títulos;fatura;transferências;pagamento" for validado, com o tempo de execução "20000" em milissegundos
	And clico na opcao do menu: "1"
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO	
	
@URA1394	
Scenario: URA1394-Pagamentotituloecontas_PagamentodeOutrosBancostítuloavencerválidoclientecommaisdeumcartãodecrédito_Clássico_FRASEOLOGIA

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Fraseologia
	And um dos textos "pagamento;boleto;fatura;atendimento" for validado, com o tempo de execução "26000" em milissegundos
	And clico na opcao do menu: "1"
	And um dos textos "títulos;fatura;transferências;pagamento" for validado, com o tempo de execução "20000" em milissegundos
	And clico na opcao do menu: "1"
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO	
	
@URA0983	
Scenario: URA0983-Pagamentos_Títulosecontas_Pagamentodetítulovencidos_deOutrosBancosválido_vencidocomcartãodecrédito_FRASEOLOGIA_SegmentoExclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Fraseologia
	And um dos textos "pagamento;boleto;fatura;atendimento" for validado, com o tempo de execução "26000" em milissegundos
	And clico na opcao do menu: "1"
	And um dos textos "títulos;fatura;transferências;pagamento" for validado, com o tempo de execução "20000" em milissegundos
	And clico na opcao do menu: "1"
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO
	
@URA0996	
Scenario: URA0996-Pagamentos_Titulosecontas_Pagamentodetitulo_deOutrosBancosvalidocomcartaodecreditonovencimento_FRASEOLOGIA_SegmentoExclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Fraseologia
	And um dos textos "pagamento;boleto;fatura;atendimento" for validado, com o tempo de execução "26000" em milissegundos
	And clico na opcao do menu: "1" 
	And um dos textos "títulos;fatura;transferências;pagamento" for validado, com o tempo de execução "20000" em milissegundos
	And clico na opcao do menu: "1" 
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO	
	
@URA0997	
Scenario: URA0997-Pagamentos_TitulosEContas_PagamentoDeTitulovencidos_deOutrosBancosvalido_vencidocomcartaodecredito_FRASEOLOGIA_Exclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Fraseologia
	And um dos textos "pagamento;boleto;fatura;atendimento" for validado, com o tempo de execução "26000" em milissegundos
	And clico na opcao do menu: "1"
	And um dos textos "títulos;fatura;transferências;pagamento" for validado, com o tempo de execução "20000" em milissegundos
	And clico na opcao do menu: "1"
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO
	
@URA1064	
Scenario: URA1064-Pagamentos_Títulosecontas_Pagamentodetítulo_Outrosbancoválidocomcartãodecréditoforadohorário_FRASEOLOGIA_SegmentoPrivate

	And estou indo ao menu principal Private ou Select Fraseologia 
	And um dos textos "pagamento;boleto;fatura;atendimento" for validado, com o tempo de execução "26000" em milissegundos
	And clico na opcao do menu: "1" 
	And um dos textos "títulos;fatura;transferências;pagamento" for validado, com o tempo de execução "20000" em milissegundos
	And clico na opcao do menu: "1" 
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO
	
@URA1065	
Scenario: URA1065-Pagamentos_Títulosecontas_Pagamentodetítulo_Outrosbancoválidocomcartãodecréditoforadohorário_FRASEOLOGIA_SegmentoSelect

	And estou indo ao menu principal Private ou Select Fraseologia
	And um dos textos "pagamento;boleto;fatura;atendimento" for validado, com o tempo de execução "26000" em milissegundos
	And clico na opcao do menu: "1" 
	And um dos textos "títulos;fatura;transferências;pagamento" for validado, com o tempo de execução "20000" em milissegundos
	And clico na opcao do menu: "1" 
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO