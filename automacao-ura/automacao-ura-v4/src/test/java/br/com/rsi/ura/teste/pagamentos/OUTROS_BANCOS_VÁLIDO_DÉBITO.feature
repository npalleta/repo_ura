@OUTROS_BANCOS_VALIDO @PAGAMENTOS
Feature: Pagamento -- OUTROS_BANCOS_VALIDO

Background: 
	Given inicializo o 'Relatorio de Dados'
	When clico o numero do telefone da 'Ura'

@URA0813
Scenario: URA0813-Pagamentos_Titulosecontas_Pagamentodetitulo_Outrosbancosvalido_novencimento_debitoemconta_Modelonovosenha6digitos_SegmentoExclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO
	
@URA0814	
Scenario: URA0814-Pagamentos_Titulosecontas_Pagamentodetitulo_Outrosbancosvalido_novencimento_debitoemconta_Modelonovosenha6digitos_SegmentoClassico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO
	
@URA0817
Scenario: URA0817-Pagamentos_Titulosecontas_Pagamentodetitulovencidos_Outrosbancosvalido_vencidoviadebitoemconta_Modelonovosenha6digitos_SegmentoExclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1" 
	And clico na opcao do menu transacional: "1" 
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO
	
@URA0837
Scenario: URA0837-Pagamentos_Títulosecontas_Pagamentodetítulo_deOutrosbancos_débitoemconta_foradohoráriocomSALDO_Modelonovosenha6dígitos_SegmentoExclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO
	
@URA0842	
Scenario: URA0842-Pagamentos_Títulosecontas_Pagamentodetítulo_deOutrosbancos_débitoemconta_foradohorário_Modeloantigosenha4dígitos_SegmentoExclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO	
	
@URA0863
Scenario: URA0863-Pagamentos_Titulosecontas_Pagamentodetitulo_deOutrosBancosvalido_Modelonovosenha6digitos_SegmentoClassico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1" 
	And clico na opcao do menu transacional: "1" 
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO		
	
@URA0915	
Scenario: URA0915-Pagamentos_Títulosecontas_Pagamentodetítulo_deOutrosBancosválido_Modelonovosenha6dígitos_SegmentoClássico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO		
	
@URA0934	
Scenario: URA0934-Pagamentos_Títulosecontas_Pagamentodetítulo_Outrosbancosválido_novencimento_débitoemconta_Modelonovosenha6dígitos_SegmentoExclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO	
	
@URA0936	
Scenario: URA0936-Pagamentos_Títulosecontas_Pagamentodetítulo_Outrosbancosválido_novencimento_débitoemconta_Modelonovosenha6dígitos_SegmentoClássico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO	
	
@URA0940	
Scenario: URA0940-Pagamentos_Títulosecontas_Pagamentodetítulovencidos_Outrosbancosválido_vencidoviadébitoemconta_Modelonovosenha6dígitos_SegmentoExclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO	
	
@URA0977	
Scenario: URA0977-Pagamentos_Títulosecontas_Pagamentodetítulo_Outrosbancoscomvalormaiorqueopermitidoviadébitoemconta_Modelonovosenha6dígitos_SegmentoExclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO	
	
@URA1006	
Scenario: URA1006-Pagamentos_Titulosecontas_Pagamentodetitulovencidos_Outrosbancosvalido_vencidoviadebitoemconta_Modelonovosenha6digitos_SegmentoClassico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO		
	
@URA1040	
Scenario: URA1040-Pagamentos_Títulosecontas_Pagamentodetítulo_deOutrosbancos_débitoemconta_foradohorário_Modelonovosenha6dígitos_SegmentoExclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO
	
@URA1054	
Scenario: URA1054-Pagamentos_Títulosecontas_Pagamentodetítulo_Outrosbancoválidocomcartãodecréditoforadohorário_Modelonovosenha6dígitos_SegmentoExclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1" 
	And clico na opcao do menu transacional: "1" 
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO	
	
@URA1096	
Scenario: URA1096-Pagamentos_Títulosecontas_Pagamentodetítulo_Outrosbancosválido_novencimento_débitoemcontas_Modeloantigosenha4dígitos_SegmentoClássico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO	
	
@URA1097	
Scenario: URA1097-Pagamentos_Títulosecontas_Pagamentodetítulo_Outrosbancosválido_novencimento_débitoemconta_Modeloantigosenha4dígitos_SegmentoExclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO	
	
@URA1098	
Scenario: URA1098-Pagamentos_Títulosecontas_Pagamentodetítulovencidos_Outrosbancosválido_vencidoviadébitoemconta_Modeloantigosenha4dígitos_SegmentoClássico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO
	
@URA1007	
Scenario: URA1007-Pagamentos_Títulosecontas_Pagamentodetítulo_deOutrosbancos_débitoemconta_foradohorário_Modelonovosenha6dígitos_SegmentoClássico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Fraseologia
	And um dos textos "pagamento;boleto;fatura;atendimento" for validado, com o tempo de execução "26000" em milissegundos
	And clico na opcao do menu: "1"
	And um dos textos "títulos;fatura;transferências;pagamento" for validado, com o tempo de execução "20000" em milissegundos
	And clico na opcao do menu: "1"
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO
	
@URA1067	
Scenario: URA1067-Pagamentos_Titulosecontas_Pagamentodetitulo_Outrosbancosvalido_novencimento_debitoemconta_FRASEOLOGIA_SegmentoClassico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Fraseologia
	And um dos textos "pagamento;boleto;fatura;atendimento" for validado, com o tempo de execução "26000" em milissegundos
	And clico na opcao do menu: "1" 
	And um dos textos "títulos;fatura;transferências;pagamento" for validado, com o tempo de execução "20000" em milissegundos
	And clico na opcao do menu: "1"
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO	
	
@URA1068	
Scenario: URA1068-Pagamentos_Titulosecontas_Pagamentodetitulovencidos_Outrosbancosvalido_vencidoviadebitoemconta_FRASEOLOGIA_SegmentoExclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Fraseologia
	And um dos textos "pagamento;boleto;fatura;atendimento" for validado, com o tempo de execução "26000" em milissegundos
	And clico na opcao do menu: "1" 
	And um dos textos "títulos;fatura;transferências;pagamento" for validado, com o tempo de execução "20000" em milissegundos
	And clico na opcao do menu: "1" 
	Then realizo o caminho para PGT de TÍTULOS validando RESULTADO