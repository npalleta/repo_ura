@CONSULTA_MENU_FALAR_OUTRA_OPÇÃO_NÃO_CORRENTISTA @INVESTIMENTOS
Feature: Investimentos -- CONSULTA_MENU_FALAR_OUTRA_OPÇÃO_NÃO_CORRENTISTA

Background: 
	Given inicializo o 'Relatorio de Dados'
	When clico o numero do telefone da 'Ura'
	
@URA1196
Scenario: URA1196-Investimentos_Poupança_Consultamenufalardeoutraconta_clientenãocorrentista_commaisdeumacontapoupança_Select_Modelonovosenha6dígitos

	And estou na opcao do menu do ura com o TEXTO e ID " você está", com o tempo total de execução de "25000" milissegundos
	And clico no botao 'teclado' e clico nos numeros do 'CPF'
	And estou na opcao do menu ' desbloquear' para cliente que não solicita senha no topo, com o tempo total de execução de "25000" milissegundos
	#Massa 'Puro Poupador', opção 1 -- Conta Poupança
	And clico na opcao do menu transacional: "1"
	And clico na 'conta poupança' e 'agencia poupança' transacional
	And estou na opcao do menu do ura com o texto ' desbloquear', com o tempo total de execução de "25000" milissegundos
	And clico nos numeros da senha transacional
	And clico na opcao do menu transacional: "3"
	Then um dos textos "agência;conta;por favor;digite a agência;que deseja falar" for validado, com o tempo de execução "20000" em milissegundos