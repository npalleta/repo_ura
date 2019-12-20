@SEGURO_VIDA @SEGUROS
Feature: Seguros -- SEGURO_VIDA

Background: 
	Given inicializo o 'Relatorio de Dados'
	When clico o numero do telefone da 'Ura'
	
@URA1386
Scenario: URA1386-Seguros_Vida_Informacoesgerais_ConsultaInformacoes_Exclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "4"
	And clico na opcao do menu transacional: "4"
	And clico na opcao do menu transacional: "3"
	And clico na opcao do menu transacional: "3"
	And digito o RAMAL transacional
	#Dia útil: 'vou te transferir'-- Mas em fim de semana: 'horário de atendimento'
	Then um dos textos "vou te transferir;horário de atendimento" for validado, com o tempo de execução "30000" em milissegundos

@URA1387
Scenario: URA1387-Seguros_Vida_Assistencia24horas_ConsultaAssistencia24horas_Classico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "4"
	And clico na opcao do menu transacional: "4"
	And clico na opcao do menu transacional: "3" 
	And clico na opcao do menu transacional: "4"
	#Dia útil: 'vou te transferir'-- Mas em fim de semana: 'horário de atendimento'
	And digito o RAMAL transacional
	Then um dos textos "vou te transferir;horário de atendimento" for validado, com o tempo de execução "30000" em milissegundos