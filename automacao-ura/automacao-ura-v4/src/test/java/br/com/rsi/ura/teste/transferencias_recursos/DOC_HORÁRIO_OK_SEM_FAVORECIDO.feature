@DOC_HORÁRIO_OK_SEM_FAVORECIDO @TRANSFERÊNCIAS_RECURSOS
Feature: Transferência e Recursos -- DOC_HORÁRIO_OK_SEM_FAVORECIDO

Background: 
	Given inicializo o 'Relatorio de Dados'
	When clico o numero do telefone da 'Ura'
	
@URA0465
Scenario: URA0465-ContaCorrente_transferências_transferênciaDOC_RealizartransferênciaDOC_semFavorecidoCadastrado_ModeloNovoSenha6Digitos_Classico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "4"
	And clico na opcao do menu transacional: "3"  	
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "3"
	Then um dos textos "nenhum favorecido cadastrado;não possui nenhum favorecido" for validado, com o tempo de execução "25000" em milissegundos
	
@URA0466
Scenario: URA0466-ContaCorrente_transferências_transferênciaDOC_RealizartransferênciaDOC_semFavorecidoCadastrado_ModeloNovoSenha6Digitos_Exclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "4"
	And clico na opcao do menu transacional: "3"  	
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "3"
	Then um dos textos "nenhum favorecido cadastrado;não possui nenhum favorecido" for validado, com o tempo de execução "25000" em milissegundos
	
@URA0477
Scenario: URA0477-ContaCorrente_transferências_transferênciaDOC_RealizartransferênciaDOC_semFavorecidoCadastrado_FRASEOLOGIA_Private

	And estou indo ao menu principal Private ou Select Fraseologia
	And um dos textos "pagamento;boleto;fatura,transferências" for validado, com o tempo de execução "25000" em milissegundos
	And clico na opcao do menu: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu: "4"
	And um dos textos "pagamento;título;contas;pagar;fatura" for validado, com o tempo de execução "15000" em milissegundos
	And clico na opcao do menu: "3"	
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu: "3"
	Then um dos textos "nenhum favorecido cadastrado;não possui nenhum favorecido" for validado, com o tempo de execução "25000" em milissegundos
	
@URA0478
Scenario: URA0478-Contacorrente_Transferências_TransferênciaDOC_RealizartransferênciaDOC_semfavorecidocadastrado_FRASEOLOGIA_Select

	And estou indo ao menu principal Private ou Select Fraseologia
	And um dos textos "pagamento;boleto;fatura,transferências" for validado, com o tempo de execução "25000" em milissegundos
	And clico na opcao do menu: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu: "4"
	And um dos textos "pagamento;título;contas;pagar;fatura" for validado, com o tempo de execução "15000" em milissegundos
	And clico na opcao do menu: "3" 	
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu: "3"
	Then um dos textos "nenhum favorecido cadastrado;não possui nenhum favorecido" for validado, com o tempo de execução "25000" em milissegundos
	
@URA0789
Scenario: URA0789-Contacorrente_Transferências_TransferênciaDOC_semfavorecidocadastrado_Modeloantigosenha4dígitos_Clássico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "4"
	And clico na opcao do menu transacional: "3"  	
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "20000" milissegundos
	And clico na opcao do menu transacional: "3"
	Then um dos textos "nenhum favorecido cadastrado;não possui nenhum favorecido" for validado, com o tempo de execução "25000" em milissegundos