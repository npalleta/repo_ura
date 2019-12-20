@POUPANÇA_ABERTURA_CONTA_SALDO_INFERIOR_10_REAIS @INVESTIMENTOS
Feature: Investimentos -- POUPANÇA_ABERTURA_CONTA_SALDO_INFERIOR_10_REAIS

Background: 
	Given inicializo o 'Relatorio de Dados'
	When clico o numero do telefone da 'Ura'
	
@URA1147
Scenario: URA1147-Investimentos_Poupanca_Aberturadeconta_clientecorrentistacomsaldoInferioraR$1000ecomumacontapoupanca_Vangogh_Modelonovosenha6digitos

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "4"
	And valido a existência da opção de Renegociação no menu Investimentos
	And clico na opcao do menu transacional: "3"
	And clico na opcao do menu transacional: "4"
	And clico na opcao do menu transacional: "1"
	Then um dos textos "você precisa ter no mínimo;ter no mínimo;sem contar o limite" for validado, com o tempo de execução "20000" em milissegundos
	
@URA1164
Scenario: URA1164-Investimentos_Poupanca_Aberturadeconta_clientecommultiplascontascorrente_e_poupanca_comsaldo_inferior_10_Vangogh_Modelonovosenha6digitos

	And estou na opcao do menu do ura com o TEXTO e ID " você está", com o tempo total de execução de "25000" milissegundos
	And clico no botao 'teclado' e clico nos numeros do 'CPF' 
	And estou na opcao do menu ' desbloquear' para cliente que não solicita senha no topo, com o tempo total de execução de "25000" milissegundos
	And clico na opcao do menu transacional: "4"
	And valido a existência da opção de Renegociação no menu Investimentos
	And clico na opcao do menu transacional: "3"
	And clico na 'conta poupança' e 'agencia poupança'
	And estou na opcao do menu do ura com o texto ' desbloquear', com o tempo total de execução de "20000" milissegundos
	And clico nos numeros da senha transacional
	And clico na opcao do menu transacional: "4"
	And clico na opcao do menu transacional: "1"
	Then um dos textos "você precisa ter no mínimo;ter no mínimo;sem contar o limite" for validado, com o tempo de execução "20000" em milissegundos
	
@URA1189
Scenario: URA1189-Investimentos_Poupanca_Aberturadeconta_clientecorrentistacomsaldoInferioraR$10_00_comumacontapoupanca_Select_Modelonovosenha6digitos

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "4"
	And valido a existência da opção de Renegociação no menu Investimentos
	And clico na opcao do menu transacional: "3"
	And clico na opcao do menu transacional: "4"
	And clico na opcao do menu transacional: "1"
	Then um dos textos "você precisa ter no mínimo;ter no mínimo;sem contar o limite" for validado, com o tempo de execução "20000" em milissegundos
	
@URA1206
Scenario: URA1206-Investimentos_Poupanca_Aberturadeconta_clientecommultiplascontascorrente_e_poupanca_saldoinferior_R$10_00_SELECT

	And estou na opcao do menu do ura com o TEXTO e ID " você está", com o tempo total de execução de "25000" milissegundos
	And clico no botao 'teclado' e clico nos numeros do 'CPF' 
	And estou na opcao do menu ' desbloquear' para cliente que não solicita senha no topo, com o tempo total de execução de "25000" milissegundos
	#Pulando o gerente...
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "4"
	And valido a existência da opção de Renegociação no menu Investimentos
	And clico na opcao do menu transacional: "3"
	And clico na 'conta poupança' e 'agencia poupança' transacional
	And estou na opcao do menu do ura com o texto ' desbloquear', com o tempo total de execução de "25000" milissegundos
	And clico nos numeros da senha transacional
	And clico na opcao do menu transacional: "4"
	And clico na opcao do menu transacional: "1"
	Then um dos textos "você precisa ter no mínimo;ter no mínimo;sem contar o limite" for validado, com o tempo de execução "20000" em milissegundos
	
@URA1230
Scenario: URA1230-Investimentos_Poupanca_Aberturadeconta_clientecorrentista_saldoInferior_R$10_00_com_1contapoupanca_PRIVATE

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "4"
	And valido a existência da opção de Renegociação no menu Investimentos
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' poupança ' verificando se tem mais de uma conta poupanca, com o tempo total de execução de "20000" milissegundos
	And clico na opcao do menu transacional: "4"
	And clico na opcao do menu transacional: "1"
	Then um dos textos "você precisa ter no mínimo;ter no mínimo;sem contar o limite" for validado, com o tempo de execução "20000" em milissegundos
	
@URA1247
Scenario: URA1247-Investimentos_Poupanca_Aberturadeconta_clientecommultiplascontascorrente_e_poupanca_saldoInferior_R$10_00_PRIVATE

	And estou na opcao do menu do ura com o TEXTO e ID " você está", com o tempo total de execução de "25000" milissegundos
	And clico no botao 'teclado' e clico nos numeros do 'CPF' 
	And estou na opcao do menu ' desbloquear' para cliente que não solicita senha no topo, com o tempo total de execução de "20000" milissegundos
	#Pulando o gerente...
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "4"
	And valido a existência da opção de Renegociação no menu Investimentos
	And clico na opcao do menu transacional: "3"
	And clico na 'conta poupança' e 'agencia poupança' transacional
	And estou na opcao do menu do ura com o texto ' desbloquear', com o tempo total de execução de "25000" milissegundos
	And clico nos numeros da senha transacional
	And clico na opcao do menu transacional: "4"
	And clico na opcao do menu transacional: "1"
	Then um dos textos "você precisa ter no mínimo;ter no mínimo;sem contar o limite" for validado, com o tempo de execução "20000" em milissegundos
	
@URA1268
Scenario: URA1268-Investimentos_Poupanca_Aberturadeconta_clientecorrentista_saldoInferior_R$10_00_com_1contapoupanca_Vangogh_FRASEOLOGIA

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Fraseologia
	And um dos textos "pagamento;conta;saldo" for validado, com o tempo de execução "26000" em milissegundos
	And clico na opcao do menu: "4"
	And valido a existência da opção de Renegociação no menu Investimentos
	And clico na opcao do menu: "3"
	And um dos textos "extrato da sua conta poupança;aplicação;depósito programado;extrato" for validado, com o tempo de execução "15000" em milissegundos
	And clico na opcao do menu: "4"
	And um dos textos "conta;abertura de uma nova conta poupança;confirmar" for validado, com o tempo de execução "15000" em milissegundos
	And clico na opcao do menu: "1"
	Then um dos textos "você precisa ter no mínimo;ter no mínimo;sem contar o limite" for validado, com o tempo de execução "20000" em milissegundos
	
@URA1270
Scenario: URA1270-Investimentos_Poupanca_Aberturadeconta_clientecommultiplascontascorrenteepoupancacomsaldoemCCinferioraR$1001_Vangogh_FRASEOLOGIA

	And estou na opcao do menu do ura com o TEXTO e ID " você está", com o tempo total de execução de "25000" milissegundos
	And clico no botao 'teclado' e clico nos numeros do 'CPF' 
	And estou na opcao do menu ' desbloquear' para cliente que não solicita senha no topo, com o tempo total de execução de "20000" milissegundos
	And um dos textos "pagamento;conta;saldo" for validado, com o tempo de execução "26000" em milissegundos
	And clico na opcao do menu: "4"
	And valido a existência da opção de Renegociação no menu Investimentos
	And clico na opcao do menu: "3"
	And clico na 'conta poupança' e 'agencia poupança' transacional
	And estou na opcao do menu do ura com o texto ' desbloquear', com o tempo total de execução de "25000" milissegundos
	And clico nos numeros da senha
	And clico na opcao do menu: "4"
	And um dos textos "conta;abertura de uma nova conta poupança;confirmar" for validado, com o tempo de execução "15000" em milissegundos
	And clico na opcao do menu: "1"
	Then um dos textos "você precisa ter no mínimo;ter no mínimo;sem contar o limite" for validado, com o tempo de execução "20000" em milissegundos
	
@URA1274
Scenario: URA1274-Investimentos_Poupanca_Aberturadeconta_clientecorrentistacomsaldoInferioraR$1000ecomumacontapoupanca_Select_FRASEOLOGIA

	And estou indo ao menu principal Private ou Select Fraseologia
	And um dos textos "pagamento;conta;saldo" for validado, com o tempo de execução "26000" em milissegundos
	And clico na opcao do menu: "4"
	And valido a existência da opção de Renegociação no menu Investimentos
	And clico na opcao do menu: "3"
	And estou na opcao do menu do ura com o texto ' poupança ' verificando se tem mais de uma conta poupanca, com o tempo total de execução de "20000" milissegundos
	And clico na opcao do menu: "4"
	And um dos textos "conta;abertura de uma nova conta poupança;confirmar" for validado, com o tempo de execução "15000" em milissegundos
	And clico na opcao do menu: "1"
	Then um dos textos "você precisa ter no mínimo;ter no mínimo;sem contar o limite" for validado, com o tempo de execução "20000" em milissegundos
	
@URA1276
Scenario: URA1276-Investimentos_Poupanca_Aberturadeconta_clientecommultiplascontascorrente_e_poupanca_saldoInferiora_R$10_00_Select_FRASEOLOGIA

	And estou na opcao do menu do ura com o TEXTO e ID " você está", com o tempo total de execução de "25000" milissegundos
	And clico no botao 'teclado' e clico nos numeros do 'CPF' 
	And estou na opcao do menu ' desbloquear' para cliente que não solicita senha no topo, com o tempo total de execução de "25000" milissegundos
	#Pulando o gerente...
	And clico na opcao do menu: "1"
	And um dos textos "pagamento;conta;saldo" for validado, com o tempo de execução "26000" em milissegundos
	And clico na opcao do menu: "4"
	And valido a existência da opção de Renegociação no menu Investimentos
	And clico na opcao do menu: "3"
	And um dos textos "extrato da sua conta poupança;aplicação;depósito programado;extrato" for validado, com o tempo de execução "15000" em milissegundos
	And clico na 'conta poupança' e 'agencia poupança'
	And estou na opcao do menu do ura com o texto ' desbloquear', com o tempo total de execução de "25000" milissegundos
	And clico nos numeros da senha
	And um dos textos "extrato da sua conta poupança;aplicação;depósito programado;extrato" for validado, com o tempo de execução "15000" em milissegundos
	And clico na opcao do menu: "4"
	And um dos textos "confirmar a abertura;você não quer confirmar;confirmar" for validado, com o tempo de execução "15000" em milissegundos
	And clico na opcao do menu: "1"
	Then um dos textos "você precisa ter no mínimo;ter no mínimo;sem contar o limite" for validado, com o tempo de execução "20000" em milissegundos
	
@URA1280
Scenario: URA1280-Investimentos_Poupanca_Aberturadeconta_clientecorrentistacomsaldoInferioraR$1000ecomumacontapoupanca_Private_FRASEOLOGIA

	And estou indo ao menu principal Private ou Select Fraseologia
	And um dos textos "pagamento;conta;saldo" for validado, com o tempo de execução "26000" em milissegundos
	And clico na opcao do menu: "4"
	And valido a existência da opção de Renegociação no menu Investimentos
	And clico na opcao do menu: "3"
	And um dos textos "extrato da sua conta poupança;aplicação;depósito programado;extrato" for validado, com o tempo de execução "15000" em milissegundos
	And clico na opcao do menu: "4"
	And um dos textos "confirmar a abertura;você não quer confirmar;confirmar" for validado, com o tempo de execução "15000" em milissegundos
	And clico na opcao do menu: "1"
	Then um dos textos "você precisa ter no mínimo;ter no mínimo;sem contar o limite" for validado, com o tempo de execução "20000" em milissegundos
	
@URA1282
Scenario: URA1282-Investimentos_Poupanca_Aberturadeconta_clientecommultiplascontascorrenteepoupancacomsaldoemCCinferioraR$1001_Private_FRASEOLOGIA

	And estou na opcao do menu do ura com o TEXTO e ID " você está", com o tempo total de execução de "25000" milissegundos
	And clico no botao 'teclado' e clico nos numeros do 'CPF' 
	And estou na opcao do menu ' desbloquear' para cliente que não solicita senha no topo, com o tempo total de execução de "10000" milissegundos
	#Pulando o gerente...
	And clico na opcao do menu: "1"
	And um dos textos "pagamento;conta;saldo" for validado, com o tempo de execução "26000" em milissegundos
	And clico na opcao do menu: "4"
	And valido a existência da opção de Renegociação no menu Investimentos
	And clico na opcao do menu: "3"
	And clico na 'conta poupança' e 'agencia poupança'
	And estou na opcao do menu do ura com o texto ' desbloquear', com o tempo total de execução de "20000" milissegundos
	And clico nos numeros da senha
	And um dos textos "extrato da sua conta poupança;aplicação;depósito programado;extrato" for validado, com o tempo de execução "15000" em milissegundos
	And clico na opcao do menu: "4"
	And um dos textos "confirmar a abertura;você não quer confirmar;confirmar" for validado, com o tempo de execução "15000" em milissegundos
	And clico na opcao do menu: "1"
	Then um dos textos "você precisa ter no mínimo;ter no mínimo;sem contar o limite" for validado, com o tempo de execução "20000" em milissegundos