@ABERTURA_CONTA_CORRENTE @FOLHA_PAGAMENTO
Feature: Folha de Pagamento -- ABERTURA_CONTA_CORRENTE

Background: 
	Given inicializo o 'Relatorio de Dados'
	When clico o numero do telefone da 'Ura'

@URA0807
Scenario: URA0807-Folhadepagamento_Menu_Aberturacontacorrente_consultarmenuAbrircontacorrentemenufopa_clientecommaisde1produtofolhadepagamento_FRASEOLOGIA_Classico

	And estou na opcao do menu do ura com o TEXTO e ID " você está", com o tempo total de execução de "25000" milissegundos
	And clico no botao 'teclado' e clico nos numeros do 'CPF'
	And um dos textos "conta;recado;transformar;crianças" for validado, com o tempo de execução "25000" em milissegundos
	And clico na opcao do menu transacional: "2"
	Then um dos textos "conhecer nossos produtos;escolher os melhores investimentos;você consegue ver todos;abre sua conta corrente" for validado, com o tempo de execução "25000" em milissegundos