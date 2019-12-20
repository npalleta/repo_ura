@PGT_TRIBUTOS_IPVA_INVÁLIDO @PAGAMENTOS
Feature: Pagamento -- PGT_TRIBUTOS_IPVA_INVÁLIDO

Background: 
	Given inicializo o 'Relatorio de Dados'
	When clico o numero do telefone da 'Ura'
	
@URA0891
Scenario: URA0891-Pagamentos_Tríbutos_PagamentodeIPVA_digitaronúmerodoRenavamincorreto_Modelonovosenha6dígitos_SegmentoExclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1" 
	And clico na opcao do menu transacional: "5"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos 
	And clico na opcao do menu transacional: "2"
	And clico nos numeros do Renavam transacional
	Then um dos textos "preciso cadastrar o renavam do veículo;preciso cadastrar;esse cadastro é possível" for validado, com o tempo de execução "20000" em milissegundos
	
@URA0892
Scenario: URA0892-Pagamentos_Tríbutos_PagamentodeIPVA_digitaronúmerodoRenavamincorreto_Modelonovosenha6dígitos_SegmentoClássico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1" 
	And clico na opcao do menu transacional: "5"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos 
	And clico na opcao do menu transacional: "2"
	And clico nos numeros do Renavam transacional
	Then um dos textos "preciso cadastrar o renavam do veículo;preciso cadastrar;esse cadastro é possível" for validado, com o tempo de execução "20000" em milissegundos
	
@URA0893
Scenario: URA0893-Pagamentos_Tríbutos_PagamentodeIPVA_Renavamnãocadastrado_Modelonovosenha6dígitos_SegmentoClássico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "5"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "2"
	And clico nos numeros do Renavam transacional
	Then um dos textos "preciso cadastrar o renavam do veículo;preciso cadastrar;esse cadastro é possível" for validado, com o tempo de execução "20000" em milissegundos
	
@URA0897
Scenario: URA0897-Pagamentos_Tríbutos_PagamentodeIPVA_Renavamsemdébitoatrelado_Renavamnãocadastrado_Modelonovosenha6dígitos_SegmentoExclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "5"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "2"
	And clico nos numeros do Renavam transacional
	Then um dos textos "preciso cadastrar o renavam do veículo;preciso cadastrar;esse cadastro é possível" for validado, com o tempo de execução "20000" em milissegundos
	
@URA0951
Scenario: URA0951-Pagamentos_Tríbutos_PagamentodeIPVA_Renavamnãocadastrado_Modeloantigosenha4dígitos_SegmentoExclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "5"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "2"
	And clico nos numeros do Renavam transacional
	Then um dos textos "preciso cadastrar o renavam do veículo;preciso cadastrar;esse cadastro é possível" for validado, com o tempo de execução "20000" em milissegundos
	
@URA0954
Scenario: URA0954-Pagamentos_Tríbutos_PagamentodeIPVA_PagamentoparaumRenavamsemdébitoatrelado-Renavamnãocadastrado_Modeloantigosenha4dígitos_SegmentoClássico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "5"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "2"
	And clico nos numeros do Renavam transacional
	Then um dos textos "preciso cadastrar o renavam do veículo;preciso cadastrar;esse cadastro é possível" for validado, com o tempo de execução "20000" em milissegundos
	
@URA0951
Scenario: URA0951-Pagamentos_Tríbutos_PagamentodeIPVA_Renavamnãocadastrado_Modeloantigosenha4dígitos_SegmentoExclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "5"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "2"
	And clico nos numeros do Renavam transacional
	Then um dos textos "preciso cadastrar o renavam do veículo;preciso cadastrar;esse cadastro é possível" for validado, com o tempo de execução "20000" em milissegundos
	
@URA1023
Scenario: URA1023-Pagamentos_Tributos_PagamentodeIPVA_digitaronumerodoRenavamincorreto_ModeloNovoSenha6Digitos_Exclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1" 
	And clico na opcao do menu transacional: "5"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos 
	And clico na opcao do menu transacional: "2"
	And clico nos numeros do Renavam transacional
	Then um dos textos "preciso cadastrar o renavam do veículo;preciso cadastrar;esse cadastro é possível" for validado, com o tempo de execução "20000" em milissegundos

@URA1081
Scenario: URA1081-Pagamentos_Tríbutos_PagamentodeIPVA_umRenavamsemdébitoatrelado-Renavamnãocadastrado_Modelonovosenha6dígitos_SegmentoClássico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "5"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "2"
	And clico nos numeros do Renavam transacional
	Then um dos textos "preciso cadastrar o renavam do veículo;preciso cadastrar;esse cadastro é possível" for validado, com o tempo de execução "20000" em milissegundos
	
@URA1084
Scenario: URA1084-Pagamentos_Tríbutos_PagamentodeIPVA_umRenavamsemdébitoatrelado-Renavamnãocadastrado_Modeloantigosenha4dígitos_SegmentoExclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "5"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "2"
	And clico nos numeros do Renavam transacional
	Then um dos textos "preciso cadastrar o renavam do veículo;preciso cadastrar;esse cadastro é possível" for validado, com o tempo de execução "20000" em milissegundos
	
@URA1092
Scenario: URA1092-Pagamentos_Tríbutos_PagamentodeIPVA_RenavamnãocadastradoDigital_Modeloantigosenha4dígitos_SegmentoSelect

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "5"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "2"
	And clico nos numeros do Renavam transacional
	Then um dos textos "preciso cadastrar o renavam do veículo;preciso cadastrar;esse cadastro é possível" for validado, com o tempo de execução "20000" em milissegundos

@URA1022
Scenario: URA1022-Pagamentos_Tríbutos_PagamentodeIPVA_RenavamdigitaronúmerodoRenavamincorreto_FRASEOLOGIA_SegmentoPrivate

	And estou indo ao menu principal Private ou Select Fraseologia
	And um dos textos "pagamento;boleto;fatura;atendimento" for validado, com o tempo de execução "26000" em milissegundos
	And clico na opcao do menu: "1" 
	And um dos textos "títulos;fatura;transferências;pagamento" for validado, com o tempo de execução "20000" em milissegundos
	And clico na opcao do menu: "5"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos 
	And clico na opcao do menu: "2"
	And um dos textos "digite o número do renavam do veículo;renavam do veículo;renavam" for validado, com o tempo de execução "25000" em milissegundos
	And clico nos numeros do Renavam transacional
	Then um dos textos "preciso cadastrar o renavam do veículo;preciso cadastrar;esse cadastro é possível" for validado, com o tempo de execução "20000" em milissegundos	
	
@URA1025
Scenario: URA1025-Pagamentos_Tríbutos_PagamentodeIPVA_Renavamnãocadastrado_FRASEOLOGIA_SegmentoPrivate

	And estou indo ao menu principal Private ou Select Fraseologia
	And um dos textos "pagamento;boleto;fatura;atendimento" for validado, com o tempo de execução "26000" em milissegundos
	And clico na opcao do menu: "1"
	And um dos textos "títulos;fatura;transferências;pagamento" for validado, com o tempo de execução "20000" em milissegundos
	And clico na opcao do menu: "5"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu: "2"
	And um dos textos "digite o número do renavam do veículo;renavam do veículo;renavam" for validado, com o tempo de execução "25000" em milissegundos
	And clico nos numeros do Renavam transacional
	Then um dos textos "preciso cadastrar o renavam do veículo;preciso cadastrar;esse cadastro é possível" for validado, com o tempo de execução "20000" em milissegundos
	
@URA1026
Scenario: URA1026-Pagamentos_Tributos_PagamentodeIPVA_Renavamnaocadastrado_FRASEOLOGIA_SegmentoSelect

	And estou indo ao menu principal Private ou Select Fraseologia
	And um dos textos "pagamento;boleto;fatura;atendimento" for validado, com o tempo de execução "26000" em milissegundos
	And clico na opcao do menu: "1" 
	And um dos textos "títulos;fatura;transferências;pagamento" for validado, com o tempo de execução "20000" em milissegundos
	And clico na opcao do menu: "5"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos 
	And clico na opcao do menu: "2"
	And um dos textos "digite o número do renavam do veículo;renavam do veículo;renavam" for validado, com o tempo de execução "25000" em milissegundos
	And clico nos numeros do Renavam transacional
	Then um dos textos "preciso cadastrar o renavam do veículo;preciso cadastrar;esse cadastro é possível" for validado, com o tempo de execução "20000" em milissegundos
	
@URA1031
Scenario: URA1031-Pagamentos_Tríbutos_PagamentodeIPVA_umRenavamsemdébitoatrelado_Renavamnãocadastrado_FRASEOLOGIA_SegmentoPrivate

	And estou indo ao menu principal Private ou Select Fraseologia
	And um dos textos "pagamento;boleto;fatura;atendimento" for validado, com o tempo de execução "26000" em milissegundos
	And clico na opcao do menu: "1"
	And um dos textos "títulos;fatura;transferências;pagamento" for validado, com o tempo de execução "20000" em milissegundos
	And clico na opcao do menu: "5"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu: "2"
	And um dos textos "digite o número do renavam do veículo;renavam do veículo;renavam" for validado, com o tempo de execução "25000" em milissegundos
	And clico nos numeros do Renavam transacional
	Then um dos textos "preciso cadastrar o renavam do veículo;preciso cadastrar;esse cadastro é possível" for validado, com o tempo de execução "20000" em milissegundos
	
@URA1032
Scenario: URA1032-Pagamentos_Tríbutos_PagamentodeIPVA_umRenavamsemdébitoatrelado_Renavamnãocadastrado_FRASEOLOGIA_SegmentoSelect

	And estou indo ao menu principal Private ou Select Fraseologia
	And um dos textos "pagamento;boleto;fatura;atendimento" for validado, com o tempo de execução "26000" em milissegundos
	And clico na opcao do menu: "1"
	And um dos textos "títulos;fatura;transferências;pagamento" for validado, com o tempo de execução "20000" em milissegundos
	And clico na opcao do menu: "5"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu: "2"
	And um dos textos "digite o número do renavam do veículo;renavam do veículo;renavam" for validado, com o tempo de execução "25000" em milissegundos
	And clico nos numeros do Renavam transacional
	Then um dos textos "preciso cadastrar o renavam do veículo;preciso cadastrar;esse cadastro é possível" for validado, com o tempo de execução "20000" em milissegundos