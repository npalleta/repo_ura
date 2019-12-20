@SALDO_AUTO_PLAY_INVESTIMENTOS @CONTA_CORRENTE
Feature: Conta Corrente -- SALDO_AUTO_PLAY_INVESTIMENTOS

Background: 
	Given inicializo o 'Relatorio de Dados'
	When clico o numero do telefone da 'Ura'
	
@URA0545
Scenario: URA0545-Contacorrente_Saldo_ConsultaSaldo_ConsultarsaldoAutoPlay_clientecominvestimentos_Modelonovosenha6dígitos_Vangogh

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	Then um dos textos "o saldo da sua conta corrente;saldo;conta corrente;sua conta corrente;conta corrente é de" for validado, com o tempo de execução "30000" em milissegundos

@URA0547
Scenario: URA0547-Contacorrente_Saldo_ConsultaSaldo_ConsultarsaldoAutoPlay_clientecomcontainvestimento_Modelonovosenha6dígitos_Vangogh

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	Then um dos textos "o saldo da sua conta corrente;saldo;conta corrente;sua conta corrente;conta corrente é de" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0548
Scenario: URA0548-Contacorrente_Saldo_ConsultaSaldo_ConsultarsaldoAutoPlay_clientecomcontafundo_Modelonovosenha6dígitos_Vangogh

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	Then um dos textos "o saldo da sua conta corrente;saldo;conta corrente;sua conta corrente;conta corrente é de" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0608
Scenario: URA0608-Contacorrente_Saldo_ConsultaSaldo_ConsultarsaldoAutoPlay_clientecominvestimentos_Modelonovosenha6dígitos_Select

	And estou na opcao do menu do ura com o TEXTO e ID " você está", com o tempo total de execução de "25000" milissegundos
	And clico no botao 'teclado' e clico nos numeros do 'CPF'
	And estou na opcao do menu do ura com o texto ' desbloquear', com o tempo total de execução de "30000" milissegundos
	And clico nos numeros da senha transacional
	Then um dos textos "o saldo da sua conta corrente;saldo;conta corrente;sua conta corrente;conta corrente é de" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0610
Scenario: URA0610-Contacorrente_Saldo_ConsultaSaldo_ConsultarsaldoAutoPlay_clientecomcontainvestimento_Modelonovosenha6dígitos_Select

	And estou na opcao do menu do ura com o TEXTO e ID " você está", com o tempo total de execução de "25000" milissegundos
	And clico no botao 'teclado' e clico nos numeros do 'CPF'
	And estou na opcao do menu do ura com o texto ' desbloquear', com o tempo total de execução de "30000" milissegundos
	And clico nos numeros da senha transacional
	Then um dos textos "o saldo da sua conta corrente;saldo;conta corrente;sua conta corrente;conta corrente é de" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0611
Scenario: URA0611-Contacorrente_Saldo_ConsultaSaldo_ConsultarsaldoAutoPlay_clientecomcontafundo_Modelonovosenha6dígitos_Select

	And estou na opcao do menu do ura com o TEXTO e ID " você está", com o tempo total de execução de "25000" milissegundos
	And clico no botao 'teclado' e clico nos numeros do 'CPF'
	And estou na opcao do menu do ura com o texto ' desbloquear', com o tempo total de execução de "30000" milissegundos
	And clico nos numeros da senha transacional
	Then um dos textos "o saldo da sua conta corrente;saldo;conta corrente;sua conta corrente;conta corrente é de" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0670
Scenario: URA0670-Contacorrente_Saldo_ConsultaSaldo_ConsultarsaldoAutoPlay_clientecominvestimentos_Modelonovosenha6dígitos_Private

	And estou na opcao do menu do ura com o TEXTO e ID " você está", com o tempo total de execução de "25000" milissegundos
	And clico no botao 'teclado' e clico nos numeros do 'CPF'
	And estou na opcao do menu do ura com o texto ' desbloquear', com o tempo total de execução de "30000" milissegundos
	And clico nos numeros da senha transacional
	Then um dos textos "o saldo da sua conta corrente;saldo;conta corrente;sua conta corrente;conta corrente é de" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0672
Scenario: URA0672-Contacorrente_Saldo_ConsultaSaldo_ConsultarsaldoAutoPlay_clientecomcontainvestimento_Modelonovosenha6dígitos_Private

	And estou na opcao do menu do ura com o TEXTO e ID " você está", com o tempo total de execução de "25000" milissegundos
	And clico no botao 'teclado' e clico nos numeros do 'CPF'
	And estou na opcao do menu do ura com o texto ' desbloquear', com o tempo total de execução de "30000" milissegundos
	And clico nos numeros da senha transacional
	Then um dos textos "o saldo da sua conta corrente;saldo;conta corrente;sua conta corrente;conta corrente é de" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0673
Scenario: URA0673-Contacorrente_Saldo_ConsultaSaldo_ConsultarsaldoAutoPlay_clientecomcontafundo_Modelonovosenha6dígitos_Private

	And estou na opcao do menu do ura com o TEXTO e ID " você está", com o tempo total de execução de "25000" milissegundos
	And clico no botao 'teclado' e clico nos numeros do 'CPF'
	And estou na opcao do menu do ura com o texto ' desbloquear', com o tempo total de execução de "30000" milissegundos
	And clico nos numeros da senha transacional
	Then um dos textos "o saldo da sua conta corrente;saldo;conta corrente;sua conta corrente;conta corrente é de" for validado, com o tempo de execução "30000" em milissegundos