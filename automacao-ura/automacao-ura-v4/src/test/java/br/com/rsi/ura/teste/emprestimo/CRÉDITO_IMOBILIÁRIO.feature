@CRÉDITO_IMOBILIÁRIO @EMPRESTIMO
Feature: Empréstimo -- CRÉDITO_IMOBILIÁRIO

Background: 
	Given inicializo o 'Relatorio de Dados'
	When clico o numero do telefone da 'Ura'

@URA1283
Scenario: URA1283-EmprestimoseFinanciamentos_CreditoImobiliario_Consultadeemprestimos_Exclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	#INVESTIMENTOS
	And clico na opcao do menu transacional: "4"
	#ADIQUIRIR PRODUTOS
	And clico na opcao do menu transacional: "1"
	#CRÉDITO IMOBILIÁRIO --> SE A MASSA ESTIVER CORRETA APARECERÁ ESTÁ OPÇÃO 
	And clico na opcao do menu transacional: "4"
	#Validar Caminho restante -- NÃO CONTÉM NA SPEC
	Then estou na opcao do menu do ura com o texto " você pode simular ou até contratar", com o tempo total de execução de "20000" milissegundos