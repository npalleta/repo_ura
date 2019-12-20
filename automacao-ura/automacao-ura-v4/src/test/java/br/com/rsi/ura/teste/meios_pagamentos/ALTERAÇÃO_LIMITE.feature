@ALTERAÇÃO_LIMITE @MEIOS_PAGAMENTOS
Feature: Meios de Pagamentos -- ALTERAÇÃO_LIMITE

Background: 
	Given inicializo o 'Relatorio de Dados'
	When clico o numero do telefone da 'Ura'
	
@URA0143
Scenario: URA0143-Alteracao_Limite_ClientecomCartaoAdicional_RF_TransacionalConsultivamodelonovodesenha_Classico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "2"
	And estou na opcao de cartões buscando cartão adicional
	And verifico se ha alguma mensagem informativa
	And clico na opcao do menu transacional: "2"
	And clico na opcao do menu transacional: "3"
	And clico na opcao do menu transacional: "1"
	And estou na opção do menu do ura onde e solicitado a data de nascimento com o texto " nascimento ",com tempo total de execução de "16000" milissegundos
	And clico nos três primeiros numeros do 'CPF' transacional
	And clico na opcao do menu transacional: "1"
	And um dos textos "novo limite;pronto;limite do cartão" for validado, com o tempo de execução "22000" em milissegundos
	
@URA0174
Scenario: URA0174-Alteracao_Limite_ClientecomcartaoTitular_RF_TransacionalConsultivamodelonovodesenha_Classico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "2"
	And estou na opcao de cartões indo ao menu principal
	And clico na opcao do menu transacional: "2"
	And clico na opcao do menu transacional: "3"
	And clico na opcao do menu transacional: "1"
	And estou na opção do menu do ura onde e solicitado a data de nascimento com o texto " nascimento ",com tempo total de execução de "16000" milissegundos
	And clico nos três primeiros numeros do 'CPF' transacional
	And clico na opcao do menu transacional: "1"
	And um dos textos "novo limite;pronto;limite do cartão" for validado, com o tempo de execução "22000" em milissegundos
	
@URA0207
Scenario: URA0207-Alteracao_Limite_ClientecomcartaoTitular_RF_TransacionalConsultivamodelonovodesenha_Private

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "2"
	And estou na opcao de cartões indo ao menu principal
	And clico na opcao do menu transacional: "2"
	And clico na opcao do menu transacional: "3"
	And clico na opcao do menu transacional: "1"
	And estou na opção do menu do ura onde e solicitado a data de nascimento com o texto " nascimento ",com tempo total de execução de "16000" milissegundos
	And clico nos três primeiros numeros do 'CPF' transacional
	And clico na opcao do menu transacional: "1"
	And um dos textos "novo limite;pronto;limite do cartão" for validado, com o tempo de execução "22000" em milissegundos
	
@URA0208
Scenario: URA0208-Alteracao_Limite_ClientecomCartaoAdicional_RF_TransacionalConsultivamodelonovodesenha_Private

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "2"
	And estou na opcao de cartões buscando cartão adicional
	And verifico se ha alguma mensagem informativa
	And clico na opcao do menu transacional: "2"
	And clico na opcao do menu transacional: "3"
	And clico na opcao do menu transacional: "1"
	And estou na opção do menu do ura onde e solicitado a data de nascimento com o texto " nascimento ",com tempo total de execução de "16000" milissegundos
	And clico nos três primeiros numeros do 'CPF' transacional
	And clico na opcao do menu transacional: "1"
	And um dos textos "novo limite;pronto;limite do cartão" for validado, com o tempo de execução "22000" em milissegundos
	
@URA0238
Scenario: URA0238-Alteração_Limite_ClientecomCartãoAdicional_RF_TransacionalConsultiva_modeloantigodesenha_Select

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "2"
	And estou na opcao de cartões buscando cartão adicional
	And verifico se ha alguma mensagem informativa
	And clico na opcao do menu transacional: "2"
	And clico na opcao do menu transacional: "3"
	And clico na opcao do menu transacional: "1"
	And estou na opção do menu do ura onde e solicitado a data de nascimento com o texto " nascimento ",com tempo total de execução de "16000" milissegundos
	And clico nos três primeiros numeros do 'CPF' transacional
	And clico na opcao do menu transacional: "1"
	And um dos textos "novo limite;pronto;limite do cartão" for validado, com o tempo de execução "22000" em milissegundos

@URA0326
Scenario: URA0326-Alteracao_Limite_ClientecomCartaoTitular_RF_FRASEOLOGIA_Vangogh

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Fraseologia
	And um dos textos "pagamento;boleto;fatura,transferências" for validado, com o tempo de execução "26000" em milissegundos
	And clico na opcao do menu: "2"
	And estou na opcao de cartões indo ao menu principal
	And clico na opcao do menu: "2"
	And um dos textos "saldo;detalhado;fatura;consultar" for validado, com o tempo de execução "12000" em milissegundos
	And clico na opcao do menu: "3"
	And um dos textos "limite;cartão;crédito;falar" for validado, com o tempo de execução "17000" em milissegundos
	And clico na opcao do menu: "1"
	And estou na opção do menu do ura onde e solicitado a data de nascimento com o texto " nascimento ",com tempo total de execução de "16000" milissegundos
	And estou na opcao do menu do ura com o texto " cpf", com o tempo total de execução de "20000" milissegundos
	And clico nos três primeiros numeros do 'CPF'
	And um dos textos "cartão;final;limite;crédito" for validado, com o tempo de execução "16000" em milissegundos
	And clico na opcao do menu: "1"
	And um dos textos "novo limite;pronto;limite do cartão" for validado, com o tempo de execução "22000" em milissegundos
	
@URA0327
Scenario: URA0327-Alteracao_Limite_ClientecomCartaoAdicional_RF_FRASEOLOGIA_Vangogh

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Fraseologia
	And um dos textos "pagamento;boleto;fatura,transferências" for validado, com o tempo de execução "26000" em milissegundos
	And clico na opcao do menu: "2"
	And estou na opcao de cartões buscando cartão adicional
	And verifico se ha alguma mensagem informativa
	And clico na opcao do menu: "2"
	And um dos textos "saldo;detalhado;fatura;consultar" for validado, com o tempo de execução "12000" em milissegundos
	And clico na opcao do menu: "3"
	And um dos textos "limite;cartão;crédito;falar" for validado, com o tempo de execução "17000" em milissegundos
	And clico na opcao do menu: "1"
	And estou na opção do menu do ura onde e solicitado a data de nascimento com o texto " nascimento ",com tempo total de execução de "16000" milissegundos
	And estou na opcao do menu do ura com o texto " cpf", com o tempo total de execução de "20000" milissegundos
	And clico nos três primeiros numeros do 'CPF'
	And clico na opcao do menu: "1"
	And um dos textos "novo limite;pronto;limite do cartão" for validado, com o tempo de execução "22000" em milissegundos
	
@URA0352
Scenario: URA0352-Alteracao_Limite_ClientecomCartaoTitular_RF_FRASEOLOGIA_Select

	And estou indo ao menu principal Private ou Select Fraseologia
	And um dos textos "pagamento;boleto;fatura,transferências" for validado, com o tempo de execução "26000" em milissegundos
	And clico na opcao do menu: "2"
	And estou na opcao de cartões indo ao menu principal
	And clico na opcao do menu: "2"
	And um dos textos "saldo;detalhado;fatura;consultar" for validado, com o tempo de execução "12000" em milissegundos
	And clico na opcao do menu: "3"
	And um dos textos "limite;cartão;crédito;falar" for validado, com o tempo de execução "17000" em milissegundos
	And clico na opcao do menu: "1"
	And estou na opção do menu do ura onde e solicitado a data de nascimento com o texto " nascimento ",com tempo total de execução de "16000" milissegundos
	And estou na opcao do menu do ura com o texto " cpf", com o tempo total de execução de "20000" milissegundos
	And clico nos três primeiros numeros do 'CPF'
	And um dos textos "cartão;final;limite;crédito" for validado, com o tempo de execução "16000" em milissegundos
	And clico na opcao do menu: "1"
	And um dos textos "novo limite;pronto;limite do cartão" for validado, com o tempo de execução "22000" em milissegundos