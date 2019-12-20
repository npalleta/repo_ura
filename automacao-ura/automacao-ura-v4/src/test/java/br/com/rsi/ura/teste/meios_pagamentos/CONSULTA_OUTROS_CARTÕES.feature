@CONSULTA_OUTROS_CARTÕES @MEIOS_PAGAMENTOS
Feature: Meios de Pagamentos -- CONSULTA_OUTROS_CARTÕES

Background: 
	Given inicializo o 'Relatorio de Dados'
	When clico o numero do telefone da 'Ura'
	
@URA0245
Scenario: URA0245-Consulta_Outroscartoes_OutroCartaoclientecom1Cartaoadicional_RF_TransacionalConsultivamodeloantigodesenha_Select

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "2"
	And estou na opcao de cartões buscando cartão adicional
	And tradução contém "uso no exterior;exterior" ? TRUE( "6" - MSG: "Contém opção de USO NO EXTERIOR" ) -- FALSE( "5" - MSG: "Não contém opção de USO NO EXTERIOR" ) com execução de "25000" milissegundos
	And tradução contém "liberar uso no exterior;exterior;liberar" ? TRUE( "6" - MSG: "Contém opção de LIBERAR USO NO EXTERIOR" ) -- FALSE( "5" - MSG: "Não contém opção de LIBERAR USO NO EXTERIOR" ) com execução de "20000" milissegundos
	And estou esperando por "23000" milissegundos
	Then um dos textos "agora quiser falar do final;mais de um cartão;falar do cartão" for validado, com o tempo de execução "27000" em milissegundos
	
@URA0344
Scenario: URA0344-Consulta_Outroscartões_OutroCartãoclientecom1Cartão_RF_FRASEOLOGIA_Vangogh

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Fraseologia
	And um dos textos "pagamento;boleto;fatura;atendimento" for validado, com o tempo de execução "26000" em milissegundos
	And clico na opcao do menu transacional: "2"
	And estou na opcao de cartões buscando cartão adicional
	And tradução contém "uso no exterior;exterior" ? TRUE( "6" - MSG: "Contém opção de USO NO EXTERIOR" ) -- FALSE( "5" - MSG: "Não contém opção de USO NO EXTERIOR" ) com execução de "25000" milissegundos
	And tradução contém "liberar uso no exterior;exterior;liberar" ? TRUE( "6" - MSG: "Contém opção de LIBERAR USO NO EXTERIOR" ) -- FALSE( "5" - MSG: "Não contém opção de LIBERAR USO NO EXTERIOR" ) com execução de "20000" milissegundos
	And estou esperando por "23000" milissegundos
	Then um dos textos "agora quiser falar do final;mais de um cartão;falar do cartão" for validado, com o tempo de execução "27000" em milissegundos
	
@URA0366
Scenario: URA0366-Consulta_Outroscartões_OutroCartãoclientecom2Cartões_RF_FRASEOLOGIA_Select

	And estou indo ao menu principal Private ou Select Fraseologia
	And um dos textos "pagamento;boleto;fatura;atendimento" for validado, com o tempo de execução "26000" em milissegundos
	And clico na opcao do menu transacional: "2"
	And estou na opcao de cartões buscando cartão adicional
	And tradução contém "uso no exterior;exterior" ? TRUE( "6" - MSG: "Contém opção de USO NO EXTERIOR" ) -- FALSE( "5" - MSG: "Não contém opção de USO NO EXTERIOR" ) com execução de "25000" milissegundos
	And tradução contém "liberar uso no exterior;exterior;liberar" ? TRUE( "6" - MSG: "Contém opção de LIBERAR USO NO EXTERIOR" ) -- FALSE( "5" - MSG: "Não contém opção de LIBERAR USO NO EXTERIOR" ) com execução de "20000" milissegundos
	And estou esperando por "23000" milissegundos
	Then um dos textos "agora quiser falar do final;mais de um cartão;falar do cartão" for validado, com o tempo de execução "27000" em milissegundos

@URA0188
Scenario: URA0188-Consulta_Outroscartoes_OutroCartaoclientecom1Cartaoadicional_RF_TransacionalConsultivamodelonovodesenha_Exclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "2"
	And estou na opcao de cartões buscando cartão adicional
	And tradução contém "uso no exterior;exterior" ? TRUE( "6" - MSG: "Contém opção de USO NO EXTERIOR" ) -- FALSE( "5" - MSG: "Não contém opção de USO NO EXTERIOR" ) com execução de "25000" milissegundos
	And tradução contém "liberar uso no exterior;exterior;liberar" ? TRUE( "6" - MSG: "Contém opção de LIBERAR USO NO EXTERIOR" ) -- FALSE( "5" - MSG: "Não contém opção de LIBERAR USO NO EXTERIOR" ) com execução de "20000" milissegundos
	And estou esperando por "23000" milissegundos
	Then um dos textos "agora quiser falar do final;mais de um cartão;falar do cartão" for validado, com o tempo de execução "27000" em milissegundos

@URA0219
Scenario: URA0219-Consulta_Outroscartoes_OutroCartaoclientecom1Cartaoadicional_RF_TransacionalConsultivamodelonovodesenha_Private

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "2"
	And estou na opcao de cartões buscando cartão adicional
	And tradução contém "uso no exterior;exterior" ? TRUE( "6" - MSG: "Contém opção de USO NO EXTERIOR" ) -- FALSE( "5" - MSG: "Não contém opção de USO NO EXTERIOR" ) com execução de "25000" milissegundos
	And tradução contém "liberar uso no exterior;exterior;liberar" ? TRUE( "6" - MSG: "Contém opção de LIBERAR USO NO EXTERIOR" ) -- FALSE( "5" - MSG: "Não contém opção de LIBERAR USO NO EXTERIOR" ) com execução de "20000" milissegundos
	And estou esperando por "23000" milissegundos
	Then um dos textos "agora quiser falar do final;mais de um cartão;falar do cartão" for validado, com o tempo de execução "27000" em milissegundos

@URA0185
Scenario: URA0185-Consulta_Outroscartoes_OutroCartaoclientecom1Cartao_RF_TransacionalConsultivamodelonovodesenha_Exclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "2"
	And estou na opcao de cartões indo ao menu principal
	And tradução contém "uso no exterior;exterior" ? TRUE( "6" - MSG: "Contém opção de USO NO EXTERIOR" ) -- FALSE( "5" - MSG: "Não contém opção de USO NO EXTERIOR" ) com execução de "25000" milissegundos
	And tradução contém "liberar uso no exterior;exterior;liberar" ? TRUE( "6" - MSG: "Contém opção de LIBERAR USO NO EXTERIOR" ) -- FALSE( "5" - MSG: "Não contém opção de LIBERAR USO NO EXTERIOR" ) com execução de "20000" milissegundos
	And estou esperando por "23000" milissegundos
	Then um dos textos "agora quiser falar do final;mais de um cartão;falar do cartão" for validado, com o tempo de execução "27000" em milissegundos	
	
@URA0216
Scenario: URA0216-Consulta_Outroscartões_OutroCartãoclientecom1Cartão_RF_TransacionalConsultiva_modelonovodesenha_Private

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "2"
	And estou na opcao de cartões indo ao menu principal
	And tradução contém "uso no exterior;exterior" ? TRUE( "6" - MSG: "Contém opção de USO NO EXTERIOR" ) -- FALSE( "5" - MSG: "Não contém opção de USO NO EXTERIOR" ) com execução de "25000" milissegundos
	And tradução contém "liberar uso no exterior;exterior;liberar" ? TRUE( "6" - MSG: "Contém opção de LIBERAR USO NO EXTERIOR" ) -- FALSE( "5" - MSG: "Não contém opção de LIBERAR USO NO EXTERIOR" ) com execução de "20000" milissegundos
	And estou esperando por "23000" milissegundos
	Then um dos textos "agora quiser falar do final;mais de um cartão;falar do cartão" for validado, com o tempo de execução "27000" em milissegundos
	
@URA0217
Scenario: URA0217-Consulta_Outroscartões_OutroCartãoclientecom2Cartões_RF_TransacionalConsultiva_modelonovodesenha_Private

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "2"
	And estou na opcao de cartões indo ao menu principal
	And tradução contém "uso no exterior;exterior" ? TRUE( "6" - MSG: "Contém opção de USO NO EXTERIOR" ) -- FALSE( "5" - MSG: "Não contém opção de USO NO EXTERIOR" ) com execução de "25000" milissegundos
	And tradução contém "liberar uso no exterior;exterior;liberar" ? TRUE( "6" - MSG: "Contém opção de LIBERAR USO NO EXTERIOR" ) -- FALSE( "5" - MSG: "Não contém opção de LIBERAR USO NO EXTERIOR" ) com execução de "20000" milissegundos
	And estou esperando por "23000" milissegundos
	Then um dos textos "agora quiser falar do final;mais de um cartão;falar do cartão" for validado, com o tempo de execução "27000" em milissegundos
		
@URA0243
Scenario: URA0243-Consulta_Outroscartões_OutroCartãoclientecom1Cartão_RF_TransacionalConsultiva_modeloantigodesenha_Select

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "2"
	And estou na opcao de cartões indo ao menu principal
	And tradução contém "uso no exterior;exterior" ? TRUE( "6" - MSG: "Contém opção de USO NO EXTERIOR" ) -- FALSE( "5" - MSG: "Não contém opção de USO NO EXTERIOR" ) com execução de "25000" milissegundos
	And tradução contém "liberar uso no exterior;exterior;liberar" ? TRUE( "6" - MSG: "Contém opção de LIBERAR USO NO EXTERIOR" ) -- FALSE( "5" - MSG: "Não contém opção de LIBERAR USO NO EXTERIOR" ) com execução de "20000" milissegundos
	And estou esperando por "23000" milissegundos
	Then um dos textos "agora quiser falar do final;mais de um cartão;falar do cartão" for validado, com o tempo de execução "27000" em milissegundos