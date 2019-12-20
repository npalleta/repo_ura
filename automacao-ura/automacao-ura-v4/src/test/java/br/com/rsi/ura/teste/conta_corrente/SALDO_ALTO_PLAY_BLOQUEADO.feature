@SALDO_ALTO_PLAY_BLOQUEADO @CONTA_CORRENTE
Feature: Conta Corrente -- SALDO_ALTO_PLAY_BLOQUEADO

Background: 
	Given inicializo o 'Relatorio de Dados'
	When clico o numero do telefone da 'Ura'

@URA0544
Scenario: URA0544-Contacorrente_Saldo_ConsultaSaldo_ConsultarsaldoAutoPlay_clientecomsaldobloqueado_Modelonovosenha6digitos_Vangogh

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	Then um dos textos "o saldo da sua conta corrente;saldo;conta corrente;sua conta corrente;conta corrente é de" for validado, com o tempo de execução "30000" em milissegundos

@URA0607
Scenario: URA0607-Contacorrente_Saldo_ConsultaSaldo_ConsultarsaldoAutoPlay_clientecomsaldobloqueado_Modelonovosenha6digitos_Select

	And estou na opcao do menu do ura com o TEXTO e ID " você está", com o tempo total de execução de "25000" milissegundos
	And clico no botao 'teclado' e clico nos numeros do 'CPF'
	And estou na opcao do menu do ura com o texto ' desbloquear', com o tempo total de execução de "30000" milissegundos
	And clico nos numeros da senha transacional
	Then um dos textos "o saldo da sua conta corrente;saldo;conta corrente;sua conta corrente;conta corrente é de" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0669
Scenario: URA0669-Contacorrente_Saldo_ConsultaSaldo_ConsultarsaldoAutoPlay_clientecomsaldobloqueado_Modelonovosenha6digitos_Private

	And estou na opcao do menu do ura com o TEXTO e ID " você está", com o tempo total de execução de "25000" milissegundos
	And clico no botao 'teclado' e clico nos numeros do 'CPF'
	And estou na opcao do menu do ura com o texto ' desbloquear', com o tempo total de execução de "30000" milissegundos
	And clico nos numeros da senha transacional
	Then um dos textos "o saldo da sua conta corrente;saldo;conta corrente;sua conta corrente;conta corrente é de" for validado, com o tempo de execução "30000" em milissegundos