@CADASTRO_DÉBITO_AUTO_FATURA @MEIOS_PAGAMENTOS
Feature: Meios de Pagamentos -- CADASTRO_DÉBITO_AUTO_FATURA

Background: 
	Given inicializo o 'Relatorio de Dados'
	When clico o numero do telefone da 'Ura'
	
@URA0306
Scenario: URA0306-CadastroemDebitoAutomatico_Fatura_Faturaemdebitoautomatico_RF_FRASEOLOGIA_Private

	And estou indo ao menu principal Private ou Select Fraseologia
	And um dos textos "pagamento;boleto;fatura;atendimento" for validado, com o tempo de execução "26000" em milissegundos
	And clico na opcao do menu: "1"
	And um dos textos "título;fatura;transferências;cartão de crédito" for validado, com o tempo de execução "18000" em milissegundos
	And clico na opcao do menu: "6"
	And um dos textos "débito automático;investimentos;débito" for validado, com o tempo de execução "18000" em milissegundos
	And clico na opcao do menu: "1"
	Then um dos textos "cadastrar suas contas como de água luz telefone no débito automático;luz telefone no débito automático;débito automático" for validado, com o tempo de execução "25000" em milissegundos