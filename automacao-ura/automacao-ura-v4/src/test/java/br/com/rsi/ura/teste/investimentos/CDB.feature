@CDB @INVESTIMENTOS
Feature: Investimentos -- CDB

Background: 
	Given inicializo o 'Relatorio de Dados'
	When clico o numero do telefone da 'Ura'

@URA1255
Scenario: URA1255-Investimentos_CDB_ConsultadeCDB_Vangogh_FRASEOLOGIA

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Fraseologia
	And um dos textos "pagamento;boleto;fatura;transferência" for validado, com o tempo de execução "25000" em milissegundos
	And clico na opcao do menu: "4"
	And valido a existência da opção de Renegociação no menu Investimentos
	And clico na opcao do menu: "2"
	And um dos textos "cdb;investimentos;previdência;ações" for validado, com o tempo de execução "15000" em milissegundos
	And clico na opcao do menu: "3"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu: "1"
	Then um dos textos "seu saldo em cdb;saldo em;cdb" for validado, com o tempo de execução "20000" em milissegundos
	
@URA1259
Scenario: URA1259-Investimentos_CDB_ConsultadeCDB_Select_FRASEOLOGIA

	And estou indo ao menu principal Private ou Select Fraseologia
	And um dos textos "pagamento;boleto;fatura;transferência" for validado, com o tempo de execução "25000" em milissegundos
	And clico na opcao do menu: "4"
	And valido a existência da opção de Renegociação no menu Investimentos
	And clico na opcao do menu: "2"
	And um dos textos "cdb;investimentos;previdência;ações" for validado, com o tempo de execução "15000" em milissegundos
	And clico na opcao do menu: "3"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu: "1"
	Then um dos textos "seu saldo em cdb;saldo em;cdb" for validado, com o tempo de execução "20000" em milissegundos

@URA1262
Scenario: URA1262-Investimentos_CDB_ConsultadeCDB_Private_FRASEOLOGIA

	And estou indo ao menu principal Private ou Select Fraseologia
	And um dos textos "pagamento;boleto;fatura;transferência" for validado, com o tempo de execução "25000" em milissegundos
	And clico na opcao do menu: "4"
	And valido a existência da opção de Renegociação no menu Investimentos	
	And clico na opcao do menu: "2"
	And um dos textos "cdb;investimentos;previdência;ações" for validado, com o tempo de execução "15000" em milissegundos
	And clico na opcao do menu: "3"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu: "1"
	Then um dos textos "seu saldo em cdb;saldo em;cdb" for validado, com o tempo de execução "20000" em milissegundos