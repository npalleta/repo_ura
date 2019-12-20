@MSM_BANCO_FORA_HORÁRIO_FAVORECIDO_OK @TRANSFERÊNCIAS_RECURSOS
Feature: Transferência e Recursos -- MSM_BANCO_FORA_HORÁRIO_FAVORECIDO_OK

Background: 
	Given inicializo o 'Relatorio de Dados'
	When clico o numero do telefone da 'Ura'
	
@URA0463
Scenario: URA0463-Contacorrente_Transferências_Transferênciaentrecontas_Transferirparacontademesmobanco_foradohoráriopermitido_favorecidocadastrado_Modelonovosenha6dígitos_Clássico 

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
	
@URA0464
Scenario: URA0464-Contacorrente_Transferências_Transferênciaentrecontas_Transferirparacontademesmobanco_foradohoráriopermitido_favorecidocadastrado_Modelonovosenha6dígitos_Select 

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
	
@URA0475
Scenario: URA0475-Contacorrente_Transferências_Transferênciaentrecontas_Transferirparacontademesmobanco_foradohoráriopermitido_favorecidocadastrado_FRASEOLOGIA_Private 

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
	
@URA0476
Scenario: URA0476-Contacorrente_Transferências_Transferênciaentrecontas_Transferirparacontademesmobanco_foradohoráriopermitido_favorecidocadastrado_FRASEOLOGIA_Select 

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
	
@URA0490
Scenario: URA0490-Contacorrente_Transferências_Transferênciaentrecontas_Transferirparacontademesmobanco_foradohoráriopermitido_favorecidocadastrado_Modelonovosenha6dígitos_Exclusivo 

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
	
@URA0492
Scenario: URA0492-Contacorrente_Transferências_Transferênciaentrecontas_Transferirparacontademesmobanco_foradohoráriopermitido_favorecidocadastrado_FRASEOLOGIA_Clássico 

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
	
@URA0527
Scenario: URA0527-Contacorrente_Transferências_Transferênciaentrecontas_Transferirparacontademesmobancoentrecontas_foradohoráriopermitido_favorecidocadastrado_Modelonovosenha6dígitos_VanGogh 

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
	
@URA0528
Scenario: URA0528-Contacorrente_Transferências_Transferênciaentrecontas_Transferirparacontademesmobancoentrecontas_foradohoráriopermitido_favorecidocadastrado_Modelonovosenha6dígitos_Private 

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
	
@URA0739
Scenario: URA0739-Contacorrente_Transferencias_Transferenciaentrecontas_Transferirparacontademesmobanco_entrecontasforadohorariopermitido_favorecidocadastrado_FRASEOLOGIA_Exclusivo 

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
	
@URA0740
Scenario: URA0740-Contacorrente_Transferencias_Transferenciaentrecontas_Transferirparacontademesmobanco_entrecontasforadohorariopermitido_favorecidocadastrado_FRASEOLOGIA_VanGogh 

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
	
@URA0766
Scenario: URA0766-Contacorrente_Transferencias_Transferenciaentrecontas_Transferirparacontademesmobanco_entrecontasforadohorariopermitido_favorecidocadastrado_Modelonovosenha6dígitos_Exclusivo 

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
	
@URA0787
Scenario: URA0787-Contacorrente_Transferencias_Transferenciaentrecontas_foradohorariopermitido_favorecidocadastrado_Modeloantigosenha4digitos_Clássico 

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