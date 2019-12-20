@SOLICITAÇÃO_CARTÃO @FOLHA_PAGAMENTO
Feature: Folha de Pagamento -- SOLICITAÇÃO_CARTÃO

Background: 
	Given inicializo o 'Relatorio de Dados'
	When clico o numero do telefone da 'Ura'

@URA0806
Scenario: URA0806-Folhadepagamento_Menu_Solicitacaodecartao_consultarmenuadquirircartaofopa_clientecommaisdeumprodutofolhadepagamento_FRASEOLOGIA_Classico

	And estou na opcao do menu do ura com o TEXTO e ID " você está", com o tempo total de execução de "25000" milissegundos
	And clico no botao 'teclado' e clico nos numeros do 'CPF'
	And um dos textos "conta;recado;transformar;crianças" for validado, com o tempo de execução "25000" em milissegundos
	And clico na opcao do menu: "1"
	Then um dos textos "conhecer nossos produtos;escolher os melhores investimentos;você consegue ver todos;abre sua conta poupança" for validado, com o tempo de execução "25000" em milissegundos