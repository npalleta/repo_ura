@SALDO_AUTO_PLAY_NEGATIVO @CONTA_CORRENTE
Feature: Conta Corrente -- SALDO_AUTO_PLAY_NEGATIVO

Background: 
	Given inicializo o 'Relatorio de Dados'
	When clico o numero do telefone da 'Ura'
	
@URA0543
Scenario: URA0543-Contacorrente_Saldo_ConsultaSaldo_ConsultarsaldoAutoPlay_clientecomsaldonegativosemlimite_Modelonovosenha6digitos_Vangogh

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	Then um dos textos "conta corrente está negativo;negativo;está negativo" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0550
Scenario: URA0550-Contacorrente_Saldo_ConsultaSaldo_ConsultarsaldoAutoPlay_clientecomsaldonegativocomlimite_Modelonovosenha6dígitos_Vangogh

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	Then um dos textos "conta corrente está negativo;negativo;está negativo" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0606
Scenario: URA0606-Contacorrente_Saldo_ConsultaSaldo_ConsultarsaldoAutoPlay_clientecomsaldonegativosemlimite_Modelonovosenha6digitos_Select

	And estou na opcao do menu do ura com o TEXTO e ID " você está", com o tempo total de execução de "25000" milissegundos
	And clico no botao 'teclado' e clico nos numeros do 'CPF'
	And estou na opcao do menu do ura com o texto ' desbloquear', com o tempo total de execução de "30000" milissegundos
	And clico nos numeros da senha transacional
	Then um dos textos "o saldo da sua conta corrente;saldo;conta corrente;sua conta corrente;conta corrente é de" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0613
Scenario: URA0613-Contacorrente_Saldo_ConsultaSaldo_ConsultarsaldoAutoPlay_clientecomsaldonegativocomlimite_Modelonovosenha6dígitos_Select

	And estou na opcao do menu do ura com o TEXTO e ID " você está", com o tempo total de execução de "25000" milissegundos
	And clico no botao 'teclado' e clico nos numeros do 'CPF'
	And estou na opcao do menu do ura com o texto ' desbloquear', com o tempo total de execução de "30000" milissegundos
	And clico nos numeros da senha transacional
	Then um dos textos "conta corrente está negativo;negativo;está negativo" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0668
Scenario: URA0668-Contacorrente_Saldo_ConsultaSaldo_ConsultarsaldoAutoPlay_clientecomsaldonegativosemlimite_Modelonovosenha6digitos_Private

	And estou na opcao do menu do ura com o TEXTO e ID " você está", com o tempo total de execução de "25000" milissegundos
	And clico no botao 'teclado' e clico nos numeros do 'CPF'
	And estou na opcao do menu do ura com o texto ' desbloquear', com o tempo total de execução de "30000" milissegundos
	And clico nos numeros da senha transacional
	Then um dos textos "o saldo da sua conta corrente;saldo;conta corrente;sua conta corrente;conta corrente é de" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0675
Scenario: URA0675-Contacorrente_Saldo_ConsultaSaldo_ConsultarsaldoAutoPlay_clientecomsaldonegativocomlimite_Modelonovosenha6digitos_Private

	And estou na opcao do menu do ura com o TEXTO e ID " você está", com o tempo total de execução de "25000" milissegundos
	And clico no botao 'teclado' e clico nos numeros do 'CPF'
	And estou na opcao do menu do ura com o texto ' desbloquear', com o tempo total de execução de "30000" milissegundos
	And clico nos numeros da senha transacional
	Then um dos textos "conta corrente está negativo;negativo;está negativo" for validado, com o tempo de execução "30000" em milissegundos