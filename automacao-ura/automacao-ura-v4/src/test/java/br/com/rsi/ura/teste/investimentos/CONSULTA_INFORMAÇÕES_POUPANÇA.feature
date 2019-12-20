@CONSULTA_INFORMAÇÕES_POUPANÇA @INVESTIMENTOS
Feature: Investimentos -- CONSULTA_INFORMAÇÕES_POUPANÇA

Background: 
	Given inicializo o 'Relatorio de Dados'
	When clico o numero do telefone da 'Ura'
	
@URA1104
Scenario: URA1104-Investimentos_Poupanca_Consultadeinformacoessobrepoupanca_Classico_Modelonovosenha6digitos

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "4"
	And valido a existência da opção de Renegociação no menu Investimentos
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "2"
	Then um dos textos "é o melhor investimento;a conta poupança santander;poupança você pode aplicar" for validado, com o tempo de execução "30000" em milissegundos
	
@URA1109
Scenario: URA1109-Investimentos_Poupança_Consultadeinformaçõessobrepoupança_Vangogh_Modelonovosenha6dígitos

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "4"
	And valido a existência da opção de Renegociação no menu Investimentos
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "2"
	Then um dos textos "é o melhor investimento;a conta poupança santander;poupança você pode aplicar" for validado, com o tempo de execução "30000" em milissegundos 
	
@URA1111
Scenario: URA1111-Investimentos_Poupanca_Consultadeinformacoessobrepoupanca_Private_Modelonovosenha6digitos

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "4"
	And valido a existência da opção de Renegociação no menu Investimentos
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "2"
	Then um dos textos "é o melhor investimento;a conta poupança santander;poupança você pode aplicar" for validado, com o tempo de execução "30000" em milissegundos
	
@URA1113
Scenario: URA1113-Investimentos_Poupança_Consultadeinformaçõessobrepoupança_Vangogh_Modeloantigosenha4dígitos

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "4"
	And valido a existência da opção de Renegociação no menu Investimentos
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "2"
	Then um dos textos "é o melhor investimento;a conta poupança santander;poupança você pode aplicar" for validado, com o tempo de execução "30000" em milissegundos
	
@URA1258
Scenario: URA1258-Investimentos_Poupança_Consultadeinformaçõessobrepoupança_Select_Fraseologia

	And estou indo ao menu principal Private ou Select Fraseologia
	And um dos textos "pagamento;saldo;boleto;investimentos;cartão de crédito" for validado, com o tempo de execução "26000" em milissegundos
	And clico na opcao do menu: "4"
	And valido a existência da opção de Renegociação no menu Investimentos
	And clico na opcao do menu: "1"
	And um dos textos "quer investir;sobre poupança;conhecer os seguros;santander oferece" for validado, com o tempo de execução "20000" em milissegundos
	And clico na opcao do menu: "2"
	Then um dos textos "é o melhor investimento;a conta poupança santander;poupança você pode aplicar" for validado, com o tempo de execução "30000" em milissegundos