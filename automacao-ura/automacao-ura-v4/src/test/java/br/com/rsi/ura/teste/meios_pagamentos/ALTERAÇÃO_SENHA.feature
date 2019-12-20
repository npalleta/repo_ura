@ALTERAÇÃO_SENHA @MEIOS_PAGAMENTOS
Feature: Meios de Pagamentos -- ALTERAÇÃO_SENHA

Background: 
	Given inicializo o 'Relatorio de Dados'
	When clico o numero do telefone da 'Ura'
	
@URA0183
Scenario: URA0183-Alteracao_Senhas_Clientecomcartaook_RF_TransacionalConsultivamodelonovodesenha_Classico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "2"
	And estou na opcao de cartões indo ao menu principal
	And clico na opcao do menu transacional: "4"
	And clico na opcao do menu transacional: "4"
	And clico na opcao do menu transacional: "3"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " cartão", com o tempo total de execução de "10892" milissegundos
	And estou na opcao alterar senha com confirmação
	Then um dos textos "alterada com sucesso;com sucesso;sucesso" for validado, com o tempo de execução "17000" em milissegundos
	
	@URA0214
Scenario: URA0214-Alteracao_Senhas_Clientecomcartaook_RF_TransacionalConsultivamodelonovodesenha_Private

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "2"
	And estou na opcao de cartões indo ao menu principal
	And clico na opcao do menu transacional: "4"
	And clico na opcao do menu transacional: "4"
	And clico na opcao do menu transacional: "3"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " cartão", com o tempo total de execução de "10892" milissegundos
	And estou na opcao alterar senha com confirmação
	Then um dos textos "alterada com sucesso;com sucesso;sucesso" for validado, com o tempo de execução "17000" em milissegundos
	
@URA0225
Scenario: URA0225-Alteracao_Senhas_Monoprodutista_FRASEOLOGIA_RF_FRASEOLOGIA_Monoprodutista

	And estou na opcao do menu do ura com o TEXTO e ID " você está", com o tempo total de execução de "25000" milissegundos
	And clico no botao 'teclado' e clico nos numeros do 'CPF'
	And clico na opcao do menu: "2"
	And estou na opcao do menu do ura com o texto ' desbloquear', com o tempo total de execução de "25000" milissegundos
	And clico nos numeros da senha
	And estou na opcao de cartões indo ao menu principal
	And clico na opcao do menu: "4"
	And estou na opcao do menu do ura com o texto " alterar", com o tempo total de execução de "19808" milissegundos
	And clico na opcao do menu: "4"
	And estou na opcao do menu do ura com o texto " senha", com o tempo total de execução de "20342" milissegundos
	And clico na opcao do menu: "3"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "15939" milissegundos
	And digito o RAMAL transacional
	Then estou na opcao do menu do ura com o texto " transferir", com o tempo total de execução de "25000" milissegundos
	
@URA0337
Scenario: URA0337-Alteracao_Senhas_Clientecomcartaook_RF_FRASEOLOGIA_Vangogh

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Fraseologia
	And um dos textos "conta;assunto;atendimento;pagamentos;boletos" for validado, com o tempo de execução "20934" em milissegundos
	And clico na opcao do menu transacional: "2"
	And estou na opcao de cartões indo ao menu principal
	And clico na opcao do menu transacional: "4"
	And um dos textos "bloquear;cartão;digital;segunda via" for validado, com o tempo de execução "13656" em milissegundos
	And clico na opcao do menu transacional: "4"
	And um dos textos "opções;dúvidas;cartão;chave" for validado, com o tempo de execução "15000" em milissegundos
	And clico na opcao do menu transacional: "3"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " cartão", com o tempo total de execução de "10892" milissegundos
	And estou na opcao alterar senha com confirmação
	Then um dos textos "alterada com sucesso;com sucesso;sucesso" for validado, com o tempo de execução "17000" em milissegundos
	