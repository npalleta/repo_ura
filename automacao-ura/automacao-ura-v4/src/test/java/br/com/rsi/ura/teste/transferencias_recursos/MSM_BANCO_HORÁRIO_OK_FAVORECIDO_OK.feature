@MSM_BANCO_HORÁRIO_OK_FAVORECIDO_OK @TRANSFERÊNCIAS_RECURSOS
Feature: Transferência e Recursos -- MSM_BANCO_HORÁRIO_OK_FAVORECIDO_OK

Background: 
	Given inicializo o 'Relatorio de Dados'
	When clico o numero do telefone da 'Ura'
	
@URA0461
Scenario: URA0461-ContaCorrente_Transferencias_Transferenciaentrecontas_Transferirparacontademesmobanco_DentroDoHorarioPermitidoFavorecidoCadastrado_ModeloNovoSenha6Digitos_Classico 

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "4"
	And clico na opcao do menu transacional: "3"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1" 
	And clico na 'conta favorecido' e 'agencia favorecido' transacional 
	And clico no 'valor' transacional
	And clico na opcao do menu transacional: "1" 
	Then um dos textos "realizada com sucesso;sucesso" for validado, com o tempo de execução "20000" em milissegundos

@URA0462
Scenario: URA0462-Contacorrente_Transferencias_Transferenciaentrecontas_Transferirparacontademesmobanco_dentrodohorariopermitidofavorecidocadastrado_Modelonovosenha6digito_Select

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "4"
	And clico na opcao do menu transacional: "3"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1" 
	And clico na 'conta favorecido' e 'agencia favorecido' transacional 
	And clico no 'valor' transacional
	And clico na opcao do menu transacional: "1" 
	Then um dos textos "realizada com sucesso;sucesso" for validado, com o tempo de execução "20000" em milissegundos
	
@URA0469
Scenario: URA0469-Contacorrente_Transferências_Agendamentodetransferência_AgendarumaTransferênciaparamesmobanco_comfavorecidocadastrado_Modelonovosenha6dígitos_Clássico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "4"
	And clico na opcao do menu transacional: "3"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "20000" milissegundos
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "2"
	And clico nos numeros da 'dataAgendamento' transacional
	And clico na 'conta favorecido' e 'agencia favorecido' transacional
	And clico no 'valor' transacional
	And clico na opcao do menu transacional: "1"
	Then um dos textos "realizada com sucesso;sucesso" for validado, com o tempo de execução "20000" em milissegundos
	
@URA0470
Scenario: URA0470-Contacorrente_Transferencias_Agendamentodetransferencia_AgendarumaTransferenciaparamesmobanco_comfavorecidocadastrado_Modelonovosenha6digitos_Select

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "4"
	And clico na opcao do menu transacional: "3"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "20000" milissegundos
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "2"
	And clico nos numeros da 'dataAgendamento' transacional
	And clico na 'conta favorecido' e 'agencia favorecido' transacional
	And clico no 'valor' transacional
	And clico na opcao do menu transacional: "1"
	Then um dos textos "realizada com sucesso;sucesso" for validado, com o tempo de execução "20000" em milissegundos
	
@URA0473
Scenario: URA0473-ContaCorrente_Transferencias_Transferenciaentrecontas_Transferirparacontademesmobanco_DentroDoHorarioPermitidoFavorecidoCadastrado_FRASEOLOGIA_Private 

	And estou indo ao menu principal Private ou Select Fraseologia
	And um dos textos "pagamento;boleto;fatura,transferências" for validado, com o tempo de execução "25000" em milissegundos
	And clico na opcao do menu: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu: "4"
	And um dos textos "pagamento;título;contas;pagar;fatura" for validado, com o tempo de execução "15000" em milissegundos
	And clico na opcao do menu: "3"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu: "1"
	And um dos textos "transferir;hoje;agendar;data;transferência" for validado, com o tempo de execução "15000" em milissegundos 
	And clico na opcao do menu: "1" 
	And um dos textos "agência;número;completo;conta;favorecido" for validado, com o tempo de execução "15000" em milissegundos 
	And clico na 'conta favorecido' e 'agencia favorecido' 
	And um dos textos "valor;transferido;por exemplo" for validado, com o tempo de execução "15000" em milissegundos 
	And clico no 'valor' 
	And um dos textos "confirmar;transferência;valor" for validado, com o tempo de execução "15000" em milissegundos 
	And clico na opcao do menu: "1" 
	Then um dos textos "realizada com sucesso;sucesso" for validado, com o tempo de execução "20000" em milissegundos
	
@URA0474
Scenario: URA0474-ContaCorrente_Transferencias_Transferenciaentrecontas_Transferirparacontademesmobanco_DentroDoHorarioPermitidoFavorecidoCadastrado_FRASEOLOGIA_Select 

	And estou indo ao menu principal Private ou Select Fraseologia
	And um dos textos "pagamento;boleto;fatura,transferências" for validado, com o tempo de execução "25000" em milissegundos
	And clico na opcao do menu: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu: "4"
	And um dos textos "pagamento;título;contas;pagar;fatura" for validado, com o tempo de execução "15000" em milissegundos
	And clico na opcao do menu: "3"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu: "1"
	And um dos textos "transferir;hoje;agendar;data;transferência" for validado, com o tempo de execução "15000" em milissegundos 
	And clico na opcao do menu: "1" 
	And um dos textos "agência;número;completo;conta;favorecido" for validado, com o tempo de execução "15000" em milissegundos 
	And clico na 'conta favorecido' e 'agencia favorecido' 
	And um dos textos "valor;transferido;por exemplo" for validado, com o tempo de execução "15000" em milissegundos 
	And clico no 'valor' 
	And um dos textos "confirmar;transferência;valor" for validado, com o tempo de execução "15000" em milissegundos 
	And clico na opcao do menu: "1" 
	Then um dos textos "realizada com sucesso;sucesso" for validado, com o tempo de execução "20000" em milissegundos
	
@URA0481
Scenario: URA0481-Contacorrente_Transferencias_Agendamentodetransferencia_AgendarumaTransferenciaparamesmobanco_comfavorecidocadastrado_FRASEOLOGIA_Private

	And estou indo ao menu principal Private ou Select Fraseologia
	And um dos textos "pagamento;boleto;fatura,transferências" for validado, com o tempo de execução "25000" em milissegundos
	And clico na opcao do menu: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu: "4"
	And um dos textos "pagamento;título;contas;pagar;fatura" for validado, com o tempo de execução "15000" em milissegundos
	And clico na opcao do menu: "3"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu: "1"
	And um dos textos "transferir;hoje;agendar;data;transferência" for validado, com o tempo de execução "15000" em milissegundos
	And clico na opcao do menu: "2"
	And um dos textos "data;agendamento;transferência;dois números" for validado, com o tempo de execução "15000" em milissegundos
	And clico nos numeros da 'dataAgendamento'
	And um dos textos "agência;completo;conta corrente;favorecido" for validado, com o tempo de execução "15000" em milissegundos
	And clico na 'conta favorecido' e 'agencia favorecido'
	And um dos textos "valor;centavos;transferido;por exemplo;transferir" for validado, com o tempo de execução "20000" em milissegundos
	And clico no 'valor'
	And um dos textos "confirmar;transferência;valor;agência" for validado, com o tempo de execução "20000" em milissegundos
	And clico na opcao do menu: "1"
	Then um dos textos "realizada com sucesso;sucesso" for validado, com o tempo de execução "20000" em milissegundos
	
@URA0482
Scenario: URA0482-Contacorrente_Transferencias_Agendamentodetransferencia_AgendarumaTransferenciaparamesmobanco_comfavorecidocadastrado_FRASEOLOGIA_Select

	And estou indo ao menu principal Private ou Select Fraseologia
	And um dos textos "pagamento;boleto;fatura,transferências" for validado, com o tempo de execução "25000" em milissegundos
	And clico na opcao do menu: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu: "4"
	And um dos textos "pagamento;título;contas;pagar;fatura" for validado, com o tempo de execução "15000" em milissegundos
	And clico na opcao do menu: "3"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu: "1"
	And um dos textos "transferir;hoje;agendar;data;transferência" for validado, com o tempo de execução "15000" em milissegundos
	And clico na opcao do menu: "2"
	And um dos textos "data;agendamento;transferência;dois números" for validado, com o tempo de execução "15000" em milissegundos
	And clico nos numeros da 'dataAgendamento'
	And um dos textos "agência;completo;conta corrente;favorecido" for validado, com o tempo de execução "15000" em milissegundos
	And clico na 'conta favorecido' e 'agencia favorecido'
	And um dos textos "valor;centavos;transferido;por exemplo;transferir" for validado, com o tempo de execução "20000" em milissegundos
	And clico no 'valor'
	And um dos textos "confirmar;transferência;valor;agência" for validado, com o tempo de execução "20000" em milissegundos
	And clico na opcao do menu: "1"
	Then um dos textos "realizada com sucesso;sucesso" for validado, com o tempo de execução "20000" em milissegundos
	
@URA0485
Scenario: URA0485-Contacorrente_Transferencias_Agendamentodetransferencia_AgendarumaTransferenciaparamesmobanco_comfavorecidocadastrado_Modelonovosenha6digitos_Exclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "4"
	And clico na opcao do menu transacional: "3"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "20000" milissegundos
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "2"
	And clico nos numeros da 'dataAgendamento' transacional
	And clico na 'conta favorecido' e 'agencia favorecido' transacional
	And clico no 'valor' transacional
	And clico na opcao do menu transacional: "1"
	Then um dos textos "realizada com sucesso;sucesso" for validado, com o tempo de execução "20000" em milissegundos
	
@URA0486
Scenario: URA0486-Contacorrente_Transferências_Agendamentodetransferência_AgendarumaTransferênciaparamesmobanco_comfavorecidocadastrado_FRASEOLOGIA_Exclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Fraseologia
	And um dos textos "pagamento;boleto;fatura,transferências" for validado, com o tempo de execução "25000" em milissegundos
	And clico na opcao do menu: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu: "4"
	And um dos textos "pagamento;título;contas;pagar;fatura" for validado, com o tempo de execução "15000" em milissegundos
	And clico na opcao do menu: "3"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu: "1"
	And um dos textos "transferir;hoje;agendar;data;transferência" for validado, com o tempo de execução "15000" em milissegundos
	And clico na opcao do menu: "2"
	And um dos textos "data;agendamento;transferência;dois números" for validado, com o tempo de execução "15000" em milissegundos
	And clico nos numeros da 'dataAgendamento'
	And um dos textos "agência;completo;conta corrente;favorecido" for validado, com o tempo de execução "15000" em milissegundos
	And clico na 'conta favorecido' e 'agencia favorecido'
	And um dos textos "valor;centavos;transferido;por exemplo;transferir" for validado, com o tempo de execução "20000" em milissegundos
	And clico no 'valor'
	And um dos textos "confirmar;transferência;valor;agência" for validado, com o tempo de execução "20000" em milissegundos
	And clico na opcao do menu: "1"
	Then um dos textos "realizada com sucesso;sucesso" for validado, com o tempo de execução "20000" em milissegundos
	
@URA0489
Scenario: URA0489-Contacorrente_Transferências_Transferênciaentrecontas_Transferirparacontademesmobanco_dentrodohoráriopermitido_favorecidocadastrado_Modelonovosenha6dígitos_Exclusivo 

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "4"
	And clico na opcao do menu transacional: "3"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1" 
	And clico na 'conta favorecido' e 'agencia favorecido' transacional 
	And clico no 'valor' transacional
	And clico na opcao do menu transacional: "1" 
	Then um dos textos "realizada com sucesso;sucesso" for validado, com o tempo de execução "20000" em milissegundos
	
@URA0491
Scenario: URA0491-ContaCorrente_Transferencias_Transferenciaentrecontas_Transferirparacontademesmobanco_DentroDoHorarioPermitido_FavorecidoCadastrado_FRASEOLOGIA_Classico 

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Fraseologia
	And um dos textos "pagamento;boleto;fatura,transferências" for validado, com o tempo de execução "25000" em milissegundos
	And clico na opcao do menu: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu: "4"
	And um dos textos "pagamento;título;contas;pagar;fatura" for validado, com o tempo de execução "15000" em milissegundos
	And clico na opcao do menu: "3"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu: "1"
	And um dos textos "transferir;hoje;agendar;data;transferência" for validado, com o tempo de execução "15000" em milissegundos 
	And clico na opcao do menu: "1" 
	And um dos textos "agência;número;completo;conta;favorecido" for validado, com o tempo de execução "15000" em milissegundos 
	And clico na 'conta favorecido' e 'agencia favorecido' 
	And um dos textos "valor;transferido;por exemplo" for validado, com o tempo de execução "15000" em milissegundos 
	And clico no 'valor' 
	And um dos textos "confirmar;transferência;valor" for validado, com o tempo de execução "15000" em milissegundos 
	And clico na opcao do menu: "1" 
	Then um dos textos "realizada com sucesso;sucesso" for validado, com o tempo de execução "20000" em milissegundos
	
@URA0526
Scenario: URA0526-ContaCorrente_Transferencias_Transferenciaentrecontas_Transferirparacontademesmobanco_DentroDoHorarioPermitidoFavorecidoCadastrado_ModeloNovoSenha6Digitos_Select
 
	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "4"
	And clico na opcao do menu transacional: "3"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1" 
	And clico na 'conta favorecido' e 'agencia favorecido' transacional 
	And clico no 'valor' transacional
	And clico na opcao do menu transacional: "1" 
	Then um dos textos "realizada com sucesso;sucesso" for validado, com o tempo de execução "20000" em milissegundos
	
@URA0786	
Scenario: URA0786-Contacorrente_Transferências_Transferênciaentrecontas_dentrodohoráriopermitido_favorecidocadastrado_Modeloantigosenha4dígitos_Clássico 

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "4"
	And clico na opcao do menu transacional: "3"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1" 
	And clico na 'conta favorecido' e 'agencia favorecido' transacional 
	And clico no 'valor' transacional
	And clico na opcao do menu transacional: "1" 
	Then um dos textos "realizada com sucesso;sucesso" for validado, com o tempo de execução "20000" em milissegundos
	
@URA0793
Scenario: URA0793-Contacorrente_Transferências_Agendamentodetransferência_comfavorecidocadastrado_Modeloantigosenha4dígitos_Exclusivo 

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "4"
	And clico na opcao do menu transacional: "3"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "2"
	And clico nos numeros da 'dataAgendamento' transacional
	And clico na 'conta favorecido' e 'agencia favorecido' transacional
	And clico no 'valor' transacional
	And clico na opcao do menu transacional: "1"
	Then um dos textos "realizada com sucesso;sucesso" for validado, com o tempo de execução "20000" em milissegundos
	
@URA0794
Scenario: URA0794-Contacorrente_Transferências_Agendamentodetransferência_comfavorecidocadastrado_Modeloantigosenha4dígitos_Clássico 

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "4"
	And clico na opcao do menu transacional: "3"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "2"
	And clico nos numeros da 'dataAgendamento' transacional
	And clico na 'conta favorecido' e 'agencia favorecido' transacional
	And clico no 'valor' transacional
	And clico na opcao do menu transacional: "1"
	Then um dos textos "realizada com sucesso;sucesso" for validado, com o tempo de execução "20000" em milissegundos