#language:en
Feature: Funcionalidade URA_CT016 - Opcao Invalida

  Background: 
    #Given inicializo o 'Relatorio de Dados'
    When clico o numero do telefone da 'Ura'

  @URA_CT016
  Scenario: URA_CT016
    And clico na opcao do menu transacional: "2"
