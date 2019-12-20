@RESGATE_PONTOS @MEIOS_PAGAMENTOS
Feature: Meios de Pagamentos -- RESGATE_PONTOS

Background: 
	Given inicializo o 'Relatorio de Dados'
	When clico o numero do telefone da 'Ura'
	
@URA0333
Scenario: URA0333-Resgate_Pontos_ClientecomEsfera_Reward_RF_FRASEOLOGIA_Vangogh

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Fraseologia
	And um dos textos "pagamento;conta;saldo" for validado, com o tempo de execução "26000" em milissegundos
	And clico na opcao do menu: "2"
	And estou na opcao de cartões indo ao menu principal
	And clico na opcao do menu: "3"
	And um dos textos "pontos;esfera;resgate" for validado, com o tempo de execução "22000" em milissegundos
	And clico na opcao do menu: "2"
	Then um dos textos "trocar seus ponto;resgatar;pontos esfera" for validado, com o tempo de execução "26000" em milissegundos