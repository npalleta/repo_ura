Feature: Funcionalidade URA_CT008 - Não digitar nada

  Background: 
    #Given inicializo o 'Relatorio de Dados'
    When clico o numero do telefone da 'Ura'

  @URA_CT008
  Scenario: URA_CT008
    When um dos textos "você ligou;nosso cliente" for validado, com o tempo de execução "30000" em milissegundos
    And digito o número "do EC" "2007733832"
    And um dos textos "assuntos;financeiros;antecipação" for validado, com o tempo de execução "30000" em milissegundos
    And clico na opcao do menu: "1"
    And um dos textos "antecipação;recebidos;receber;conta" for validado, com o tempo de execução "15000" em milissegundos
    And clico na opcao do menu: "2"
    And um dos textos "preciso;confirmar;dados" for validado, com o tempo de execução "15000" em milissegundos
    And digito o número "da agência" "2345"
    And um dos textos "preciso;número;conta" for validado, com o tempo de execução "15000" em milissegundos
    And digito o número "da conta" "1039124161"
    And um dos textos "ouvir;valores;recebidos" for validado, com o tempo de execução "50000" em milissegundos
    And clico na opcao do menu: "1"
    And um dos textos "escutar;valores;recebidos;específico" for validado, com o tempo de execução "15000" em milissegundos
    And clico na opcao do menu: "1"
    And um dos textos "possível;consultar;recebeu;corridos" for validado, com o tempo de execução "15000" em milissegundos
    And espero alguns segundos "5000"
    And um dos textos "oi;mês;consultar;dígitos" for validado, com o tempo de execução "5000" em milissegundos
    And espero alguns segundos "5000"
    And um dos textos "oi;mês;consultar;dígitos" for validado, com o tempo de execução "5000" em milissegundos
    And espero alguns segundos "5000"
    And um dos textos "infelizmente;escutar;alguma;retornar" for validado, com o tempo de execução "25000" em milissegundos
