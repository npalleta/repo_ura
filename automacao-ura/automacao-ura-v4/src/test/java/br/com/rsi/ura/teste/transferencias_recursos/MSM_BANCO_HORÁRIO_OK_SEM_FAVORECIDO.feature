@MSM_BANCO_HORÁRIO_OK_SEM_FAVORECIDO @TRANSFERÊNCIAS_RECURSOS
Feature: Transferência e Recursos -- MSM_BANCO_HORÁRIO_OK_SEM_FAVORECIDO

Background: 
	Given inicializo o 'Relatorio de Dados'
	When clico o numero do telefone da 'Ura'
	
@URA0533
Scenario: URA0533-ContaCorrente_Transferencias_Transferenciaentrecontas_Transferirparacontademesmobanco_semFavorecidoCadastrado_ModeloNovoSenha6Digitos_Private 

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "4"
	And clico na opcao do menu transacional: "3"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "1"
	Then um dos textos "nenhum favorecido cadastrado;não possui nenhum favorecido" for validado, com o tempo de execução "25000" em milissegundos
	
@URA0534
Scenario: URA0534-Contacorrente_Transferências_Transferênciaentrecontas_Transferirparacontademesmobanco_semfavorecidocadastrado_Modelonovosenha6dígitos_Clássico 

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "4"
	And clico na opcao do menu transacional: "3"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "1"
	Then um dos textos "nenhum favorecido cadastrado;não possui nenhum favorecido" for validado, com o tempo de execução "25000" em milissegundos
	
@URA0745
Scenario: URA0745-Contacorrente_Transferencias_Transferenciaentrecontas_Transferirparacontademesmobanco_semfavorecidocadastrado_FRASEOLOGIA_Private 
	
	And estou indo ao menu principal Private ou Select Fraseologia
	And um dos textos "pagamento;boleto;fatura,transferências" for validado, com o tempo de execução "25000" em milissegundos
	And clico na opcao do menu: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu: "4"
	And um dos textos "pagamento;título;contas;pagar;fatura" for validado, com o tempo de execução "15000" em milissegundos
	And clico na opcao do menu: "3"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu: "1"
	Then um dos textos "nenhum favorecido cadastrado;não possui nenhum favorecido" for validado, com o tempo de execução "25000" em milissegundos
	
@URA0746
Scenario: URA0746-Contacorrente_Transferencias_Transferenciaentrecontas_Transferirparacontademesmobanco_semfavorecidocadastrado_FRASEOLOGIA_Select 

	And estou indo ao menu principal Private ou Select Fraseologia
	And um dos textos "pagamento;boleto;fatura,transferências" for validado, com o tempo de execução "25000" em milissegundos
	And clico na opcao do menu: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu: "4"
	And um dos textos "pagamento;título;contas;pagar;fatura" for validado, com o tempo de execução "15000" em milissegundos
	And clico na opcao do menu: "3"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu: "1"
	Then um dos textos "nenhum favorecido cadastrado;não possui nenhum favorecido" for validado, com o tempo de execução "25000" em milissegundos
	
@URA0790
Scenario: URA0790-Contacorrente_Transferências_Transferênciaentrecontas_semfavorecidocadastrado_Modeloantigosenha4dígitos_Clássico 

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "4"
	And clico na opcao do menu transacional: "3"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "1"
	Then um dos textos "nenhum favorecido cadastrado;não possui nenhum favorecido" for validado, com o tempo de execução "25000" em milissegundos