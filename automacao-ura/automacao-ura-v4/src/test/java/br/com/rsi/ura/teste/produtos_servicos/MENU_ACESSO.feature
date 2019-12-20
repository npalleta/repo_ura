@MENU_ACESSO @PRODUTOS_SERVIÇOS
Feature: Produtos e Serviços -- MENU_ACESSO

Background: 
	Given inicializo o 'Relatorio de Dados'
	When clico o numero do telefone da 'Ura'
	
@URA1351
Scenario: URA1351-Produtoseservicos_Menudeacesso_Acessoaomenudeprodutos_Classico

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "4"
	Then um dos textos "investimento;previdência;poupança;empréstimo;consignado" for validado, com o tempo de execução "40000" em milissegundos
