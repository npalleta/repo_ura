@SALDO_AUTO_PLAY_POSITIVO @CONTA_CORRENTE
Feature: Conta Corrente -- SALDO_AUTO_PLAY_POSITIVO

Background: 
	Given inicializo o 'Relatorio de Dados'
	When clico o numero do telefone da 'Ura'
	
@URA0542
Scenario: URA0542-Contacorrente_Saldo_ConsultaSaldo_ConsultarsaldoAutoPlay_clientecomsaldopositivosemlimite_Modelonovosenha6digitos_Vangogh

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	Then um dos textos "o saldo da sua conta corrente;saldo;conta corrente;sua conta corrente;conta corrente é de" for validado, com o tempo de execução "30000" em milissegundos

@URA0546
Scenario: URA0546-Contacorrente_Saldo_ConsultaSaldo_ConsultarsaldoAutoPlay_Modelonovosenha6dígitos_Vangogh

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	Then um dos textos "o saldo da sua conta corrente;saldo;conta corrente;sua conta corrente;conta corrente é de" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0549
Scenario: URA0549-Contacorrente_Saldo_ConsultaSaldo_ConsultarsaldoAutoPlay_clientecomsaldopositivocomlimite_Modelonovosenha6dígitos_Vangogh

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	Then um dos textos "o saldo da sua conta corrente;saldo;conta corrente;sua conta corrente;conta corrente é de" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0551
Scenario: URA0551-Contacorrente_Saldo_ConsultaSaldo_ConsultarsaldoAutoPlay_clientecomsaldopositivoelançamentosfuturos7dias_Modelonovosenha6dígitos_Vangogh

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	Then um dos textos "o saldo da sua conta corrente;saldo;conta corrente;sua conta corrente;conta corrente é de" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0605
Scenario: URA0605-Contacorrente_Saldo_ConsultaSaldo_ConsultarsaldoAutoPlay_clientecomsaldopositivosemlimite_Modelonovosenha6digitos_Select

	And estou na opcao do menu do ura com o TEXTO e ID " você está", com o tempo total de execução de "25000" milissegundos
	And clico no botao 'teclado' e clico nos numeros do 'CPF'
	And estou na opcao do menu do ura com o texto ' desbloquear', com o tempo total de execução de "30000" milissegundos
	And clico nos numeros da senha transacional
	Then um dos textos "o saldo da sua conta corrente;saldo;conta corrente;sua conta corrente;conta corrente é de" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0612
Scenario: URA0612-Contacorrente_Saldo_ConsultaSaldo_ConsultarsaldoAutoPlay_clientecomsaldopositivocomlimite_Modelonovosenha6dígitos_Select

	And estou na opcao do menu do ura com o TEXTO e ID " você está", com o tempo total de execução de "25000" milissegundos
	And clico no botao 'teclado' e clico nos numeros do 'CPF'
	And estou na opcao do menu do ura com o texto ' desbloquear', com o tempo total de execução de "30000" milissegundos
	And clico nos numeros da senha transacional
	Then um dos textos "o saldo da sua conta corrente;saldo;conta corrente;sua conta corrente;conta corrente é de" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0614	
Scenario: URA0614-Contacorrente_Saldo_ConsultaSaldo_ConsultarsaldoAutoPlay_clientecomsaldopositivoelançamentosfuturos7dias_Modelonovosenha6dígitos_Select

	And estou na opcao do menu do ura com o TEXTO e ID " você está", com o tempo total de execução de "25000" milissegundos
	And clico no botao 'teclado' e clico nos numeros do 'CPF'
	And estou na opcao do menu do ura com o texto ' desbloquear', com o tempo total de execução de "30000" milissegundos
	And clico nos numeros da senha transacional
	Then um dos textos "o saldo da sua conta corrente;saldo;conta corrente;sua conta corrente;conta corrente é de" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0615
Scenario: URA0615-Contacorrente_Saldo_ConsultaSaldo_ConsultarsaldoAutoPlay_clientecomsaldopositivocomlimite_Modelonovosenha6digitos_Select

	And estou na opcao do menu do ura com o TEXTO e ID " você está", com o tempo total de execução de "25000" milissegundos
	And clico no botao 'teclado' e clico nos numeros do 'CPF'
	And estou na opcao do menu do ura com o texto ' desbloquear', com o tempo total de execução de "30000" milissegundos
	And clico nos numeros da senha transacional
	Then um dos textos "o saldo da sua conta corrente;saldo;conta corrente;sua conta corrente;conta corrente é de" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0667
Scenario: URA0667-Contacorrente_Saldo_ConsultaSaldo_ConsultarsaldoAutoPlay_clientecomsaldopositivosemlimite_Modelonovosenha6digitos_Private

	And estou na opcao do menu do ura com o TEXTO e ID " você está", com o tempo total de execução de "25000" milissegundos
	And clico no botao 'teclado' e clico nos numeros do 'CPF'
	And estou na opcao do menu do ura com o texto ' desbloquear', com o tempo total de execução de "30000" milissegundos
	And clico nos numeros da senha transacional
	Then um dos textos "o saldo da sua conta corrente;saldo;conta corrente;sua conta corrente;conta corrente é de" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0609
Scenario: URA0609-Contacorrente_Saldo_ConsultaSaldo_ConsultarsaldoAutoPlay_Modelonovosenha6dígitos_Select

	And estou na opcao do menu do ura com o TEXTO e ID " você está", com o tempo total de execução de "25000" milissegundos
	And clico no botao 'teclado' e clico nos numeros do 'CPF'
	And estou na opcao do menu do ura com o texto ' desbloquear', com o tempo total de execução de "30000" milissegundos
	And clico nos numeros da senha transacional
	Then um dos textos "o saldo da sua conta corrente;saldo;conta corrente;sua conta corrente;conta corrente é de" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0671
Scenario: URA0671-Contacorrente_Saldo_ConsultaSaldo_ConsultarsaldoAutoPlay_Modelonovosenha6dígitos_Private
	
	And estou na opcao do menu do ura com o TEXTO e ID " você está", com o tempo total de execução de "25000" milissegundos
	And clico no botao 'teclado' e clico nos numeros do 'CPF'
	And estou na opcao do menu do ura com o texto ' desbloquear', com o tempo total de execução de "30000" milissegundos
	And clico nos numeros da senha transacional
	Then um dos textos "o saldo da sua conta corrente;saldo;conta corrente;sua conta corrente;conta corrente é de" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0674
Scenario: URA0674-Contacorrente_Saldo_ConsultaSaldo_ConsultarsaldoAutoPlay_clientecomsaldopositivocomlimite_Modelonovosenha6dígitos_Private

	And estou na opcao do menu do ura com o TEXTO e ID " você está", com o tempo total de execução de "25000" milissegundos
	And clico no botao 'teclado' e clico nos numeros do 'CPF'
	And estou na opcao do menu do ura com o texto ' desbloquear', com o tempo total de execução de "30000" milissegundos
	And clico nos numeros da senha transacional
	Then um dos textos "o saldo da sua conta corrente;saldo;conta corrente;sua conta corrente;conta corrente é de" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0676
Scenario: URA0676-Contacorrente_Saldo_ConsultaSaldo_ConsultarsaldoAutoPlay_clientecomsaldopositivoelançamentosfuturos7dias_Modelonovosenha6dígitos_Private

	And estou na opcao do menu do ura com o TEXTO e ID " você está", com o tempo total de execução de "25000" milissegundos
	And clico no botao 'teclado' e clico nos numeros do 'CPF'
	And estou na opcao do menu do ura com o texto ' desbloquear', com o tempo total de execução de "30000" milissegundos
	And clico nos numeros da senha transacional
	Then um dos textos "o saldo da sua conta corrente;saldo;conta corrente;sua conta corrente;conta corrente é de" for vaidado, com o tempo de execução "30000" em milissegundos
	
@URA0773
Scenario: URA0773-Contacorrente_Saldo_ConsultaSaldo_ConsultarsaldoAutoPlay_clientecomsaldopositivosemlimiteDianãoútil_Modeloantigosenha4dígitos_Vangogh

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	Then um dos textos "o saldo da sua conta corrente;saldo;conta corrente;sua conta corrente;conta corrente é de" for validado, com o tempo de execução "30000" em milissegundos