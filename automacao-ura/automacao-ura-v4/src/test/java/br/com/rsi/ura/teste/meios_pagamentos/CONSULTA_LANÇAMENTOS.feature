@CONSULTA_LANÇAMENTOS @MEIOS_PAGAMENTOS
Feature: Meios de Pagamentos -- CONSULTA_LANÇAMENTOS

Background: 
	Given inicializo o 'Relatorio de Dados'
	When clico o numero do telefone da 'Ura'
	
@URA0206
Scenario: URA0206-Consulta_Lancamentos_clientecomlancamentosnoCartao_RF_TransacionalConsultivamodelonovodesenha_Private

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "2"
	And estou na opcao de cartões indo ao menu principal
	And clico na opcao do menu transacional: "2"
	And clico na opcao do menu transacional: "2"
	And clico na opcao do menu transacional: "1"
	And estou na opção do menu do ura onde e solicitado a data de nascimento com o texto " nascimento",com tempo total de execução de "9329" milissegundos
	And clico nos três primeiros numeros do 'CPF'
	And clico na opcao do menu transacional: "3"
	Then um dos textos "listar os lançamentos;pagamento de fatura no valor;lançamento a crédito;lançamentos feitos" for validado, com o tempo de execução "22000" em milissegundos
	
@URA0237
Scenario: URA0237-Consulta_Lancamentos_clientecomlancamentosnoCartao_RF_TransacionalConsultivamodeloantigodesenha_Vangogh

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "2"
	And estou na opcao de cartões indo ao menu principal
	And clico na opcao do menu transacional: "2"
	And clico na opcao do menu transacional: "2"
	And clico na opcao do menu transacional: "1"
	And estou na opção do menu do ura onde e solicitado a data de nascimento com o texto " nascimento",com tempo total de execução de "9329" milissegundos
	And clico nos três primeiros numeros do 'CPF'
	And clico na opcao do menu transacional: "3"
	Then um dos textos "listar os lançamentos;pagamento de fatura no valor;lançamento a crédito;lançamentos feitos" for validado, com o tempo de execução "22000" em milissegundos
	
@URA0351
Scenario: URA0351-Consulta_Lancamentos_clientecomlancamentosnoCartao_RF_FRASEOLOGIA_Select

	And estou indo ao menu principal Private ou Select Fraseologia
	And um dos textos "pagamento;boleto;fatura,transferências" for validado, com o tempo de execução "20000" em milissegundos
	And clico na opcao do menu: "2"
	And estou na opcao de cartões indo ao menu principal
	And clico na opcao do menu: "2"
	And um dos textos "ouvir;saldo;detalhado;fatura" for validado, com o tempo de execução "13000" em milissegundos
	And clico na opcao do menu: "2"
	And um dos textos "saber;lançamentos;fatura;ouvir" for validado, com o tempo de execução "13000" em milissegundos
	And clico na opcao do menu: "1"
	And estou na opção do menu do ura onde e solicitado a data de nascimento com o texto " nascimento",com tempo total de execução de "9329" milissegundos
	And clico nos três primeiros numeros do 'CPF'
	And um dos textos "ouvir;lançamentos;primeira;quinzena" for validado, com o tempo de execução "10000" em milissegundos
	And clico na opcao do menu: "3"
	Then um dos textos "listar os lançamentos;pagamento de fatura no valor;lançamento a crédito;lançamentos feitos" for validado, com o tempo de execução "22000" em milissegundos 