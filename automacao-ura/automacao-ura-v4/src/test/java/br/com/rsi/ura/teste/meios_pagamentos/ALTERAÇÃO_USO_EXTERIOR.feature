@ALTERAÇÃO_SENHA @MEIOS_PAGAMENTOS
Feature: Meios de Pagamentos -- ALTERAÇÃO_USO_EXTERIOR

Background: 
	Given inicializo o 'Relatorio de Dados'
	When clico o numero do telefone da 'Ura'
	
@URA0340
Scenario: URA0340-Alteracao_UsonoExterior_ClientecomCartaodeCreditoNacional_RF_FRASEOLOGIA_Vangogh

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Fraseologia
	And um dos textos "pagamento;boleto;fatura" for validado, com o tempo de execução "26000" em milissegundos
	And clico na opcao do menu: "2"
	And estou na opcao de cartões indo ao menu principal
	And tradução contém "uso no exterior;exterior" ? TRUE( "4" - MSG: "Contém menu USO NO EXTERIOR" ) -- FALSE( "5" - MSG: "Não contém menu USO NO EXTERIOR" ) com execução de "33000" milissegundos 
	And tradução contém "liberar uso no exterior;exterior" ? TRUE( "1" - MSG: "Contém menu USO NO EXTERIOR" ) -- FALSE( "" - MSG: "Não precisou teclar, pois a opção 'uso no exterior' ja foi validada." ) com execução de "25000" milissegundos
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " cartão", com o tempo total de execução de "11000" milissegundos
	And clico na opcao do menu: "1"
	And um dos textos "agora;passar;continente" for validado, com o tempo de execução "12000" em milissegundos
	And clico na opcao do menu: "2"
	And um dos textos "agora;informa;quando;viajar;viagem" for validado, com o tempo de execução "11000" em milissegundos
	And clico os numeros da data incio da viagem
	And um dos textos "anotado;terminar;final;viagem;formato" for validado, com o tempo de execução "17000" em milissegundos
	And clico os numeros da data final da viagem
	Then um dos textos "habilitado para compras;durante o período de" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0363
Scenario: URA0363-Alteracao_UsonoExterior_ClientecomCartaodeCreditoNacional_RF_FRASEOLOGIA_Select

	And estou indo ao menu principal Private ou Select Fraseologia
	And um dos textos "pagamento;boleto;fatura" for validado, com o tempo de execução "26000" em milissegundos
	And clico na opcao do menu: "2"
	And estou na opcao de cartões indo ao menu principal
	And tradução contém "uso no exterior;exterior" ? TRUE( "4" - MSG: "Contém menu USO NO EXTERIOR" ) -- FALSE( "5" - MSG: "Não contém menu USO NO EXTERIOR" ) com execução de "33000" milissegundos 
	And tradução contém "liberar uso no exterior;exterior" ? TRUE( "1" - MSG: "Contém menu USO NO EXTERIOR" ) -- FALSE( "" - MSG: "Não precisou teclar, pois a opção 'uso no exterior' ja foi validada." ) com execução de "25000" milissegundos
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " cartão", com o tempo total de execução de "11000" milissegundos
	And clico na opcao do menu: "1"
	And um dos textos "agora;passar;continente" for validado, com o tempo de execução "12000" em milissegundos
	And clico na opcao do menu: "2"
	And um dos textos "agora;informa;quando;viajar;viagem" for validado, com o tempo de execução "11000" em milissegundos
	And clico os numeros da data incio da viagem
	And um dos textos "anotado;terminar;final;viagem;formato" for validado, com o tempo de execução "17000" em milissegundos
	And clico os numeros da data final da viagem
	Then um dos textos "habilitado para compras;durante o período de" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0380
Scenario: URA0380-Alteracao_UsonoExterior_ClientecomCartaodeCreditoNacional_RF_FRASEOLOGIA_Private

	And estou indo ao menu principal Private ou Select Fraseologia
	And um dos textos "pagamento;boleto;fatura" for validado, com o tempo de execução "26000" em milissegundos
	And clico na opcao do menu: "2"
	And estou na opcao de cartões indo ao menu principal
	And tradução contém "uso no exterior;exterior" ? TRUE( "4" - MSG: "Contém menu USO NO EXTERIOR" ) -- FALSE( "5" - MSG: "Não contém menu USO NO EXTERIOR" ) com execução de "33000" milissegundos 
	And tradução contém "liberar uso no exterior;exterior" ? TRUE( "1" - MSG: "Contém menu USO NO EXTERIOR" ) -- FALSE( "" - MSG: "Não precisou teclar, pois a opção 'uso no exterior' ja foi validada." ) com execução de "25000" milissegundos
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " cartão", com o tempo total de execução de "11000" milissegundos
	And clico na opcao do menu: "1"
	And um dos textos "agora;passar;continente" for validado, com o tempo de execução "12000" em milissegundos
	And clico na opcao do menu: "2"
	And um dos textos "agora;informa;quando;viajar;viagem" for validado, com o tempo de execução "11000" em milissegundos
	And clico os numeros da data incio da viagem
	And um dos textos "anotado;terminar;final;viagem;formato" for validado, com o tempo de execução "17000" em milissegundos
	And clico os numeros da data final da viagem
	Then um dos textos "habilitado para compras;durante o período de" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0339
Scenario: URA0339-Alteração_UsonoExterior_ClientecomcartãodeDébitoInternacional_RF_FRASEOLOGIA_Vangogh

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Fraseologia
	And um dos textos "pagamento;boleto;fatura" for validado, com o tempo de execução "26000" em milissegundos
	And clico na opcao do menu: "2"
	And estou na opcao de cartões indo ao menu principal
	And tradução contém "uso no exterior;exterior" ? TRUE( "4" - MSG: "Contém menu USO NO EXTERIOR" ) -- FALSE( "5" - MSG: "Não contém menu USO NO EXTERIOR" ) com execução de "33000" milissegundos 
	And tradução contém "liberar uso no exterior;exterior" ? TRUE( "1" - MSG: "Contém menu USO NO EXTERIOR" ) -- FALSE( "" - MSG: "Não precisou teclar, pois a opção 'uso no exterior' ja foi validada." ) com execução de "25000" milissegundos
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " cartão", com o tempo total de execução de "11000" milissegundos
	And clico na opcao do menu: "1"
	And um dos textos "agora;passar;continente" for validado, com o tempo de execução "12000" em milissegundos
	And clico na opcao do menu: "2"
	And um dos textos "agora;informa;quando;viajar;viagem" for validado, com o tempo de execução "11000" em milissegundos
	And clico os numeros da data incio da viagem
	And um dos textos "anotado;terminar;final;viagem;formato" for validado, com o tempo de execução "17000" em milissegundos
	And clico os numeros da data final da viagem
	Then um dos textos "habilitado para compras;durante o período de" for validado, com o tempo de execução "30000" em milissegundos

@URA0362
Scenario: URA0362-Alteracao_UsonoExterior_ClientecomcartaodeDebitoInternacional_RF_FRASEOLOGIA_Select

	And estou indo ao menu principal Private ou Select Fraseologia
	And um dos textos "pagamento;boleto;fatura" for validado, com o tempo de execução "26000" em milissegundos
	And clico na opcao do menu: "2"
	And estou na opcao de cartões indo ao menu principal
	And tradução contém "uso no exterior;exterior" ? TRUE( "4" - MSG: "Contém menu USO NO EXTERIOR" ) -- FALSE( "5" - MSG: "Não contém menu USO NO EXTERIOR" ) com execução de "33000" milissegundos 
	And tradução contém "liberar uso no exterior;exterior" ? TRUE( "1" - MSG: "Contém menu USO NO EXTERIOR" ) -- FALSE( "" - MSG: "Não precisou teclar, pois a opção 'uso no exterior' ja foi validada." ) com execução de "25000" milissegundos
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " cartão", com o tempo total de execução de "11000" milissegundos
	And clico na opcao do menu: "1"
	And um dos textos "agora;passar;continente" for validado, com o tempo de execução "12000" em milissegundos
	And clico na opcao do menu: "2"
	And um dos textos "agora;informa;quando;viajar;viagem" for validado, com o tempo de execução "11000" em milissegundos
	And clico os numeros da data incio da viagem
	And um dos textos "anotado;terminar;final;viagem;formato" for validado, com o tempo de execução "17000" em milissegundos
	And clico os numeros da data final da viagem
	Then um dos textos "habilitado para compras;durante o período de" for validado, com o tempo de execução "30000" em milissegundos 

@URA0379
Scenario: URA0379-Alteracao_UsonoExterior_ClientecomcartaodeDebitoInternacional_RF_FRASEOLOGIA_Private

	And estou indo ao menu principal Private ou Select Fraseologia
	And um dos textos "pagamento;boleto;fatura" for validado, com o tempo de execução "26000" em milissegundos
	And clico na opcao do menu: "2"
	And estou na opcao de cartões indo ao menu principal
	And tradução contém "uso no exterior;exterior" ? TRUE( "4" - MSG: "Contém menu USO NO EXTERIOR" ) -- FALSE( "5" - MSG: "Não contém menu USO NO EXTERIOR" ) com execução de "33000" milissegundos 
	And tradução contém "liberar uso no exterior;exterior" ? TRUE( "1" - MSG: "Contém menu USO NO EXTERIOR" ) -- FALSE( "" - MSG: "Não precisou teclar, pois a opção 'uso no exterior' ja foi validada." ) com execução de "25000" milissegundos
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " cartão", com o tempo total de execução de "11000" milissegundos
	And clico na opcao do menu: "1"
	And um dos textos "agora;passar;continente" for validado, com o tempo de execução "12000" em milissegundos
	And clico na opcao do menu: "2"
	And um dos textos "agora;informa;quando;viajar;viagem" for validado, com o tempo de execução "11000" em milissegundos
	And clico os numeros da data incio da viagem
	And um dos textos "anotado;terminar;final;viagem;formato" for validado, com o tempo de execução "17000" em milissegundos
	And clico os numeros da data final da viagem
	Then um dos textos "habilitado para compras;durante o período de" for validado, com o tempo de execução "30000" em milissegundos