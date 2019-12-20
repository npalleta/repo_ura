@EXTRATO @CONTA_CORRENTE
Feature: Conta Corrente -- EXTRATO

Background: 
	Given inicializo o 'Relatorio de Dados'
	When clico o numero do telefone da 'Ura'
	
@URA0553
Scenario: URA0553-Contacorrente_Extrato_ConsultadeExtrato_Consultarextratodoultimodia_Modelonovosenha6digitos_Vangogh

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "1"
	And estou esperando por "30000" milissegundos
	And clico na opcao do menu transacional: "1"
	Then um dos textos "lançamentos registrados;lançamento registrado" for validado, com o tempo de execução "30000" em milissegundos

@URA0557
Scenario: URA0557-Contacorrente_Extrato_ConsultadeExtrato_Consultarextratoporperiodo_Modelonovosenha6digitos_Vangogh

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "1"
	And estou esperando por "30000" milissegundos
	And clico na opcao do menu transacional: "3"
	And clico nos numeros da 'dataPassada' transacional
	And clico nos numeros da 'dataAtual' transacional
	Then um dos textos "lançamentos registrados;lançamento registrado;período escolhido" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0559
Scenario: URA0559-Contacorrente_Extrato_ConsultadeExtrato_Consultarextratoporperiodo_superiora35dias_Modelonovosenha6digitos_Vangogh

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "11764" milissegundos
	And clico na opcao do menu transacional: "1"
	And estou esperando por "30000" milissegundos
	And clico na opcao do menu transacional: "3"
	And clico nos numeros da 'dataPassada' transacional
	Then estou na opcao do menu do ura com o texto "não está correto", com o tempo total de execução de "25000" milissegundos

@URA0616
Scenario: URA0616-Contacorrente_Extrato_ConsultadeExtrato_Consultarextratodoultimodia_Modelonovosenha6digitos_Select

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "1"
	And estou esperando por "30000" milissegundos
	And clico na opcao do menu transacional: "1"
	Then um dos textos "lançamentos registrados;lançamento registrado" for validado, com o tempo de execução "35000" em milissegundos

@URA0621
Scenario: URA0621-Contacorrente_Extrato_ConsultadeExtrato_Consultarextratoporperiodo_Modelonovosenha6digitos_Select

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "1"
	And estou esperando por "30000" milissegundos
	And clico na opcao do menu transacional: "3"
	And clico nos numeros da 'dataPassada' transacional
	And clico nos numeros da 'dataAtual' transacional
	Then um dos textos "lançamentos registrados;lançamento registrado;período escolhido" for validado, com o tempo de execução "35000" em milissegundos

@URA0623
Scenario: URA0623-Contacorrente_Extrato_ConsultadeExtrato_Consultarextratoporperiodo_superiora35dias_Modelonovosenha6digitos_Select

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "1"
	And estou esperando por "30000" milissegundos
	And clico na opcao do menu transacional: "3"
	And clico nos numeros da 'dataPassada' transacional
	Then estou na opcao do menu do ura com o texto " não está correto", com o tempo total de execução de "25000" milissegundos

@URA0628
Scenario: URA0628-Contacorrente_Extrato_ConsultadeExtrato_Consultarsaldoouvirdetalhadonaopcaoouvirnovamentepelomenuposextrato_Modelonovosenha6digitos_Select

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "1"
	And estou esperando por "30000" milissegundos
	And clico na opcao do menu transacional: "5"
	Then um dos textos "saldo total de conta corrente;conta corrente" for validado, com o tempo de execução "25000" em milissegundos

@URA0678
Scenario: URA0678-Contacorrente_Extrato_ConsultadeExtrato_Consultarextratodoultimodia_Modelonovosenha6digitos_Private

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "1"
	And estou esperando por "30000" milissegundos
	And clico na opcao do menu transacional: "1"
	Then um dos textos "lançamentos registrados;lançamento registrado" for validado, com o tempo de execução "35000" em milissegundos

@URA0682
Scenario: URA0682-Contacorrente_Extrato_ConsultadeExtrato_Consultarextratoporperiodo_Modelonovosenha6digitos_Private

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "1"
	And estou esperando por "30000" milissegundos
	And clico na opcao do menu transacional: "3"
	And clico nos numeros da 'dataPassada' transacional
	And clico nos numeros da 'dataAtual' transacional
	Then um dos textos "lançamentos registrados;lançamento registrado;período escolhido" for validado, com o tempo de execução "35000" em milissegundos

@URA0684	
Scenario: URA0684-Contacorrente_Extrato_ConsultadeExtrato_Consultarextratoporperiodo_superiora35dias_Modelonovosenha6digitos_Private

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "1"
	And estou esperando por "30000" milissegundos
	And clico na opcao do menu transacional: "3"
	And clico nos numeros da 'dataPassada' transacional
	Then estou na opcao do menu do ura com o texto " não está correto", com o tempo total de execução de "25000" milissegundos

@URA0689
Scenario: URA0689-Contacorrente_Extrato_ConsultadeExtrato_Consultarsaldoouvirdetalhadonaopcaoouvirnovamentepelomenuposextrato_Modelonovosenha6digitos_Private

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "1"
	And estou esperando por "30000" milissegundos
	And clico na opcao do menu transacional: "5"
	Then um dos textos "saldo total de conta corrente;conta corrente" for validado, com o tempo de execução "25000" em milissegundos
	
@URA0774
Scenario: URA0774-Contacorrente_Extrato_ConsultadeExtrato_Consultarextratoporperíodo_EmDianãoútil_Modeloantigosenha4dígitos_Private

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "1"
	And estou esperando por "40000" milissegundos
	And clico na opcao do menu transacional: "3"
	And clico nos numeros da 'dataPassada' transacional
	And clico nos numeros da 'dataAtual' transacional
	Then um dos textos "lançamentos registrados;lançamento registrado;período escolhido" for validado, com o tempo de execução "35000" em milissegundos

@URA1168
Scenario: URA1168-ContaCorente_Extrato_Consultaultimos7dias_Vangogh_Modelonovosenha6digitos

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "1"
	And estou esperando por "30000" milissegundos
	And clico na opcao do menu transacional: "2"
	Then um dos textos "lançamentos registrados;lançamento registrado" for validado, com o tempo de execução "35000" em milissegundos
	
@URA1210
Scenario: URA1210-ContaCorente_Extrato_Consultaúltimos7dias_Select_Modelonovosenha6dígitos

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "1"
	And estou esperando por "30000" milissegundos
	And clico na opcao do menu transacional: "2"
	Then um dos textos "lançamentos registrados;lançamento registrado" for validado, com o tempo de execução "35000" em milissegundos

@URA1251
Scenario: URA1251-ContaCorente_Extrato_Consultaultimos7dias_Private_Modelonovosenha6digitos

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "1"
	And estou esperando por "30000" milissegundos
	And clico na opcao do menu transacional: "2"
	Then um dos textos "lançamentos registrados;lançamento registrado" for validado, com o tempo de execução "35000" em milissegundos