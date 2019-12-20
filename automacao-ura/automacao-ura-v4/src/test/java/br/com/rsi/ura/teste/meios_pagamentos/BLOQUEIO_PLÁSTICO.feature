@BLOQUEIO_PLÁSTICO @MEIOS_PAGAMENTOS
Feature: Meios de Pagamentos -- BLOQUEIO_PLÁSTICO

Background: 
	Given inicializo o 'Relatorio de Dados'
	When clico o numero do telefone da 'Ura'
	
@URA0227
Scenario: URA0227-Bloqueio_Plastico_MonoprodutistaFRASEOLOGIA_RF_FRASEOLOGIA_Monoprodutista

	And estou na opcao do menu do ura com o TEXTO e ID " você está", com o tempo total de execução de "40000" milissegundos
	And clico no botao 'teclado' e clico nos numeros do 'CPF'
	And estou na opcao do menu do ura com o texto ' desbloquear', com o tempo total de execução de "25000" milissegundos
	And clico nos numeros da senha
	And um dos textos "atendimento;pagamentos;boletos;bloqueio" for validado, com o tempo de execução "20000" em milissegundos
	And clico na opcao do menu: "5"
	And um dos textos "bloquear;cartão digital;desbloquear" for validado, com o tempo de execução "11000" em milissegundos
	And clico na opcao do menu: "1"
	And digito o RAMAL transacional
	Then um dos textos "ramal;transferir;segurança;ligação será gravada" for validado, com o tempo de execução "27000" em milissegundos
	
@URA0336
Scenario: URA0336-Bloqueio_Plastico_Clientecomcartaook_RF_FRASEOLOGIA_Vangogh

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Fraseologia
	And um dos textos "pagamento;boleto;fatura" for validado, com o tempo de execução "20000" em milissegundos
	And clico na opcao do menu: "2"
	And estou na opcao de cartões indo ao menu principal
	And tradução contém "uso no exterior;exterior" ? TRUE( "5" - MSG: "Contém menu USO NO EXTERIOR" ) -- FALSE( "4" - MSG: "Não contém menu USO NO EXTERIOR" ) com execução de "33000" milissegundos
	And um dos textos "bloquear;cartão digital;desbloquear" for validado, com o tempo de execução "11000" em milissegundos
	And clico na opcao do menu: "1"
	And digito o RAMAL transacional
	Then um dos textos "ramal;transferir;segurança;ligação será gravada" for validado, com o tempo de execução "27000" em milissegundos
	
#	And tradução contém "uso no exterior;exterior" ? TRUE( "5" - MSG: "Contém menu USO NO EXTERIOR" ) -- FALSE( "4" - MSG: "Não contém menu USO NO EXTERIOR" ) com execução de "25000" milissegundos 
	
@URA0377
Scenario: URA0377-Bloqueio_Plastico_Clientecomcartaook_RF_FRASEOLOGIA_Private

	And estou indo ao menu principal Private ou Select Fraseologia
	And um dos textos "pagamento;boleto;fatura" for validado, com o tempo de execução "20000" em milissegundos
	And clico na opcao do menu: "2"
	And estou na opcao de cartões indo ao menu principal
	And tradução contém "uso no exterior;exterior" ? TRUE( "5" - MSG: "Contém menu USO NO EXTERIOR" ) -- FALSE( "4" - MSG: "Não contém menu USO NO EXTERIOR" ) com execução de "33000" milissegundos
	And um dos textos "bloquear;cartão digital;desbloquear" for validado, com o tempo de execução "11000" em milissegundos
	And clico na opcao do menu: "1"
	And digito o RAMAL transacional
	Then um dos textos "ramal;transferir;segurança;ligação será gravada" for validado, com o tempo de execução "27000" em milissegundos