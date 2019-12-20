@BLOQUEIO_PLASTICO @CONTA_CORRENTE
Feature: Conta Corrente -- BLOQUEIO_PLASTICO

Background: 
	Given inicializo o 'Relatorio de Dados'
	When clico o numero do telefone da 'Ura'

@URA0400
Scenario: URA0400-Bloqueio_Plástico_Clientecomcartãojábloqueado_RF_FRASEOLOGIA_Private

	And estou indo ao menu principal Private ou Select Fraseologia
	Then um dos textos "pagamento;conta;saldo" for validado, com o tempo de execução "26000" em milissegundos
	And clico na opcao do menu: "2"
	And estou na opcao de cartões indo ao menu principal
	And clico na opcao do menu: "5"
	And clico na opcao do menu: "1"
	And digito o RAMAL transacional
	Then um dos textos "transferir;ramal" for validado, com o tempo de execução "30000" em milissegundos