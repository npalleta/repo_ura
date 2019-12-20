@PREVIDÊNCIA @INVESTIMENTOS
Feature: Investimentos -- PREVIDÊNCIA

Background: 
	Given inicializo o 'Relatorio de Dados'
	When clico o numero do telefone da 'Ura'
	
@URA1257
Scenario: URA1257-Investimentos_Previdencia_Consultadeprevidencia_Vangogh_FRASEOLOGIA

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Fraseologia
	And um dos textos "pagamento;conta;saldo" for validado, com o tempo de execução "26000" em milissegundos
	And clico na opcao do menu: "4"
	And valido a existência da opção de Renegociação no menu Investimentos
	And clico na opcao do menu: "2"
	And um dos textos "investimento;previdência;cdb" for validado, com o tempo de execução "15000" em milissegundos
	And clico na opcao do menu: "2"
	And digito o RAMAL transacional
	Then um dos textos "transferir;ramal" for validado, com o tempo de execução "30000" em milissegundos
	
@URA1261
Scenario: URA1261-Investimentos_Previdencia_Consultadeprevidencia_Select_FRASEOLOGIA

	And estou indo ao menu principal Private ou Select Fraseologia
	And um dos textos "pagamento;conta;saldo" for validado, com o tempo de execução "26000" em milissegundos
	And clico na opcao do menu: "4"
	And valido a existência da opção de Renegociação no menu Investimentos
	And clico na opcao do menu: "2"
	And um dos textos "investimento;previdência;cdb" for validado, com o tempo de execução "15000" em milissegundos
	And clico na opcao do menu: "2"
	And digito o RAMAL transacional
	Then um dos textos "transferir;ramal" for validado, com o tempo de execução "30000" em milissegundos

@URA1264
Scenario: URA1264-Investimentos_Previdencia_Consultadeprevidencia_Private_FRASEOLOGIA

	And estou indo ao menu principal Private ou Select Fraseologia
	And um dos textos "pagamento;conta;saldo" for validado, com o tempo de execução "26000" em milissegundos
	And clico na opcao do menu: "4"
	And valido a existência da opção de Renegociação no menu Investimentos
	And clico na opcao do menu: "2"
	And um dos textos "investimento;previdência;cdb" for validado, com o tempo de execução "15000" em milissegundos
	And clico na opcao do menu: "2"
	And digito o RAMAL transacional
	Then um dos textos "transferir;ramal" for validado, com o tempo de execução "30000" em milissegundos