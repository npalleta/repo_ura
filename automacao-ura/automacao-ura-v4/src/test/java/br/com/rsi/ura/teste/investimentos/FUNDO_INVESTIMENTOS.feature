@FUNDO_INVESTIMENTOS @INVESTIMENTOS
Feature: Investimentos -- FUNDO_INVESTIMENTOS

Background: 
	Given inicializo o 'Relatorio de Dados'
	When clico o numero do telefone da 'Ura'
	
@URA1115
Scenario: URA1115-Investimentos_Fundodeinvestimentos_ConsultadeFundosdeInvestimentos_foradohorário_Vangogh_Modelonovosenha6dígitos

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "4"
	And valido a existência da opção de Renegociação no menu Investimentos
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	Then um dos textos "saldo líquido total;fundo de ações;saldo de investimento;renda fixa;referenciado" for validado, com o tempo de execução "25000" em milissegundos
	
@URA1116
Scenario: URA1116-Investimentos_Fundodeinvestimentos_ConsultadeFundosdeInvestimentos_dentrodohorario_Vangogh_Modelonovosenha6digitos

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "4"
	And valido a existência da opção de Renegociação no menu Investimentos
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	Then um dos textos "saldo líquido total;fundo de ações;saldo de investimento;renda fixa;referenciado" for validado, com o tempo de execução "25000" em milissegundos

@URA1117
Scenario: URA1117-Investimentos_Fundodeinvestimentos_ConsultadeFundosdeInvestimentos_clientecommaisdeumacontacorrente_Vangogh_Modelonovosenha6dígitos

	And estou na opcao do menu do ura com o TEXTO e ID " você está", com o tempo total de execução de "25000" milissegundos
	And clico no botao 'teclado' e clico nos numeros do 'CPF'
	And estou na opcao do menu ' desbloquear' para cliente que não solicita senha no topo, com o tempo total de execução de "20000" milissegundos
	And clico na opcao do menu transacional: "4"
	And valido a existência da opção de Renegociação no menu Investimentos
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	And clico na 'conta' e 'agencia' transacional
	And estou na opcao do menu do ura com o texto ' desbloquear', com o tempo total de execução de "25000" milissegundos
	And clico nos numeros da senha transacional
	And clico na opcao do menu transacional: "1"
	Then um dos textos "saldo líquido total;fundo de ações;saldo de investimento;renda fixa;referenciado" for validado, com o tempo de execução "25000" em milissegundos

@URA1118
Scenario: URA1118-Investimentos_Fundodeinvestimentos_ConsultadeFundosdeInvestimentos_clientenãopossuiinvestimentos_Vangogh_Modelonovosenha6dígitos

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "4"
	And valido a existência da opção de Renegociação no menu Investimentos
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	Then um dos textos "você não possui investimentos;possui investimentos;não possui" for validado, com o tempo de execução "25000" em milissegundos

@URA1119
Scenario: URA1119-Investimentos_Fundodeinvestimentos_ConsultadeFundosdeInvestimentos_falarcomumAssistente_Vangogh_Modelonovosenha6dígitos

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "4"
	And valido a existência da opção de Renegociação no menu Investimentos
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "2"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	And digito o RAMAL transacional
	Then um dos textos "ramal;transferir;acessores de investimentos" for validado, com o tempo de execução "25000" em milissegundos 
	
@URA1120
Scenario: URA1120-Investimentos_Fundodeinvestimentos_ConsultadeFundosdeInvestimentos_clientecomumacontacorrenteforadohorário_Private_Modelonovosenha6dígitos

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "4"
	And valido a existência da opção de Renegociação no menu Investimentos
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	Then um dos textos "saldo líquido total;fundo de ações;saldo de investimento;renda fixa;referenciado" for validado, com o tempo de execução "25000" em milissegundos
	
@URA1121
Scenario: URA1121-Investimentos_Fundodeinvestimentos_ConsultadeFundosdeInvestimentos_clientecomumacontacorrente_dentrodohorario_Private_Modelonovosenha6digitos

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "4"
	And valido a existência da opção de Renegociação no menu Investimentos
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	Then um dos textos "saldo líquido total;fundo de ações;saldo de investimento;renda fixa;referenciado" for validado, com o tempo de execução "25000" em milissegundos
	
@URA1122
Scenario: URA1122-Investimentos_Fundodeinvestimentos_ConsultadeFundosdeInvestimentos_clientecommaisdeumacontacorrente_dentrodohorário_Private_Modelonovosenha6dígitos

	And estou na opcao do menu do ura com o TEXTO e ID " você está", com o tempo total de execução de "25000" milissegundos
	And clico no botao 'teclado' e clico nos numeros do 'CPF'
	And estou na opcao do menu do ura com o texto ' desbloquear', com o tempo total de execução de "25000" milissegundos
	#Pulando o gerente...
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "4"
	And valido a existência da opção de Renegociação no menu Investimentos
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	And clico na 'conta' e 'agencia' transacional
	And estou na opcao do menu do ura com o texto ' desbloquear', com o tempo total de execução de "25000" milissegundos
	And clico nos numeros da senha transacional
	And clico na opcao do menu transacional: "1"
	Then um dos textos "saldo líquido total;fundo de ações;saldo de investimento;renda fixa;referenciado" for validado, com o tempo de execução "25000" em milissegundos 
	
@URA1123
Scenario: URA1123-Investimentos_Fundodeinvestimentos_ConsultadeFundosdeInvestimentos_clientenãopossuiinvestimentos_Private_Modelonovosenha6dígitos

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "4"
	And valido a existência da opção de Renegociação no menu Investimentos
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	Then um dos textos "você não possui investimentos;possui investimentos;não possui" for validado, com o tempo de execução "25000" em milissegundos
	
@URA1124
Scenario: URA1124-Investimentos_Fundodeinvestimentos_ConsultadeFundosdeInvestimentos_nomenufalarcomumGerente_Private_Modelonovosenha6dígitos

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "4"
	And valido a existência da opção de Renegociação no menu Investimentos
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "2"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	And digito o RAMAL transacional
	Then um dos textos "ramal;transferir;acessores de investimentos" for validado, com o tempo de execução "25000" em milissegundos 
	
@URA1125
Scenario: URA1125-Investimentos_Fundodeinvestimentos_ConsultadeFundosdeInvestimentos_foradohorário_Select_Modelonovosenha6dígitos

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "4"
	And valido a existência da opção de Renegociação no menu Investimentos
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	Then um dos textos "saldo líquido total;fundo de ações;saldo de investimento;renda fixa;referenciado" for validado, com o tempo de execução "25000" em milissegundos

@URA1126
Scenario: URA1126-Investimentos_Fundodeinvestimentos_ConsultadeFundosdeInvestimentos_dentrodohorário_Select_Modelonovosenha6dígitos

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "4"
	And valido a existência da opção de Renegociação no menu Investimentos
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	Then um dos textos "saldo líquido total;fundo de ações;saldo de investimento;renda fixa;referenciado" for validado, com o tempo de execução "25000" em milissegundos 

@URA1127
Scenario: URA1127-Investimentos_Fundodeinvestimentos_ConsultadeFundosdeInvestimentos_clientenãopossuiinvestimentos_Select_Modelonovosenha6dígitos

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "4"
	And valido a existência da opção de Renegociação no menu Investimentos
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	Then um dos textos "você não possui investimentos;possui investimentos;não possui" for validado, com o tempo de execução "25000" em milissegundos 

@URA1129
Scenario: URA1129-Investimentos_Fundodeinvestimentos_ConsultadeFundosdeInvestimentos_emfalarcomumEspecialista_Select_Modelonovosenha6dígitos

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "4"
	And valido a existência da opção de Renegociação no menu Investimentos
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "2"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	And digito o RAMAL transacional
	Then um dos textos "ramal;transferir;acessores de investimentos" for validado, com o tempo de execução "25000" em milissegundos 