#language:en
Feature: Funcionalidade URA_CT016 - Opcao Invalida

  Background: 
    #Given inicializo o 'Relatorio de Dados'
    When clico o numero do telefone da 'Ura'

  @URA_CT016
  Scenario: URA_CT016
  	When estou na opcao do menu do ura com o TEXTO e ID "você ligou", com o tempo total de execução de "25000" milissegundos
    And digito o número do "EC"
    And um dos textos "assuntos;financeiros;antecipação;relatório" for validado, com o tempo de execução "10000" em milissegundos
	And clico na opcao do menu: "1"
	And um dos textos "antecipação;valores;recebidos;receber" for validado, com o tempo de execução "10000" em milissegundos
	And clico na opcao do menu: "2"
	And um dos textos "valores;escutar;receber" for validado, com o tempo de execução "10000" em milissegundos
	And clico na opcao do menu: "1"
	And um dos textos "escutar;valores;específico" for validado, com o tempo de execução "10000" em milissegundos
	And clico na opcao do menu: "2"
	And um dos textos "possível;consultar;recebeu;corridos" for validado, com o tempo de execução "10000" em milissegundos
	And digito "data inválida"
	And um dos textos "ultrapassa;consultar;sistema" for validado, com o tempo de execução "10000" em milissegundos
	And digito "data inválida"
	And um dos textos "ultrapassa;consultar;sistema" for validado, com o tempo de execução "10000" em milissegundos
	And digito "data inválida"
	And um dos textos "não é valida;precisar de alguma coisa;ligar novamente" for validado, com o tempo de execução "10000" em milissegundos