@SEGURO_PRESTAMISTA @SEGUROS
Feature: Seguros -- SEGURO_PRESTAMISTA

Background: 
	Given inicializo o 'Relatorio de Dados'
	When clico o numero do telefone da 'Ura'
	
@URA1388
Scenario: URA1388-Seguros_Prestamista_Cartao_ConsultaSegurodecartao_VanGogh

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "2"
	And estou na opcao de cartões indo ao menu principal
	And clico na opcao do menu transacional: "5"
	And clico na opcao do menu transacional: "2"
	Then um dos textos "seguro cartão protegido;já possui o seguro cartão" for validado, com o tempo de execução "20000" em milissegundos
