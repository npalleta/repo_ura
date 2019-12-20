@POUPANÇA_ABERTURA_CONTA @INVESTIMENTOS
Feature: Investimentos -- POUPANÇA_ABERTURA_CONTA

Background: 
	Given inicializo o 'Relatorio de Dados'
	When clico o numero do telefone da 'Ura'
	
@URA1146
Scenario: URA1146-Investimentos_Poupanca_Aberturadeconta_clientecorrentistacomsaldosuperioraR$1000ecomumacontapoupanca_Vangogh_Modelonovosenha6digitos

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "4"
	And valido a existência da opção de Renegociação no menu Investimentos
	And clico na opcao do menu transacional: "3"
	And clico na opcao do menu transacional: "4"
	And clico na opcao do menu transacional: "1"
	And clico no 'valor' transacional
	And clico na opcao do menu transacional: "1"
	Then um dos textos "nova conta poupança foi criada com sucesso;poupança foi criada com sucesso;criada com sucesso" for validado, com o tempo de execução "25000" em milissegundos

@URA1163
Scenario: URA1163-Investimentos_Poupanca_Aberturadeconta_clientecommultiplascontascorrenteepoupancacomsaldoemCCsuperioraR$1000_Vangogh_Modelonovosenha6digitos

	And estou na opcao do menu do ura com o TEXTO e ID " você está", com o tempo total de execução de "25000" milissegundos
	And clico no botao 'teclado' e clico nos numeros do 'CPF' 
	And estou na opcao do menu ' desbloquear' para cliente que não solicita senha no topo, com o tempo total de execução de "25000" milissegundos
	And clico na opcao do menu transacional: "4"
	And valido a existência da opção de Renegociação no menu Investimentos
	And clico na opcao do menu transacional: "3"
	And clico na 'conta poupança' e 'agencia poupança' transacional
	And estou na opcao do menu do ura com o texto ' desbloquear', com o tempo total de execução de "20000" milissegundos
	And clico nos numeros da senha transacional
	And clico na opcao do menu transacional: "4"
	And clico na opcao do menu transacional: "1"
	And clico no 'valor' transacional
	And clico na opcao do menu transacional: "1"
	Then um dos textos "nova conta poupança foi criada com sucesso;poupança foi criada com sucesso;criada com sucesso" for validado, com o tempo de execução "25000" em milissegundos
	
@URA1188
Scenario: URA1188-Investimentos_Poupanca_Aberturadeconta_clientecorrentistacomsaldosuperioraR$1000ecomumacontapoupanca_Select_Modelonovosenha6digitos

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "4"
	And valido a existência da opção de Renegociação no menu Investimentos
	And clico na opcao do menu transacional: "3"
	And clico na opcao do menu transacional: "4"
	And clico na opcao do menu transacional: "1"
	And clico no 'valor' transacional
	And clico na opcao do menu transacional: "1"
	Then um dos textos "nova conta poupança foi criada com sucesso;poupança foi criada com sucesso;criada com sucesso" for validado, com o tempo de execução "25000" em milissegundos
	
@URA1205
Scenario: URA1205-Investimentos_Poupanca_Aberturadeconta_clientecommultiplascontascorrente_e_poupanca_saldosuperior_R$10_00_Select_Modelonovosenha6digitos

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
	And clico no 'valor' transacional
	And clico na opcao do menu transacional: "1"
	Then um dos textos "nova conta poupança foi criada com sucesso;poupança foi criada com sucesso;criada com sucesso" for validado, com o tempo de execução "25000" em milissegundos
	
@URA1229
Scenario: URA1229-Investimentos_Poupanca_Aberturadeconta_clientecorrentista_saldosuperior_R$10_00_com_1contapoupanca_PRIVATE

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "4"
	And valido a existência da opção de Renegociação no menu Investimentos
	And clico na opcao do menu transacional: "3"
	And clico na opcao do menu transacional: "4"
	And clico na opcao do menu transacional: "1"
	And clico no 'valor' transacional
	And clico na opcao do menu transacional: "1"
	Then um dos textos "nova conta poupança foi criada com sucesso;poupança foi criada com sucesso;criada com sucesso" for validado, com o tempo de execução "25000" em milissegundos
	
@URA1246
Scenario: URA1246-Investimentos_Poupanca_Aberturadeconta_clientecommultiplascontascorrente_e_poupanca_saldoSuperior_R$10_00_PRIVATE

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
	And clico no 'valor' transacional
	And clico na opcao do menu transacional: "1"
	Then um dos textos "nova conta poupança foi criada com sucesso;poupança foi criada com sucesso;criada com sucesso" for validado, com o tempo de execução "25000" em milissegundos
	
@URA1267
Scenario: URA1267-Investimentos_Poupanca_Aberturadeconta_clientecorrentista_saldosuperior_R$10_00_com_1contapoupanca_Vangogh_FRASEOLOGIA

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Fraseologia
	And um dos textos "pagamento;conta;saldo" for validado, com o tempo de execução "26000" em milissegundos
	And clico na opcao do menu: "4"
	And valido a existência da opção de Renegociação no menu Investimentos
	And clico na opcao do menu: "3"
	And um dos textos "extrato da sua conta poupança;aplicação;depósito programado;extrato" for validado, com o tempo de execução "15000" em milissegundos
	And clico na opcao do menu: "4"
	And um dos textos "conta;abertura de uma nova conta poupança;confirmar" for validado, com o tempo de execução "15000" em milissegundos
	And clico na opcao do menu: "1"
	And um dos textos "valor que deseja aplicar;aplicar na abertura;nova conta poupança;valor" for validado, com o tempo de execução "15000" em milissegundos
	And clico no 'valor'
	And um dos textos "aplicar na abertura;deseja aplicar;aplicar" for validado, com o tempo de execução "15000" em milissegundos
	And clico na opcao do menu: "1"
	Then um dos textos "nova conta poupança foi criada com sucesso;poupança foi criada com sucesso;criada com sucesso" for validado, com o tempo de execução "25000" em milissegundos
	
@URA1269
Scenario: URA1269-Investimentos_Poupanca_Aberturadeconta_clientecommultiplascontascorrente_e_poupanca_saldoSuperior_R$10_00_Vangogh_FRASEOLOGIA

	And estou na opcao do menu do ura com o TEXTO e ID " você está", com o tempo total de execução de "25000" milissegundos
	And clico no botao 'teclado' e clico nos numeros do 'CPF' 
	And estou na opcao do menu ' desbloquear' para cliente que não solicita senha no topo, com o tempo total de execução de "20000" milissegundos
	And um dos textos "pagamento;conta;saldo" for validado, com o tempo de execução "26000" em milissegundos
	And clico na opcao do menu: "4"
	And valido a existência da opção de Renegociação no menu Investimentos
	And clico na opcao do menu: "3"
	And clico na 'conta poupança' e 'agencia poupança'
	And estou na opcao do menu do ura com o texto ' desbloquear', com o tempo total de execução de "25000" milissegundos
	And clico nos numeros da senha
	And clico na opcao do menu: "4"
	And um dos textos "conta;abertura de uma nova conta poupança;confirmar" for validado, com o tempo de execução "15000" em milissegundos
	And clico na opcao do menu: "1"
	And um dos textos "valor que deseja aplicar;aplicar na abertura;nova conta poupança;valor" for validado, com o tempo de execução "15000" em milissegundos
	And clico no 'valor'
	And um dos textos "aplicar na abertura;deseja aplicar;aplicar" for validado, com o tempo de execução "15000" em milissegundos
	And clico na opcao do menu: "1"
	Then um dos textos "nova conta poupança foi criada com sucesso;poupança foi criada com sucesso;criada com sucesso" for validado, com o tempo de execução "25000" em milissegundos
	
@URA1273
Scenario: URA1273-Investimentos_Poupanca_Aberturadeconta_clientecorrentistacomsaldosuperioraR$1000ecomumacontapoupanca_Select_FRASEOLOGIA

	And estou indo ao menu principal Private ou Select Fraseologia
	And um dos textos "pagamento;conta;saldo" for validado, com o tempo de execução "26000" em milissegundos
	And clico na opcao do menu: "4"
	And valido a existência da opção de Renegociação no menu Investimentos
	And clico na opcao do menu: "3"
	And um dos textos "extrato da sua conta poupança;aplicação;depósito programado;extrato" for validado, com o tempo de execução "15000" em milissegundos
	And clico na opcao do menu: "4"
	And um dos textos "conta;abertura de uma nova conta poupança;confirmar" for validado, com o tempo de execução "15000" em milissegundos
	And clico na opcao do menu: "1"
	And um dos textos "valor que deseja aplicar;aplicar na abertura;nova conta poupança;valor" for validado, com o tempo de execução "15000" em milissegundos
	And clico no 'valor'
	And um dos textos "aplicar na abertura;deseja aplicar;aplicar" for validado, com o tempo de execução "15000" em milissegundos
	And clico na opcao do menu: "1"
	Then um dos textos "nova conta poupança foi criada com sucesso;poupança foi criada com sucesso;criada com sucesso" for validado, com o tempo de execução "25000" em milissegundos

@URA1275
Scenario: URA1275-Investimentos_Poupanca_Aberturadeconta_clientecommultiplascontascorrenteepoupancacomsaldoemCCsuperioraR$1000_Select_FRASEOLOGIA

	And estou na opcao do menu do ura com o TEXTO e ID " você está", com o tempo total de execução de "25000" milissegundos
	And clico no botao 'teclado' e clico nos numeros do 'CPF' 
	And estou na opcao do menu ' desbloquear' para cliente que não solicita senha no topo, com o tempo total de execução de "25000" milissegundos
	#Pulando o gerente...
	And clico na opcao do menu: "1"
	And um dos textos "pagamento;conta;saldo" for validado, com o tempo de execução "26000" em milissegundos
	And clico na opcao do menu: "4"
	And valido a existência da opção de Renegociação no menu Investimentos
	And clico na opcao do menu: "3"
	And clico na 'conta poupança' e 'agencia poupança'
	And estou na opcao do menu do ura com o texto ' desbloquear', com o tempo total de execução de "25000" milissegundos
	And clico nos numeros da senha
	And clico na opcao do menu: "4"
	And um dos textos "conta;abertura de uma nova conta poupança;confirmar" for validado, com o tempo de execução "15000" em milissegundos
	And clico na opcao do menu: "1"
	And um dos textos "valor que deseja aplicar;aplicar na abertura;nova conta poupança;valor" for validado, com o tempo de execução "15000" em milissegundos
	And clico no 'valor'
	And um dos textos "aplicar na abertura;deseja aplicar;aplicar" for validado, com o tempo de execução "15000" em milissegundos
	And clico na opcao do menu: "1"
	Then um dos textos "nova conta poupança foi criada com sucesso;poupança foi criada com sucesso;criada com sucesso" for validado, com o tempo de execução "25000" em milissegundos
	
@URA1279
Scenario: URA1279-Investimentos_Poupanca_Aberturadeconta_clientecorrentistacomsaldosuperioraR$1000ecomumacontapoupanca_Private_FRASEOLOGIA

	And estou indo ao menu principal Private ou Select Fraseologia
	And um dos textos "pagamento;conta;saldo" for validado, com o tempo de execução "26000" em milissegundos
	And clico na opcao do menu: "4"
	And valido a existência da opção de Renegociação no menu Investimentos
	And clico na opcao do menu: "3"
	And um dos textos "extrato da sua conta poupança;aplicação;depósito programado;extrato" for validado, com o tempo de execução "15000" em milissegundos
	And clico na opcao do menu: "4"
	And um dos textos "conta;abertura de uma nova conta poupança;confirmar" for validado, com o tempo de execução "15000" em milissegundos
	And clico na opcao do menu: "1"
	And um dos textos "valor que deseja aplicar;aplicar na abertura;nova conta poupança;valor" for validado, com o tempo de execução "15000" em milissegundos
	And clico no 'valor'
	And um dos textos "aplicar na abertura;deseja aplicar;aplicar" for validado, com o tempo de execução "15000" em milissegundos
	And clico na opcao do menu: "1"
	Then um dos textos "nova conta poupança foi criada com sucesso;poupança foi criada com sucesso;criada com sucesso" for validado, com o tempo de execução "25000" em milissegundos
	
@URA1281
Scenario: URA1281-Investimentos_Poupanca_Aberturadeconta_clientecommultiplascontascorrenteepoupancacomsaldoemCCsuperioraR$1000_Private_FRASEOLOGIA

	And estou na opcao do menu do ura com o TEXTO e ID " você está", com o tempo total de execução de "25000" milissegundos
	And clico no botao 'teclado' e clico nos numeros do 'CPF' 
	And estou na opcao do menu ' desbloquear' para cliente que não solicita senha no topo, com o tempo total de execução de "25000" milissegundos
	#Pulando o gerente...
	And clico na opcao do menu: "1"
	And um dos textos "pagamento;conta;saldo" for validado, com o tempo de execução "26000" em milissegundos
	And clico na opcao do menu: "4"
	And valido a existência da opção de Renegociação no menu Investimentos
	And clico na opcao do menu: "3"
	And clico na 'conta poupança' e 'agencia poupança'
	And estou na opcao do menu do ura com o texto ' desbloquear', com o tempo total de execução de "25000" milissegundos
	And clico nos numeros da senha
	And clico na opcao do menu: "4"
	And um dos textos "conta;abertura de uma nova conta poupança;confirmar" for validado, com o tempo de execução "15000" em milissegundos
	And clico na opcao do menu: "1"
	And um dos textos "valor que deseja aplicar;aplicar na abertura;nova conta poupança;valor" for validado, com o tempo de execução "15000" em milissegundos
	And clico no 'valor'
	And um dos textos "aplicar na abertura;deseja aplicar;aplicar" for validado, com o tempo de execução "15000" em milissegundos
	And clico na opcao do menu: "1"
	Then um dos textos "nova conta poupança foi criada com sucesso;poupança foi criada com sucesso;criada com sucesso" for validado, com o tempo de execução "25000" em milissegundos