@CANCELAMENTO_PLÁSTICO @MEIOS_PAGAMENTOS
Feature: Meios de Pagamentos -- CANCELAMENTO_PLÁSTICO

Background: 
	Given inicializo o 'Relatorio de Dados'
	When clico o numero do telefone da 'Ura'
	
@URA0343
Scenario: URA0343-Cancelamento_Plastico_Clientecomcartaodecreditook_RF_FRASEOLOGIA_Vangogh

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Fraseologia
	And um dos textos "conta;assunto;atendimento;pagamentos;boletos" for validado, com o tempo de execução "20000" em milissegundos
	And clico na opcao do menu: "2"
	And estou na opcao de cartões indo ao menu principal
	And tradução contém "uso no exterior;exterior" ? TRUE( "6" - MSG: "Contém menu USO NO EXTERIOR" ) -- FALSE( "5" - MSG: "Não contém menu USO NO EXTERIOR" ) com execução de "33000" milissegundos
	And um dos textos "seguro;cartão;protegido;anuidade;cancelar" for validado, com o tempo de execução "15000" em milissegundos
	And clico na opcao do menu: "4"
	And um dos textos "cancelar;possui;pontos;esfera" for validado, com o tempo de execução "30000" em milissegundos
	And clico na opcao do menu: "9"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	And digito o RAMAL transacional
	Then um dos textos "ramal;transferir;segurança;ligação será gravada" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0365
Scenario: URA0365-Cancelamento_Plástico_ClientecomCartãodecrédito_RF_FRASEOLOGIA_Select

	And estou indo ao menu principal Private ou Select Fraseologia
	And um dos textos "conta;assunto;atendimento;pagamentos;boletos" for validado, com o tempo de execução "20000" em milissegundos
	And clico na opcao do menu: "2"
	And estou na opcao de cartões indo ao menu principal
	And tradução contém "uso no exterior;exterior" ? TRUE( "6" - MSG: "Contém menu USO NO EXTERIOR" ) -- FALSE( "5" - MSG: "Não contém menu USO NO EXTERIOR" ) com execução de "33000" milissegundos
	And um dos textos "seguro;cartão;protegido;anuidade;cancelar" for validado, com o tempo de execução "15000" em milissegundos
	And clico na opcao do menu: "4"
	And um dos textos "cancelar;possui;pontos;esfera" for validado, com o tempo de execução "30000" em milissegundos
	And clico na opcao do menu: "9"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	And digito o RAMAL transacional
	Then um dos textos "ramal;transferir;segurança;ligação será gravada" for validado, com o tempo de execução "30000" em milissegundos

@URA0382
Scenario: URA0382-Cancelamento_Plastico_ClientecomCartaodecredito_RF_FRASEOLOGIA_Private

	And estou indo ao menu principal Private ou Select Fraseologia
	And um dos textos "conta;assunto;atendimento;pagamentos;boletos" for validado, com o tempo de execução "20000" em milissegundos
	And clico na opcao do menu: "2"
	And estou na opcao de cartões indo ao menu principal
	And tradução contém "uso no exterior;exterior" ? TRUE( "6" - MSG: "Contém menu USO NO EXTERIOR" ) -- FALSE( "5" - MSG: "Não contém menu USO NO EXTERIOR" ) com execução de "33000" milissegundos
	And um dos textos "seguro;cartão;protegido;anuidade;cancelar" for validado, com o tempo de execução "15000" em milissegundos
	And clico na opcao do menu: "4"
	And um dos textos "cancelar;possui;pontos;esfera" for validado, com o tempo de execução "30000" em milissegundos
	And clico na opcao do menu: "9"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	And digito o RAMAL transacional
	Then um dos textos "ramal;transferir;segurança;ligação será gravada" for validado, com o tempo de execução "30000" em milissegundos