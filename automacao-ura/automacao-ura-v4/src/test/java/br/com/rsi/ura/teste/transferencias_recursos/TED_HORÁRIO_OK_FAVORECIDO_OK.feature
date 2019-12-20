@TED_HORÁRIO_OK_FAVORECIDO_OK @TRANSFERÊNCIAS_RECURSOS
Feature: Transferência e Recursos -- TED_HORÁRIO_OK_FAVORECIDO_OK

Background: 
	Given inicializo o 'Relatorio de Dados'
	When clico o numero do telefone da 'Ura'
	
@URA0494
Scenario: URA0494-Contacorrente_Transferências_TransferênciaTED_RealizartransferênciaTED_emhoráriopermitido_favorecidocadastrado_Modelonovosenha6dígitos_Clássico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "4"
	And clico na opcao do menu transacional: "3"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "2"
	And clico na opcao do menu transacional: "1"
	And clico no 'cpf favorecido' transacional
	And clico no 'valor' transacional
	And clico na opcao do menu transacional: "1"
	Then um dos textos "realizada com sucesso;sucesso" for validado, com o tempo de execução "20000" em milissegundos
	
@URA0495
Scenario: URA0495-ContaCorrente_Transferencias_TransferenciaTED_RealizartransferenciaTED_emhorariopermitido_FavorecidoCadastrado_ModeloNovoSenha6Digitos_Exclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "4"
	And clico na opcao do menu transacional: "3"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "2"
	And clico na opcao do menu transacional: "1"
	And clico no 'cpf favorecido' transacional
	And clico no 'valor' transacional
	And clico na opcao do menu transacional: "1"
	Then um dos textos "realizada com sucesso;sucesso" for validado, com o tempo de execução "20000" em milissegundos
	
@URA0500
Scenario: URA0500-ContaCorrente_Transferencias_AgendamentoTED_AgendarumatransferenciaTED_comFavorecidoCadastrado_ModeloNovoSenha6Digitos_Classico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "4"
	And clico na opcao do menu transacional: "3"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "2"
	And clico na opcao do menu transacional: "2"
	And clico nos numeros da 'dataAgendamento' transacional
	And clico no 'cpf favorecido' transacional
	And clico no 'valor' transacional
	And clico na opcao do menu transacional: "1"
	Then um dos textos "realizada com sucesso;sucesso" for validado, com o tempo de execução "20000" em milissegundos
	
@URA0501
Scenario: URA0501-Contacorrente_Transferências_AgendamentoTED_AgendarumatransferênciaTED_comfavorecidocadastrado_Modelonovosenha6dígitos_Exclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "4"
	And clico na opcao do menu transacional: "3"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "2"
	And clico na opcao do menu transacional: "2"
	And clico nos numeros da 'dataAgendamento' transacional
	And clico no 'cpf favorecido' transacional
	And clico no 'valor' transacional
	And clico na opcao do menu transacional: "1"
	Then um dos textos "realizada com sucesso;sucesso" for validado, com o tempo de execução "20000" em milissegundos
	
@URA0509
Scenario: URA0509-ContaCorrente_Transferencias_AgendamentoTED_AgendarumatransferenciaTED_comFavorecidoCadastrado_FRASEOLOGIA_Private

	And estou indo ao menu principal Private ou Select Fraseologia
	And um dos textos "pagamento;boleto;fatura,transferências" for validado, com o tempo de execução "25000" em milissegundos
	And clico na opcao do menu: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu: "4"
	And um dos textos "pagamento;título;contas;pagar;fatura" for validado, com o tempo de execução "15000" em milissegundos
	And clico na opcao do menu: "3"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu: "2"
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
	
@URA0510
Scenario: URA0510-ContaCorrente_Transferencias_AgendamentoTED_AgendarumatransferenciaTED_comFavorecidoCadastrado_FRASEOLOGIA_Select

	And estou indo ao menu principal Private ou Select Fraseologia
	And um dos textos "pagamento;boleto;fatura,transferências" for validado, com o tempo de execução "25000" em milissegundos
	And clico na opcao do menu: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu: "4"
	And um dos textos "pagamento;título;contas;pagar;fatura" for validado, com o tempo de execução "15000" em milissegundos
	And clico na opcao do menu: "3"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu: "2"
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
	
@URA0511
Scenario: URA0511-Contacorrente_Transferencias_AgendamentoTED_AgendarumatransferenciaTED_comfavorecidocadastrado_Modelonovosenha6digitos_Exclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "4"
	And clico na opcao do menu transacional: "3"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "2"
	And clico na opcao do menu transacional: "2"
	And clico nos numeros da 'dataAgendamento' transacional
	And clico no 'cpf favorecido' transacional
	And clico no 'valor' transacional
	And clico na opcao do menu transacional: "1"
	Then um dos textos "realizada com sucesso;sucesso" for validado, com o tempo de execução "20000" em milissegundos
	
@URA0512
Scenario: URA0512-ContaCorrente_Transferencias_AgendamentoTED_AgendarumatransferenciaTED_comFavorecidoCadastrado_FRASEOLOGIA_Exclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Fraseologia
	And um dos textos "pagamento;boleto;fatura,transferências" for validado, com o tempo de execução "25000" em milissegundos
	And clico na opcao do menu: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu: "4"
	And um dos textos "pagamento;título;contas;pagar;fatura" for validado, com o tempo de execução "15000" em milissegundos
	And clico na opcao do menu: "3"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu: "2"
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
	
@URA0516
Scenario: URA0516-Contacorrente_Transferências_TransferênciaTED_RealizartransferênciaTED_emhoráriopermitido_favorecidocadastradoDianãoútil_Modelonovosenha6dígitos_Exclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "4"
	And clico na opcao do menu transacional: "3"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "2"
	#Informa que está fora do horário, e pergunta se você quer fazer a transferência mesmo assim, confirmando - 1
	#Após a confirmação ela pede a data de agendamento.
	And clico na opcao do menu transacional: "1"
	And clico no 'cpf favorecido' transacional
	And clico no 'valor' transacional
	And clico na opcao do menu transacional: "1"
	Then um dos textos "realizada com sucesso;sucesso" for validado, com o tempo de execução "20000" em milissegundos
	
@URA0775
Scenario: URA0775-Contacorrente_Transferencias_TransferenciaTED_emhorariopermitido_favorecidocadastrado_Modeloantigosenha4digitos_Classico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "4"
	And clico na opcao do menu transacional: "3"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "2"
	And clico na opcao do menu transacional: "1"
	And clico no 'cpf favorecido' transacional
	And clico no 'valor' transacional
	And clico na opcao do menu transacional: "1"
	Then um dos textos "realizada com sucesso;sucesso" for validado, com o tempo de execução "20000" em milissegundos
	
@URA0778
Scenario: URA0778-Contacorrente_Transferencias_AgendamentoTED_comfavorecidocadastrado_Modeloantigosenha4digitos_Classico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Fraseologia
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "4"
	And clico na opcao do menu transacional: "3"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "20000" milissegundos
	And clico na opcao do menu transacional: "2"
	And clico na opcao do menu transacional: "2"
	And clico nos numeros da 'dataAgendamento' transacional
	And clico no 'cpf favorecido' transacional
	And clico no 'valor' transacional
	And clico na opcao do menu transacional: "1"
	Then um dos textos "realizada com sucesso;sucesso" for validado, com o tempo de execução "20000" em milissegundos