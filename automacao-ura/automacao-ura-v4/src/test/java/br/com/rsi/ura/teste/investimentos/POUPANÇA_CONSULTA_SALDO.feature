@POUPANÇA_CONSULTA_SALDO @INVESTIMENTOS
Feature: Investimentos -- POUPANÇA_CONSULTA_SALDO 

Background: 
	Given inicializo o 'Relatorio de Dados'
	When clico o numero do telefone da 'Ura'
	
@URA1131
Scenario: URA1131-Investimentos_Poupanca_ConsultadeSaldo_clientecomcontapoupancaesaldosuperioraR$1000_Vangogh_Modelonovosenha6digitos

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "4"
	And valido a existência da opção de Renegociação no menu Investimentos
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' poupança ' verificando se tem mais de uma conta poupanca, com o tempo total de execução de "15000" milissegundos
	And clico na opcao do menu transacional: "5"	
	Then um dos textos "saldo atual;regra nova;total disponível;saldo atual da conta poupança;saldo total" for validado, com o tempo de execução "25000" em milissegundos
	
@URA1132
Scenario: URA1132-Investimentos_Poupanca_ConsultadeSaldo_clientecomcontapoupancaesaldoinferioraR$1000_Vangogh_Modelonovosenha6digitos

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "4"
	And valido a existência da opção de Renegociação no menu Investimentos
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' poupança ' verificando se tem mais de uma conta poupanca, com o tempo total de execução de "20000" milissegundos
	And clico na opcao do menu transacional: "5"
	Then um dos textos "saldo atual;regra nova;total disponível;saldo atual da conta poupança;saldo total" for validado, com o tempo de execução "25000" em milissegundos
	
@URA1148
Scenario: URA1148-Investimentos_Poupança_Consultadesaldo_clientecorrentistaecomumacontapoupança_Vangogh_Modelonovosenha6dígitos

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "4"
	And valido a existência da opção de Renegociação no menu Investimentos
	And clico na opcao do menu transacional: "3"
	And clico na opcao do menu transacional: "5"
	Then um dos textos "saldo atual;regra nova;total disponível;saldo atual da conta poupança;saldo total" for validado, com o tempo de execução "25000" em milissegundos
	
@URA1173
Scenario: URA1173-Investimentos_Poupanca_ConsultadeSaldo_clientecomcontapoupancaesaldosuperioraR$1000_Select_Modelonovosenha6digitos

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "4"
	And valido a existência da opção de Renegociação no menu Investimentos
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' poupança ' verificando se tem mais de uma conta poupanca, com o tempo total de execução de "20000" milissegundos
	And clico na opcao do menu transacional: "5"
	Then um dos textos "saldo atual;regra nova;total disponível;saldo atual da conta poupança;saldo total" for validado, com o tempo de execução "25000" em milissegundos
	
@URA1174
Scenario: URA1174-Investimentos_Poupanca_ConsultadeSaldo_clientecomcontapoupancaesaldoinferioraR$1000_Select_Modelonovosenha6digitos

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "4"
	And valido a existência da opção de Renegociação no menu Investimentos
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' poupança ' verificando se tem mais de uma conta poupanca, com o tempo total de execução de "20000" milissegundos
	And clico na opcao do menu transacional: "5"
	Then um dos textos "saldo atual;regra nova;total disponível;saldo atual da conta poupança;saldo total" for validado, com o tempo de execução "25000" em milissegundos
	
@URA1190
Scenario: URA1190-Investimentos_Poupança_Consultadesaldo_clientecorrentistaecomumacontapoupança_Select_Modelonovosenha6dígitos

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "4"
	And valido a existência da opção de Renegociação no menu Investimentos
	And clico na opcao do menu transacional: "3"
	And clico na opcao do menu transacional: "5"	
	Then um dos textos "saldo atual;regra nova;total disponível;saldo atual da conta poupança;saldo total" for validado, com o tempo de execução "25000" em milissegundos
	
@URA1214
Scenario: URA1214-Investimentos_Poupanca_ConsultadeSaldo_clientecomcontapoupancaesaldosuperioraR$1000_Private_Modelonovosenha6digitos

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "4"
	And valido a existência da opção de Renegociação no menu Investimentos
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' poupança ' verificando se tem mais de uma conta poupanca, com o tempo total de execução de "20000" milissegundos
	And clico na opcao do menu transacional: "5"	
	Then um dos textos "saldo atual;regra nova;total disponível;saldo atual da conta poupança;saldo total" for validado, com o tempo de execução "25000" em milissegundos
	
@URA1215
Scenario: URA1215-Investimentos_Poupanca_ConsultadeSaldo_clientecomcontapoupancaesaldoinferioraR$1000_Private_Modelonovosenha6digitos

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "4"
	And valido a existência da opção de Renegociação no menu Investimentos
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' poupança ' verificando se tem mais de uma conta poupanca, com o tempo total de execução de "20000" milissegundos
	And clico na opcao do menu transacional: "5"
	Then um dos textos "saldo atual;regra nova;total disponível;saldo atual da conta poupança;saldo total" for validado, com o tempo de execução "25000" em milissegundos
	
@URA1231
Scenario: URA1231-Investimentos_Poupança_Consultadesaldo_clientecorrentistaecomumacontapoupança_Private_Modelonovosenha6dígitos

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "4"
	And valido a existência da opção de Renegociação no menu Investimentos
	And clico na opcao do menu transacional: "3"
	And clico na opcao do menu transacional: "5"
	Then um dos textos "saldo atual;regra nova;total disponível;saldo atual da conta poupança;saldo total" for validado, com o tempo de execução "25000" em milissegundos
	
@URA1265
Scenario: URA1265-Investimentos_Poupanca_ConsultadeSaldo_clientecomcontapoupancaesaldosuperioraR$1000_Vangogh_FRASEOLOGIA

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Fraseologia
	And um dos textos "pagamento;conta;saldo" for validado, com o tempo de execução "26000" em milissegundos
	And clico na opcao do menu: "4"
	And valido a existência da opção de Renegociação no menu Investimentos
	And clico na opcao do menu: "3"
	And estou na opcao do menu do ura com o texto ' poupança ' verificando se tem mais de uma conta poupanca, com o tempo total de execução de "20000" milissegundos
	And clico na opcao do menu: "5"
	Then um dos textos "saldo atual;regra nova;total disponível;saldo atual da conta poupança;saldo total" for validado, com o tempo de execução "25000" em milissegundos
	
@URA1266
Scenario: URA1266-Investimentos_Poupanca_ConsultadeSaldo_clientecomcontapoupancaesaldoinferioraR$1000_Vangogh_FRASEOLOGIA

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Fraseologia
	And um dos textos "pagamento;conta;saldo" for validado, com o tempo de execução "26000" em milissegundos
	And clico na opcao do menu: "4"
	And valido a existência da opção de Renegociação no menu Investimentos
	And clico na opcao do menu: "3"
	And estou na opcao do menu do ura com o texto ' poupança ' verificando se tem mais de uma conta poupanca, com o tempo total de execução de "20000" milissegundos
	And clico na opcao do menu: "5"
	Then um dos textos "saldo atual;regra nova;total disponível;saldo atual da conta poupança;saldo total" for validado, com o tempo de execução "25000" em milissegundos
	
@URA1271
Scenario: URA1271-Investimentos_Poupanca_ConsultadeSaldo_clientecomcontapoupancaesaldosuperioraR$1000_Select_FRASEOLOGIA

	And estou indo ao menu principal Private ou Select Fraseologia
	And um dos textos "pagamento;conta;saldo" for validado, com o tempo de execução "26000" em milissegundos
	And clico na opcao do menu: "4"
	And valido a existência da opção de Renegociação no menu Investimentos
	And clico na opcao do menu: "3"
	And estou na opcao do menu do ura com o texto ' poupança ' verificando se tem mais de uma conta poupanca, com o tempo total de execução de "20000" milissegundos
	And clico na opcao do menu: "5"
	Then um dos textos "saldo atual;regra nova;total disponível;saldo atual da conta poupança;saldo total" for validado, com o tempo de execução "25000" em milissegundos
	
@URA1272
Scenario: URA1272-Investimentos_Poupanca_ConsultadeSaldo_clientecomcontapoupancaesaldoinferioraR$1000_Select_FRASEOLOGIA
	
	And estou indo ao menu principal Private ou Select Fraseologia
	And um dos textos "pagamento;conta;saldo" for validado, com o tempo de execução "26000" em milissegundos
	And clico na opcao do menu: "4"
	And valido a existência da opção de Renegociação no menu Investimentos
	And clico na opcao do menu: "3"
	And estou na opcao do menu do ura com o texto ' poupança ' verificando se tem mais de uma conta poupanca, com o tempo total de execução de "20000" milissegundos
	And clico na opcao do menu: "5"
	Then um dos textos "saldo atual;regra nova;total disponível;saldo atual da conta poupança;saldo total" for validado, com o tempo de execução "25000" em milissegundos
	
@URA1277
Scenario: URA1277-Investimentos_Poupanca_ConsultadeSaldo_clientecomcontapoupancaesaldosuperioraR$1000_Private_FRASEOLOGIA

	And estou indo ao menu principal Private ou Select Fraseologia
	And um dos textos "pagamento;conta;saldo" for validado, com o tempo de execução "26000" em milissegundos
	And clico na opcao do menu: "4"
	And valido a existência da opção de Renegociação no menu Investimentos
	And clico na opcao do menu: "3"
	And estou na opcao do menu do ura com o texto ' poupança ' verificando se tem mais de uma conta poupanca, com o tempo total de execução de "20000" milissegundos
	And clico na opcao do menu: "5"
	Then um dos textos "saldo atual;regra nova;total disponível;saldo atual da conta poupança;saldo total" for validado, com o tempo de execução "25000" em milissegundos
	
@URA1278
Scenario: URA1278-Investimentos_Poupanca_ConsultadeSaldo_clientecomcontapoupancaesaldoinferioraR$1000_Private_FRASEOLOGIA

	And estou indo ao menu principal Private ou Select Fraseologia
	And um dos textos "pagamento;conta;saldo" for validado, com o tempo de execução "26000" em milissegundos
	And clico na opcao do menu: "4"
	And valido a existência da opção de Renegociação no menu Investimentos
	And clico na opcao do menu: "3"
	And estou na opcao do menu do ura com o texto ' poupança ' verificando se tem mais de uma conta poupanca, com o tempo total de execução de "20000" milissegundos
	And clico na opcao do menu: "5"
	Then um dos textos "saldo atual;regra nova;total disponível;saldo atual da conta poupança;saldo total" for validado, com o tempo de execução "25000" em milissegundos