@CAPITALIZAÇÃO @INVESTIMENTOS
Feature: Investimentos -- CAPITALIZAÇÃO

Background: 
	Given inicializo o 'Relatorio de Dados'
	When clico o numero do telefone da 'Ura'
	
@URA1108
Scenario: URA1108-Investimentos_Captalizacao_ConsultadeinformacoessobreCapitalizacao_Exclusivo_Modelonovosenha6digitos

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "4"
	And valido a existência da opção de Renegociação no menu Investimentos
	And clico na opcao do menu transacional: "7"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	And digito o RAMAL transacional
	Then um dos textos "transferir;horário de atendimento;ramal" for validado, com o tempo de execução "30000" em milissegundos