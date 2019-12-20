@CONSULTA_MENU_FOPA @FOLHA_PAGAMENTO
Feature: Folha de Pagamento -- CONSULTA_MENU_FOPA

Background: 
	Given inicializo o 'Relatorio de Dados'
	When clico o numero do telefone da 'Ura'

@URA0805
Scenario: URA0805-Folhadepagamento_Menu_Consulta_ConsultarmenuFopa_clienteapenascomprodutofolhadepagamento_FRASEOLOGIA_Classico

	And estou na opcao do menu do ura com o TEXTO e ID " você está", com o tempo total de execução de "25000" milissegundos
	And clico no botao 'teclado' e clico nos numeros do 'CPF'
	And estou na opcao do menu do ura com o texto ' desbloquear', com o tempo total de execução de "25000" milissegundos
	Then um dos textos "pagamentos de boletos;sobre transferências;atendimento sobre cartões;investimentos" for validado, com o tempo de execução "25000" em milissegundos

@URA0810
Scenario: URA0810-Folhadepagamento_Menu_Consulta_ConsultarmenuFopa_clientesemprodutofolhadepagamento_FRASEOLOGIA_Classico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And um dos textos "conta;recado;transformar;crianças" for validado, com o tempo de execução "26000" em milissegundos
	And clico na opcao do menu: "3"
	Then um dos textos "saldo detalhado;informações da sua conta;resgate ou como abrir" for validado, com o tempo de execução "27000" em milissegundos