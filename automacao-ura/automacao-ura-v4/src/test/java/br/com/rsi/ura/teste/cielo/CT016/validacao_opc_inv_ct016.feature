#language:en
Feature: Funcionalidade URA_CT016 - Opcao Invalida 

Background: 
#Given inicializo o 'Relatorio de Dados'
	When clico o numero do telefone da 'Ura' 
	
@URA_CT016 
Scenario: URA_CT016 
	When um dos textos "você ligou;nosso cliente" for validado, com o tempo de execução "25000" em milissegundos 
	And digito o número "do EC" "2007733832" 
	And um dos textos "assuntos;financeiros;antecipação;relatório" for validado, com o tempo de execução "30000" em milissegundos 
	And clico na opcao do menu: "1" 
	And um dos textos "antecipação;valores;recebidos;receber" for validado, com o tempo de execução "15000" em milissegundos 
	And clico na opcao do menu: "2" 
	And um dos textos "preciso;confirmar;dados" for validado, com o tempo de execução "15000" em milissegundos 
	And digito o número "da agência" "2345" 
	And um dos textos "preciso;número;conta" for validado, com o tempo de execução "15000" em milissegundos 
	And digito o número "da conta" "1039124161" 
	And um dos textos "valores;escutar;receber" for validado, com o tempo de execução "15000" em milissegundos 
	And clico na opcao do menu: "1" 
	And um dos textos "escutar;valores;específico" for validado, com o tempo de execução "15000" em milissegundos 
	And clico na opcao do menu: "2" 
	And um dos textos "possível;consultar;recebeu;corridos" for validado, com o tempo de execução "15000" em milissegundos 
	And digito "data inválida" 
	And um dos textos "ultrapassa;consultar;sistema" for validado, com o tempo de execução "15000" em milissegundos 
	And digito "data inválida" 
	And um dos textos "ultrapassa;consultar;sistema" for validado, com o tempo de execução "15000" em milissegundos 
	And digito "data inválida" 
	And um dos textos "não é valida;precisar de alguma coisa;ligar novamente" for validado, com o tempo de execução "15000" em milissegundos