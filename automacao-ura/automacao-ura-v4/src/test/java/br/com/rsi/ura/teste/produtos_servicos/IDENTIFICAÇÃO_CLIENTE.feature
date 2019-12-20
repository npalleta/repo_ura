@IDENTIFICAÇÃO_CLIENTE @PRODUTOS_SERVIÇOS
Feature: Produtos e Serviços -- IDENTIFICAÇÃO_CLIENTE

Background: 
	Given inicializo o 'Relatorio de Dados'
	When clico o numero do telefone da 'Ura'
	
@URA1345
Scenario: URA1345-Produtoseserviços_IdentificaçãodoCliente_ConsultadeFrasedeDespedida 
 
	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And estou esperando por "200000" milissegundos 
	Then um dos textos "vou precisar desligar;o Santander agradece a sua ligação;desligar" for validado, com o tempo de execução "30000" em milissegundos

@URA1369
Scenario: URA1369-Produtoseservicos_IdentificacaodoCliente_AcessoaURA_Classico

	And estou na opcao do menu do ura com o TEXTO e ID " você está", com o tempo total de execução de "25000" milissegundos
	And clico no botao 'teclado' e clico nos numeros do 'CPF'
	Then estou na opcao do menu do ura com o texto ' desbloquear', com o tempo total de execução de "20000" milissegundos
	
@URA1376
Scenario: URA1376-Produtoseservicos_IdentificacaodoCliente_Alteracaodesenhadeacesso_Exclusivo

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "6"
	And clico na opcao do menu transacional: "2"
	And clico na opcao do menu transacional: "3"
	And estou na opção do menu do ura onde e solicitado a posicao do cartão de segurança " continuar", com o tempo total de execução de "10000" milissegundos
	And estou na opcao alterar senha com confirmação
	Then um dos textos "alterada com sucesso;sucesso" for validado, com o tempo de execução "20000" em milissegundos 