@DOC_FORA_HORÁRIO_FAVORECIDO_OK @TRANSFERÊNCIAS_RECURSOS
Feature: Transferência e Recursos -- DOC_FORA_HORÁRIO_FAVORECIDO_OK

Background: 
	Given inicializo o 'Relatorio de Dados'
	When clico o numero do telefone da 'Ura'
	
@URA0459
Scenario: URA0459-Contacorrente_Transferências_TransferênciaDOC_RealizartransferênciaDOC_foradohoráriopermitido_favorecidocadastrado_Modelonovosenha6dígitos_Exclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
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
	
@URA0460
Scenario: URA0460-Contacorrente_Transferências_TransferênciaDOC_RealizartransferênciaDOC_foradohoráriopermitido_favorecidocadastrado_Modelonovosenha6dígitos_Clássico

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
	
@URA0471
Scenario: URA0471-Contacorrente_Transferências_TransferênciaDOC_RealizartransferênciaDOC_foradohoráriopermitido_favorecidocadastrado_FRASEOLOGIA_Private

	And estou indo ao menu principal Private ou Select Fraseologia
	And um dos textos "pagamento;boleto;fatura,transferências" for validado, com o tempo de execução "25000" em milissegundos
	And clico na opcao do menu: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu: "4"
	And um dos textos "pagamento;título;contas;pagar;fatura" for validado, com o tempo de execução "15000" em milissegundos
	And clico na opcao do menu: "3"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu: "3"
	And um dos textos "realizados;creditado;conta;favorecido;valor;máximo" for validado, com o tempo de execução "15000" em milissegundos 
	And clico na opcao do menu: "1" 
	And um dos textos "agência;número;completo;conta;favorecido" for validado, com o tempo de execução "15000" em milissegundos 
	And clico na 'conta favorecido' e 'agencia favorecido' 
	And um dos textos "valor;transferido;por exemplo" for validado, com o tempo de execução "15000" em milissegundos 
	And clico no 'valor' 
	And um dos textos "confirmar;transferência;valor" for validado, com o tempo de execução "15000" em milissegundos 
	And clico na opcao do menu: "1" 
	Then um dos textos "realizada com sucesso;sucesso" for validado, com o tempo de execução "20000" em milissegundos
	
@URA0472
Scenario: URA0472-Contacorrente_Transferências_TransferênciaDOC_RealizartransferênciaDOC_foradohoráriopermitido_favorecidocadastrado_FRASEOLOGIA_Select

	And estou indo ao menu principal Private ou Select Fraseologia
	And um dos textos "pagamento;boleto;fatura,transferências" for validado, com o tempo de execução "25000" em milissegundos
	And clico na opcao do menu: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu: "4"
	And um dos textos "pagamento;título;contas;pagar;fatura" for validado, com o tempo de execução "15000" em milissegundos
	And clico na opcao do menu: "3"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu: "3"
	And um dos textos "realizados;creditado;conta;favorecido;valor;máximo" for validado, com o tempo de execução "15000" em milissegundos 
	And clico na opcao do menu: "1" 
	And um dos textos "agência;número;completo;conta;favorecido" for validado, com o tempo de execução "15000" em milissegundos 
	And clico na 'conta favorecido' e 'agencia favorecido' 
	And um dos textos "valor;transferido;por exemplo" for validado, com o tempo de execução "15000" em milissegundos 
	And clico no 'valor' 
	And um dos textos "confirmar;transferência;valor" for validado, com o tempo de execução "15000" em milissegundos 
	And clico na opcao do menu: "1" 
	Then um dos textos "realizada com sucesso;sucesso" for validado, com o tempo de execução "20000" em milissegundos
	
@URA0733
Scenario: URA0733-Contacorrente_Transferencias_TransferenciaDOC_RealizartransferenciaDOC_foradohorariopermitido_favorecidocadastrado_FRASEOLOGIA_Classico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Fraseologia
	And um dos textos "pagamento;boleto;fatura,transferências" for validado, com o tempo de execução "25000" em milissegundos
	And clico na opcao do menu: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu: "4"
	And um dos textos "pagamento;título;contas;pagar;fatura" for validado, com o tempo de execução "15000" em milissegundos
	And clico na opcao do menu: "3"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu: "3"
	And um dos textos "realizados;creditado;conta;favorecido;valor;máximo" for validado, com o tempo de execução "15000" em milissegundos 
	And clico na opcao do menu: "1" 
	And um dos textos "agência;número;completo;conta;favorecido" for validado, com o tempo de execução "15000" em milissegundos 
	And clico na 'conta favorecido' e 'agencia favorecido' 
	And um dos textos "valor;transferido;por exemplo" for validado, com o tempo de execução "15000" em milissegundos 
	And clico no 'valor' 
	And um dos textos "confirmar;transferência;valor" for validado, com o tempo de execução "15000" em milissegundos 
	And clico na opcao do menu: "1" 
	Then um dos textos "realizada com sucesso;sucesso" for validado, com o tempo de execução "20000" em milissegundos
	
@URA0783
Scenario: URA0783-Contacorrente_Transferencias_TransferenciaDOC_foradohorariopermitido_favorecidocadastrado_Modeloantigosenha4dgitos_Clássico

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