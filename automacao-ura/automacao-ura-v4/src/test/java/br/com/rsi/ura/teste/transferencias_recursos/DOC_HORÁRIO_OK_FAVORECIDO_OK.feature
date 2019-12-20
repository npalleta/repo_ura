@DOC_HORÁRIO_OK_FAVORECIDO_OK @TRANSFERÊNCIAS_RECURSOS
Feature: Transferência e Recursos -- DOC_HORÁRIO_OK_FAVORECIDO_OK

Background: 
	Given inicializo o 'Relatorio de Dados'
	When clico o numero do telefone da 'Ura'
		
@URA0457
Scenario: URA0457-Contacorrente_Transferências_TransferênciaDOC_RealizartransferênciaDOC_dentrodohoráriopermitido_favorecidocadastrado_Modelonovosenha6dígitos_Clássico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "4"
	And clico na opcao do menu transacional: "3"  	
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "3"
	And clico na opcao do menu transacional: "1"
	And clico no 'cpf favorecido' transacional
	And clico no 'valor' transacional
	And clico na opcao do menu transacional: "1"
	Then um dos textos "realizada com sucesso;sucesso" for validado, com o tempo de execução "20000" em milissegundos
	
@URA0458
Scenario: URA0458-ContaCorrente_transferências_transferênciaDOC_RealizartransferênciaDOC_DentroDoHorarioPermitido_FavorecidoCadastrado_ModeloNovoSenha6Digitos_Exclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "4"
	And clico na opcao do menu transacional: "3"  	
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "20000" milissegundos
	And clico na opcao do menu transacional: "3"
	And clico na opcao do menu transacional: "1"
	And clico no 'cpf favorecido' transacional
	And clico no 'valor' transacional
	And clico na opcao do menu transacional: "1"
	Then um dos textos "realizada com sucesso;sucesso" for validado, com o tempo de execução "20000" em milissegundos
	
@URA0467
Scenario: URA0467-ContaCorrente_transferências_AgendamentoDOC_AgendarumatransferênciaDOC_comFavorecidoCadastrado_ModeloNovoSenha6Digitos_Exclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "4"
	And clico na opcao do menu transacional: "3"  	
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "20000" milissegundos
	And clico na opcao do menu transacional: "3"
	And clico na opcao do menu transacional: "2"
	And clico nos numeros da 'dataAgendamento' transacional
	And clico no 'cpf favorecido' transacional
	And clico no 'valor' transacional
	And clico na opcao do menu transacional: "1"
	Then um dos textos "realizada com sucesso;sucesso" for validado, com o tempo de execução "20000" em milissegundos
	
@URA0468
Scenario: URA0468-ContaCorrente_transferências_AgendamentoDOC_AgendarumatransferênciaDOC_comFavorecidoCadastrado_ModeloNovoSenha6Digitos_Classico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "4"
	And clico na opcao do menu transacional: "3"  	
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "20000" milissegundos
	And clico na opcao do menu transacional: "3"
	And clico na opcao do menu transacional: "2"
	And clico nos numeros da 'dataAgendamento' transacional
	And clico no 'cpf favorecido' transacional
	And clico no 'valor' transacional
	And clico na opcao do menu transacional: "1"
	Then um dos textos "realizada com sucesso;sucesso" for validado, com o tempo de execução "20000" em milissegundos
	
@URA0479
Scenario: URA0479-ContaCorrente_transferências_AgendamentoDOC_AgendarumatransferênciaDOC_comFavorecidoCadastrado_FRASEOLOGIA_Private

	And estou indo ao menu principal Private ou Select Fraseologia
	And um dos textos "pagamento;boleto;fatura,transferências" for validado, com o tempo de execução "25000" em milissegundos
	And clico na opcao do menu: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu: "4"
	And um dos textos "pagamento;título;contas;pagar;fatura" for validado, com o tempo de execução "15000" em milissegundos
	And clico na opcao do menu: "3"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu: "3"
	And um dos textos "realizados;agendados;favorecido;transferir" for validado, com o tempo de execução "20000" em milissegundos
	And clico na opcao do menu: "2"
	And um dos textos "data;agendamento;transferência;dois números" for validado, com o tempo de execução "15000" em milissegundos
	And clico nos numeros da 'dataAgendamento'
	And um dos textos "por favor;cpf;cnpj;favorecido;começar" for validado, com o tempo de execução "15000" em milissegundos
	And clico no 'cpf favorecido'
	And um dos textos "valor;centavos;transferido;por exemplo;transferir" for validado, com o tempo de execução "15000" em milissegundos
	And clico no 'valor'
	And um dos textos "confirmar;transferência;valor;banco;agência" for validado, com o tempo de execução "15000" em milissegundos
	And clico na opcao do menu: "1"
	Then um dos textos "realizada com sucesso;sucesso" for validado, com o tempo de execução "20000" em milissegundos
	
@URA0480
Scenario: URA0480-ContaCorrente_transferências_AgendamentoDOC_AgendarumatransferênciaDOC_comFavorecidoCadastrado_FRASEOLOGIA_Select

	And estou indo ao menu principal Private ou Select Fraseologia
	And um dos textos "pagamento;boleto;fatura,transferências" for validado, com o tempo de execução "25000" em milissegundos
	And clico na opcao do menu: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu: "4"
	And um dos textos "pagamento;título;contas;pagar;fatura" for validado, com o tempo de execução "15000" em milissegundos
	And clico na opcao do menu: "3"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu: "3"
	And um dos textos "realizados;agendados;favorecido;transferir" for validado, com o tempo de execução "20000" em milissegundos
	And clico na opcao do menu: "2"
	And um dos textos "data;agendamento;transferência;dois números" for validado, com o tempo de execução "15000" em milissegundos
	And clico nos numeros da 'dataAgendamento'
	And um dos textos "por favor;cpf;cnpj;favorecido;começar" for validado, com o tempo de execução "15000" em milissegundos
	And clico no 'cpf favorecido'
	And um dos textos "valor;centavos;transferido;por exemplo;transferir" for validado, com o tempo de execução "15000" em milissegundos
	And clico no 'valor'
	And um dos textos "confirmar;transferência;valor;banco;agência" for validado, com o tempo de execução "15000" em milissegundos
	And clico na opcao do menu: "1"
	Then um dos textos "realizada com sucesso;sucesso" for validado, com o tempo de execução "20000" em milissegundos
	
@URA0484
Scenario: URA0484-ContaCorrente_transferências_AgendamentoDOC_AgendarumatransferênciaDOC_comFavorecidoCadastrado_FRASEOLOGIA_Exclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Fraseologia
	And um dos textos "pagamento;boleto;fatura,transferências" for validado, com o tempo de execução "25000" em milissegundos
	And clico na opcao do menu: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu: "4"
	And um dos textos "pagamento;título;contas;pagar;fatura" for validado, com o tempo de execução "15000" em milissegundos
	And clico na opcao do menu: "3"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu: "3"
	And um dos textos "realizados;agendados;favorecido;transferir" for validado, com o tempo de execução "20000" em milissegundos
	And clico na opcao do menu: "2"
	And um dos textos "data;agendamento;transferência;dois números" for validado, com o tempo de execução "15000" em milissegundos
	And clico nos numeros da 'dataAgendamento'
	And um dos textos "por favor;cpf;cnpj;favorecido;começar" for validado, com o tempo de execução "15000" em milissegundos
	And clico no 'cpf favorecido'
	And um dos textos "valor;centavos;transferido;por exemplo;transferir" for validado, com o tempo de execução "15000" em milissegundos
	And clico no 'valor'
	And um dos textos "confirmar;transferência;valor;banco;agência" for validado, com o tempo de execução "15000" em milissegundos
	And clico na opcao do menu: "1"
	Then um dos textos "realizada com sucesso;sucesso" for validado, com o tempo de execução "20000" em milissegundos
	
@URA0493
Scenario: URA0493-Contacorrente_Transferências_TransferênciaDOC_RealizartransferênciaDOC_dentrodohoráriopermitido_favorecidocadastradoDianãoútil_Modelonovosenha6dígitos_Clássico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "4"
	And clico na opcao do menu transacional: "3"  	
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "3"
	And clico na opcao do menu transacional: "1"
	And clico no 'cpf favorecido' transacional
	And clico no 'valor' transacional
	And clico na opcao do menu transacional: "1"
	Then um dos textos "realizada com sucesso;sucesso" for validado, com o tempo de execução "20000" em milissegundos
	
@URA0761
Scenario: URA0761-ContaCorrente_transferências_transferênciaDOC_RealizartransferênciaDOC_DentroDoHorarioPermitido_ModeloNovoSenha6Digitos_Vangogh

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "4"
	And clico na opcao do menu transacional: "3"  	
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "3"
	And clico na opcao do menu transacional: "1"
	And clico no 'cpf favorecido' transacional
	And clico no 'valor' transacional
	And clico na opcao do menu transacional: "1"
	Then um dos textos "realizada com sucesso;sucesso" for validado, com o tempo de execução "20000" em milissegundos
	
@URA0764
Scenario: URA0764-ContaCorrente_transferências_transferênciaDOC_RealizartransferênciaDOC_DentroDoHorarioPermitido_Fraseologia_Exclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Fraseologia
	And um dos textos "pagamento;boleto;fatura,transferências" for validado, com o tempo de execução "25000" em milissegundos
	And clico na opcao do menu: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu: "4"
	And um dos textos "pagamento;título;contas;pagar;fatura" for validado, com o tempo de execução "15000" em milissegundos
	And clico na opcao do menu: "3"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu: "3"
	And um dos textos "transferir;hoje;agendar;data;transferência" for validado, com o tempo de execução "15000" em milissegundos 
	And clico na opcao do menu: "1" 
	And um dos textos "agência;número;completo;conta;favorecido" for validado, com o tempo de execução "15000" em milissegundos 
	And clico na 'conta favorecido' e 'agencia favorecido' 
	And um dos textos "valor;transferido;por exemplo" for validado, com o tempo de execução "15000" em milissegundos 
	And clico no 'valor' 
	And um dos textos "confirmar;transferência;valor" for validado, com o tempo de execução "15000" em milissegundos 
	And clico na opcao do menu: "1" 
	Then um dos textos "realizada com sucesso;sucesso" for validado, com o tempo de execução "20000" em milissegundos
	
@URA0782
Scenario: URA0782-Contacorrente_Transferências_TransferênciaDOC_dentrodohoráriopermitido_favorecidocadastrado_Modeloantigosenha4dígitos_Clássico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "4"
	And clico na opcao do menu transacional: "3"  	
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "20000" milissegundos
	And clico na opcao do menu transacional: "3"
	And clico na opcao do menu transacional: "1"
	And clico no 'cpf favorecido' transacional
	And clico no 'valor' transacional
	And clico na opcao do menu transacional: "1"
	Then um dos textos "realizada com sucesso;sucesso" for validado, com o tempo de execução "20000" em milissegundos
	
@URA0792
Scenario: URA0792-Contacorrente_Transferências_AgendamentoDOC_comfavorecidocadastrado_Modeloantigosenha4dígitos_Vangogh

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "4"
	And clico na opcao do menu transacional: "3"  	
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "20000" milissegundos
	And clico na opcao do menu transacional: "3"
	And clico na opcao do menu transacional: "2"
	And clico nos numeros da 'dataAgendamento' transacional
	And clico no 'cpf favorecido' transacional
	And clico no 'valor' transacional
	And clico na opcao do menu transacional: "1"
	Then um dos textos "realizada com sucesso;sucesso" for validado, com o tempo de execução "20000" em milissegundos
	
@URA0795
Scenario: URA0795-Contacorrente_Transferências_AgendamentoDOC_comfavorecidocadastrado_Modeloantigosenha4dígitos_Clássico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "4"
	And clico na opcao do menu transacional: "3"  	
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "3"
	And clico na opcao do menu transacional: "2"
	And clico nos numeros da 'dataAgendamento' transacional
	And clico no 'cpf favorecido' transacional
	And clico no 'valor' transacional
	And clico na opcao do menu transacional: "1"
	Then um dos textos "realizada com sucesso;sucesso" for validado, com o tempo de execução "20000" em milissegundos
	
@URA0804
Scenario: URA0804-Contacorrente_Transferencias_TransferenciaDOC_dentrodohorariopermitido_favorecidocadastradoDianaoutil_Modeloantigosenha4digitos_Clássico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "4"
	And clico na opcao do menu transacional: "3"  	
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "3"
	And clico na opcao do menu transacional: "1"
	And clico no 'cpf favorecido' transacional
	And clico no 'valor' transacional
	And clico na opcao do menu transacional: "1"
	Then um dos textos "realizada com sucesso;sucesso" for validado, com o tempo de execução "20000" em milissegundos