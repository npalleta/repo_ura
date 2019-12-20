@CONSULTA_ANUIDADE @MEIOS_PAGAMENTOS
Feature: Meios de Pagamentos -- CONSULTA_ANUIDADE

Background: 
	Given inicializo o 'Relatorio de Dados'
	When clico o numero do telefone da 'Ura'
	
@URA0184
Scenario: URA0184-Consulta_Anuidade_informacoessobreanuidade_RF_TransacionalConsultivamodelonovodesenha_Exclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "2"
	And estou na opcao de cartões indo ao menu principal
	And tradução contém "uso no exterior;exterior" ? TRUE( "6" - MSG: "Contém menu USO NO EXTERIOR" ) -- FALSE( "5" - MSG: "Não contém menu USO NO EXTERIOR" ) com execução de "25000" milissegundos 
	And tradução contém "liberar uso no exterior;exterior" ? TRUE( "3" - MSG: "Contém menu USO NO EXTERIOR" ) -- FALSE( "2" - MSG: "Não contém menu USO NO EXTERIOR" ) com execução de "25000" milissegundos
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	And digito o RAMAL transacional
	Then um dos textos "transferir;ramal;ligação será gravada;nota sobre este contato" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0215
Scenario: URA0215-Consulta_Anuidade_informacoessobreanuidade_RF_TransacionalConsultivamodelonovodesenha_Private

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "2"
	And estou na opcao de cartões indo ao menu principal
	And tradução contém "uso no exterior;exterior" ? TRUE( "6" - MSG: "Contém menu USO NO EXTERIOR" ) -- FALSE( "5" - MSG: "Não contém menu USO NO EXTERIOR" ) com execução de "25000" milissegundos 
	And tradução contém "liberar uso no exterior;exterior" ? TRUE( "3" - MSG: "Contém menu USO NO EXTERIOR" ) -- FALSE( "2" - MSG: "Não contém menu USO NO EXTERIOR" ) com execução de "25000" milissegundos
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10892" milissegundos
	And digito o RAMAL transacional
	Then um dos textos "transferir;ramal;ligação será gravada;nota sobre este contato" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0341
Scenario: URA0341-Consulta_Anuidade_informaçõessobreanuidade_RF_FRASEOLOGIA_VanGogh

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Fraseologia 
	And um dos textos "pagamento;boleto;fatura;atendimento" for validado, com o tempo de execução "26000" em milissegundos 
	And clico na opcao do menu: "2" 
	And estou na opcao de cartões indo ao menu principal
	And tradução contém "uso no exterior;exterior" ? TRUE( "6" - MSG: "Contém menu USO NO EXTERIOR" ) -- FALSE( "5" - MSG: "Não contém menu USO NO EXTERIOR" ) com execução de "25000" milissegundos 
	And tradução contém "liberar uso no exterior;exterior" ? TRUE( "3" - MSG: "Contém menu USO NO EXTERIOR" ) -- FALSE( "2" - MSG: "Não contém menu USO NO EXTERIOR" ) com execução de "25000" milissegundos
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos 
	And digito o RAMAL transacional 
	Then um dos textos "transferir;ramal;ligação será gravada;nota sobre este contato" for validado, com o tempo de execução "30000" em milissegundos 
	
@URA0401
Scenario: URA0401-Consulta_Anuidade_informacoessobreanuidade_RF_TransacionalConsultivamodelonovodesenha_Cartaomultiplo_Exclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "2"
	And estou na opcao de cartões indo ao menu principal
	And tradução contém "uso no exterior;exterior" ? TRUE( "6" - MSG: "Contém menu USO NO EXTERIOR" ) -- FALSE( "5" - MSG: "Não contém menu USO NO EXTERIOR" ) com execução de "25000" milissegundos 
	And tradução contém "liberar uso no exterior;exterior" ? TRUE( "3" - MSG: "Contém menu USO NO EXTERIOR" ) -- FALSE( "2" - MSG: "Não contém menu USO NO EXTERIOR" ) com execução de "25000" milissegundos
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10892" milissegundos
	And digito o RAMAL transacional
	Then um dos textos "transferir;ramal;ligação será gravada;nota sobre este contato" for validado, com o tempo de execução "30000" em milissegundos