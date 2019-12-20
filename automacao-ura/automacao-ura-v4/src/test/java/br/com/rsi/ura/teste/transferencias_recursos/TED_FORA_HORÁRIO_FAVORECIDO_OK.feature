@TED_FORA_HORÁRIO_FAVORECIDO_OK @TRANSFERÊNCIAS_RECURSOS
Feature: Transferência e Recursos -- TED_FORA_HORÁRIO_FAVORECIDO_OK

Background: 
	Given inicializo o 'Relatorio de Dados'
	When clico o numero do telefone da 'Ura'
	
@URA0496
Scenario: URA0496-Contacorrente_Transferências_TransferênciaTED_RealizartransferênciaTED_foradohoráriopermitido_favorecidocadastrado_Modelonovosenha6dígitos_Exclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "4"
	And clico na opcao do menu transacional: "3"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "2"
	And clico na opcao do menu transacional: "1"
	Then verifico se está fora do horário
	
@URA0497
Scenario: URA0497-Contacorrente_Transferências_TransferênciaTED_RealizartransferênciaTED_foradohoráriopermitido_favorecidocadastrado_Modelonovosenha6dígitos_Clássico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "4"
	And clico na opcao do menu transacional: "3"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "2"
	And clico na opcao do menu transacional: "1"
	Then verifico se está fora do horário
	
@URA0505
Scenario: URA0505-Contacorrente_Transferências_TransferênciaTED_RealizartransferênciaTED_foradohoráriopermitido_favorecidocadastrado_FRASEOLOGIA_Private

	And estou indo ao menu principal Private ou Select Fraseologia
	And um dos textos "pagamento;boleto;fatura;transferências" for validado, com o tempo de execução "25000" em milissegundos
	And clico na opcao do menu: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu: "4"
	And um dos textos "pagamento;título;contas;pagar;fatura" for validado, com o tempo de execução "15000" em milissegundos
	And clico na opcao do menu: "3"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu: "2"
	And um dos textos "realizados;agendados;favorecido;transferir" for validado, com o tempo de execução "20000" em milissegundos
	And clico na opcao do menu: "1"
	Then verifico se está fora do horário
	
@URA0506
Scenario: URA0506-Contacorrente_Transferências_TransferênciaTED_RealizartransferênciaTED_foradohoráriopermitido_favorecidocadastrado_FRASEOLOGIA_Select

	And estou indo ao menu principal Private ou Select Fraseologia
	And um dos textos "pagamento;boleto;fatura;transferências" for validado, com o tempo de execução "25000" em milissegundos
	And clico na opcao do menu: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu: "4"
	And um dos textos "pagamento;título;contas;pagar;fatura" for validado, com o tempo de execução "15000" em milissegundos
	And clico na opcao do menu: "3"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu: "2"
	And um dos textos "realizados;agendados;favorecido;transferir" for validado, com o tempo de execução "20000" em milissegundos
	And clico na opcao do menu: "1"
	Then verifico se está fora do horário
	
@URA0776
Scenario: URA0776-Contacorrente_Transferências_TransferênciaTED_foradohoráriopermitido_favorecidocadastrado_Modeloantigosenha4dígitos_Clássico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "4"
	And clico na opcao do menu transacional: "3"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "2"
	And clico na opcao do menu transacional: "1"
	Then verifico se está fora do horário
	
@URA0781
Scenario: URA0781-Contacorrente_Transferencias_TransferenciaTED_foradohorariopermitido_favorecidocadastrado_Modeloantigosenha4digitos_Exclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "4"
	And clico na opcao do menu transacional: "3"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "2"
	And clico na opcao do menu transacional: "1"
	Then verifico se está fora do horário