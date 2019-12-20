@PGT_TRIBUTOS_IPVA_INVÁLIDO @PAGAMENTOS
Feature: Pagamento -- PGT_TRIBUTOS_DPVAT_INVÁLIDO

Background: 
	Given inicializo o 'Relatorio de Dados'
	When clico o numero do telefone da 'Ura'
	
@URA0895
Scenario: URA0895-Pagamentos_Tríbutos_PagamentodeDPVAT_Renavamnãocadastrado_Modelonovosenha6dígitos_SegmentoExclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "5"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "2"
	And clico nos numeros do Renavam transacional
	Then um dos textos "preciso cadastrar o renavam do veículo;preciso cadastrar;esse cadastro é possível" for validado, com o tempo de execução "20000" em milissegundos
	
@URA0896
Scenario: URA0896-Pagamentos_Tríbutos_PagamentodeDPVAT_Renavamnãocadastrado_Modelonovosenha6dígitos_SegmentoClássico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "5"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "2"
	And clico nos numeros do Renavam transacional
	Then um dos textos "preciso cadastrar o renavam do veículo;preciso cadastrar;esse cadastro é possível" for validado, com o tempo de execução "20000" em milissegundos
	
@URA1079
Scenario: URA1079-Pagamentos_Tríbutos_PagamentodeDPVAT_digitaronúmerodoRenavamincorreto_Modelonovosenha6dígitos_SegmentoClássico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "1" 
	And clico na opcao do menu transacional: "5"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos 
	And clico na opcao do menu transacional: "2"
	And clico nos numeros do Renavam transacional
	Then um dos textos "preciso cadastrar o renavam do veículo;preciso cadastrar;esse cadastro é possível" for validado, com o tempo de execução "20000" em milissegundos	

@URA1028
Scenario: URA1028-Pagamentos_Tríbutos_PagamentodeDPVAT_Renavamnãocadastrado_FRASEOLOGIA_SegmentoPrivate

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
	
@URA1029
Scenario: URA1029-Pagamentos_Tríbutos_PagamentodeDPVAT_Renavamnãocadastrado_FRASEOLOGIA_SegmentoSelect

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

@URA1085
Scenario: URA1085-Pagamentos_Tríbutos_PagamentodeDPVAT_Renavamnãocadastrado_FRASEOLOGIA_SegmentoExclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Fraseologia
	And um dos textos "pagamento;boleto;fatura;atendimento" for validado, com o tempo de execução "26000" em milissegundos
	And clico na opcao do menu: "1"
	And um dos textos "títulos;fatura;transferências;pagamento" for validado, com o tempo de execução "20000" em milissegundos
	And clico na opcao do menu: "5"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu: "2"
	And um dos textos "digite o número do renavam do veículo;renavam do veículo;renavam" for validado, com o tempo de execução "25000" em milissegundos
	And clico nos numeros do Renavam transacional
	Then um dos textos "preciso cadastrar o renavam do veículo;preciso cadastrar;esse cadastro é possível" for validado, com o tempo de execução "20000" em milissegundos