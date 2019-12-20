@AÇÕES @INVESTIMENTOS
Feature: Investimentos -- AÇÕES

Background: 
	Given inicializo o 'Relatorio de Dados'
	When clico o numero do telefone da 'Ura'

@URA1106
Scenario: URA1106-Investimentos_Acoes_ConsultadeAcoes_Classico_Modelonovosenha6digitos

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "4"
	And valido a existência da opção de Renegociação no menu Investimentos
	And clico na opcao do menu transacional: "2"
	And clico na opcao do menu transacional: "4"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	And digito o RAMAL transacional
	Then um dos textos "transferir;horário de atendimento;ramal" for validado, com o tempo de execução "30000" em milissegundos 

@URA1256
Scenario: URA1256-Investimentos_Ações_ConsultadeAções_ClienteSemAções__Fraseologia_Vangogh

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And um dos textos "pagamento;saldo;boleto;investimentos;cartão de crédito" for validado, com o tempo de execução "26000" em milissegundos
	And clico na opcao do menu transacional: "4"
	And valido a existência da opção de Renegociação no menu Investimentos
	And clico na opcao do menu transacional: "2"
	And um dos textos "investimento;previdência;ações" for validado, com o tempo de execução "20000" em milissegundos
	And clico na opcao do menu transacional: "4"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	And digito o RAMAL transacional
	Then um dos textos "transferir;horário de atendimento;ramal" for validado, com o tempo de execução "30000" em milissegundos

@URA1260
Scenario: URA1260-Investimentos_Acoes_ConsultadeAcoes_Select_FRASEOLOGIA

	And estou indo ao menu principal Private ou Select Fraseologia
	And um dos textos "pagamento;saldo;boleto;investimentos;cartão de crédito" for validado, com o tempo de execução "26000" em milissegundos
	And clico na opcao do menu: "4"
	And valido a existência da opção de Renegociação no menu Investimentos
	And clico na opcao do menu: "2"
	And um dos textos "investimento;previdência;ações" for validado, com o tempo de execução "20000" em milissegundos
	And clico na opcao do menu: "4"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	And digito o RAMAL transacional
	Then um dos textos "vou te transferir;horário de atendimento" for validado, com o tempo de execução "30000" em milissegundos

@URA1263
Scenario: URA1263-Investimentos_Acoes_ConsultadeAcoes_Private_FRASEOLOGIA

	And estou indo ao menu principal Private ou Select Fraseologia
	And um dos textos "pagamento;saldo;boleto;investimentos;cartão de crédito" for validado, com o tempo de execução "26000" em milissegundos
	And clico na opcao do menu: "4"
	And valido a existência da opção de Renegociação no menu Investimentos
	And clico na opcao do menu: "1"
	And um dos textos "investimento;previdência;ações" for validado, com o tempo de execução "20000" em milissegundos
	And clico na opcao do menu: "4"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	And digito o RAMAL transacional
	Then um dos textos "vou te transferir;horário de atendimento" for validado, com o tempo de execução "30000" em milissegundos 