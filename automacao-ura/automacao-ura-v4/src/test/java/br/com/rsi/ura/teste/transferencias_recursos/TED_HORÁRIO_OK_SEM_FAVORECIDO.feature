@TED_HORÁRIO_OK_SEM_FAVORECIDO @TRANSFERÊNCIAS_RECURSOS
Feature: Transferência e Recursos -- TED_HORÁRIO_OK_SEM_FAVORECIDO

Background: 
	Given inicializo o 'Relatorio de Dados'
	When clico o numero do telefone da 'Ura'
	
@URA0498
Scenario: URA0498-ContaCorrente_Transferencias_TransferenciaTED_RealizartransferenciaTED_semFavorecidoCadastrado_ModeloNovoSenha6Digitos_Exclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "4"
	And clico na opcao do menu transacional: "3"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "2"
	Then um dos textos "nenhum favorecido cadastrado;não possui nenhum favorecido" for validado, com o tempo de execução "25000" em milissegundos
	
@URA0499
Scenario: URA0499-Contacorrente_Transferências_TransferênciaTED_RealizartransferênciaTED_semfavorecidocadastrado_Modelonovosenha6dígitos_Clássico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "4"
	And clico na opcao do menu transacional: "3"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "2"
	Then um dos textos "nenhum favorecido cadastrado;não possui nenhum favorecido" for validado, com o tempo de execução "25000" em milissegundos

@URA0507
Scenario: URA0507-ContaCorrente_Transferencias_TransferenciaTED_RealizartransferenciaTED_semFavorecidoCadastrado_FRASEOLOGIA_Private

	And estou indo ao menu principal Private ou Select Fraseologia
	And um dos textos "pagamento;boleto;fatura,transferências" for validado, com o tempo de execução "25000" em milissegundos
	And clico na opcao do menu: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu: "4"
	And um dos textos "pagamento;título;contas;pagar;fatura" for validado, com o tempo de execução "15000" em milissegundos
	And clico na opcao do menu: "3"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu: "2"
	Then um dos textos "nenhum favorecido cadastrado;não possui nenhum favorecido" for validado, com o tempo de execução "25000" em milissegundos

@URA0508
Scenario: URA0508-ContaCorrente_Transferencias_TransferenciaTED_RealizartransferenciaTED_semFavorecidoCadastrado_FRASEOLOGIA_Select

	And estou indo ao menu principal Private ou Select Fraseologia
	And um dos textos "pagamento;boleto;fatura,transferências" for validado, com o tempo de execução "25000" em milissegundos
	And clico na opcao do menu: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu: "4"
	And um dos textos "pagamento;título;contas;pagar;fatura" for validado, com o tempo de execução "15000" em milissegundos
	And clico na opcao do menu: "3"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu: "2"
	Then um dos textos "nenhum favorecido cadastrado;não possui nenhum favorecido" for validado, com o tempo de execução "25000" em milissegundos

@URA0777
Scenario: URA0777-Contacorrente_Transferências_TransferênciaTED_semfavorecidocadastrado_Modeloantigosenha4dígitos_Clássico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "4"
	And clico na opcao do menu transacional: "3"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "2"
	Then um dos textos "nenhum favorecido cadastrado;não possui nenhum favorecido" for validado, com o tempo de execução "25000" em milissegundos