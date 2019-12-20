@MENU @CONTA_CORRENTE
Feature: Conta Corrente -- MENU

Background: 
	Given inicializo o 'Relatorio de Dados'
	When clico o numero do telefone da 'Ura'

@URA0575
Scenario: URA0575-Contacorrente_Menu_Consultamenuoutrosassuntos_Consultarmenuoutrosassuntos_clientecommaisdeumaconta_Modelonovosenha6dígitos_Vangogh

	And estou na opcao do menu do ura com o TEXTO e ID " você está", com o tempo total de execução de "25000" milissegundos
	And clico no botao 'teclado' e clico nos numeros do 'CPF'
	And estou na opcao do menu ' desbloquear' para cliente que não solicita senha no topo, com o tempo total de execução de "25000" milissegundos
	And clico na opcao do menu transacional: "3"
	And clico na 'conta' e 'agencia' transacional
	And estou na opcao do menu do ura com o texto ' desbloquear', com o tempo total de execução de "25000" milissegundos
	And clico nos numeros da senha transacional
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "1"
	And estou esperando por "30000" milissegundos
	And clico na opcao do menu transacional: "4"
	And clico na opcao do menu transacional: "3"
	Then um dos textos "estorno ou débito;débitos não reconhecidos;dúvidas ou dificuldades;problemas no caixa eletrônico;outra conta corrente" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0576
Scenario: URA0576-Contacorrente_Menu_Consultamenuoutrosassuntos_Consultarmenuoutrosassuntos_clientecomapenasumaconta_Modelonovosenha6dígitos_Vangogh

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional	
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "1"
	And estou esperando por "30000" milissegundos
	And clico na opcao do menu transacional: "4"
	And clico na opcao do menu transacional: "3"
	Then um dos textos "estorno ou débito;débitos não reconhecidos;dúvidas ou dificuldades;problemas no caixa eletrônico" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0594
Scenario: URA0594-ContaCorrente_Menu_Consultamenupagamentooutransferencias_AcessarmenupagamentooutransferenciasnaopcaomenuContaCorrente_ModeloNovoSenha6Digitos_Vangogh

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "4"
	Then um dos textos "pagamento de título;pagar a fatura;realizar transferências;reemitir um boleto" for validado, com o tempo de execução "25000" em milissegundos
	
@URA0596
Scenario: URA0596-Contacorrente_Menu_Consultamenuoutrasopções_consultarmenuoutrasopções_clientecomapenasumacontacorrente_Modelonovosenha6dígitos_Vangogh

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "6"
	Then um dos textos "dúvida ou dificuldade;bloqueio de senha;chave de segurança;caixa eletrônico;redefinir a senha" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0599
Scenario: URA0599-Contacorrente_Menu_Consultamenuoutrasopcoes_consultarmenuoutrasopcoesATM_clientecomchequescompensadosconsultaporperiodomesatual_Modelonovosenha6digitos_Vangogh

	And estou indo ao menu principal Classico ou Exclusivo ou Van Gogh Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "6"
	Then um dos textos "dúvida ou dificuldade;bloqueio de senha;chave de segurança;caixa eletrônico;redefinir a senha" for validado, com o tempo de execução "30000" em milissegundos

@URA0601
Scenario: URA0601-Contacorrente_Menu_Consultamenuoutrasopções_consultarmenuoutrasopções_clientecommaisdeumacontacorrente_Modelonovosenha6dígitos_Vangogh

	And estou na opcao do menu do ura com o TEXTO e ID " você está", com o tempo total de execução de "25000" milissegundos
	And clico no botao 'teclado' e clico nos numeros do 'CPF'
	And estou na opcao do menu ' desbloquear' para cliente que não solicita senha no topo, com o tempo total de execução de "25000" milissegundos
	And clico na opcao do menu transacional: "3"
	And clico na 'conta' e 'agencia' transacional
	And estou na opcao do menu do ura com o texto ' desbloquear', com o tempo total de execução de "25000" milissegundos
	And clico nos numeros da senha transacional
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "6"
	Then um dos textos "dúvida ou dificuldade;bloqueio de senha;chave de segurança;caixa eletrônico;redefinir a senha" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0629
Scenario: URA0629-ContaCorrente_Menu_Consultamaisopcoes_Consultarmaisopcoesnomenuposextrato_ModeloNovoSenha6Digitos_Select

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "1"
	And estou esperando por "30000" milissegundos
	And clico na opcao do menu transacional: "4"
	Then um dos textos "limite da conta;alteração cadastral;outros assuntos" for validado, com o tempo de execução "40000" em milissegundos

@URA0635
Scenario: URA0635-ContaCorrente_Menu_Consultamenuoutrasinformacoes_ConsultarmenuoutrasinformacoesdasuaContaCorrente_ModeloNovoSenha6Digitos_Select

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "1"
	And estou esperando por "30000" milissegundos
	And clico na opcao do menu transacional: "4"
	Then um dos textos "limite da conta;alteração cadastral;outros assuntos" for validado, com o tempo de execução "25000" em milissegundos

@URA0638
Scenario: URA0638-Contacorrente_Menu_Consultamenuoutrosassuntos_Consultarmenuoutrosassuntos_clientecomapenasumaconta_Modelonovosenha6dígitos_Select

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "1"
	And estou esperando por "30000" milissegundos
	And clico na opcao do menu transacional: "4"
	And clico na opcao do menu transacional: "3"
	Then um dos textos "estorno ou débito;débitos não reconhecidos;dúvidas ou dificuldades;problemas no caixa eletrônico" for validado, com o tempo de execução "30000" em milissegundos

@URA0656
Scenario: URA0656-Contacorrente_Menu_Acessomenupagamentooutransferencias_Acessarmenupagamentooutransferenciasnomenucontacorrente_Modelonovosenha6digitos_Select

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "4"
	Then um dos textos "pagamento de título;pagar a fatura;realizar transferências;reemitir um boleto" for validado, com o tempo de execução "25000" em milissegundos

@URA0658
Scenario: URA0658-Contacorrente_Menu_Consultamenuoutrasopções_consultarmenuoutrasopções_clientecomapenasumacontacorrente_Modelonovosenha6dígitos_Select

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "20000" milissegundos
	And clico na opcao do menu transacional: "6"
	Then um dos textos "dúvida ou dificuldade;bloqueio de senha;chave de segurança;caixa eletrônico;redefinir a senha" for validado, com o tempo de execução "30000" em milissegundos

@URA0661
Scenario: URA0661-Contacorrente_Menu_Consultamenuoutrasopcoes_consultarmenuoutrasopcoesATM_Modelonovosenha6digitos_Select

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "6"
	Then um dos textos "dúvida ou dificuldade;bloqueio de senha;chave de segurança;caixa eletrônico;redefinir a senha" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0663
Scenario: URA0663-Contacorrente_Menu_Consultamenuoutrasopcoes_consultarmenuoutrasopcoes_clientecommaisdeumacontacorrente_Modelonovosenha6digitos_Select

	And estou na opcao do menu do ura com o TEXTO e ID " você está", com o tempo total de execução de "25000" milissegundos
	And clico no botao 'teclado' e clico nos numeros do 'CPF'
	And estou na opcao do menu ' desbloquear' para cliente que não solicita senha no topo, com o tempo total de execução de "25000" milissegundos
	And clico na opcao do menu transacional: "3"
	And clico na 'conta' e 'agencia' transacional
	And estou na opcao do menu do ura com o texto ' desbloquear', com o tempo total de execução de "25000" milissegundos
	And clico nos numeros da senha transacional
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "6"
	Then um dos textos "dúvida ou dificuldade;bloqueio de senha;chave de segurança;caixa eletrônico;redefinir a senha" for validado, com o tempo de execução "30000" em milissegundos

@URA0690
Scenario: URA0690-ContaCorrente_Menu_Consultamaisopcoes_Consultarmaisopcoesnomenuposextrato_ModeloNovoSenha6Digitos_Private

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "1"
	And estou esperando por "30000" milissegundos
	And clico na opcao do menu transacional: "4"
	Then um dos textos "limite da conta;alteração cadastral;outros assuntos" for validado, com o tempo de execução "25000" em milissegundos

@URA0697
Scenario: URA0697-ContaCorrente_Menu_Consultamenuoutrasinformacoes_ConsultarmenuoutrasinformacoesdasuaContaCorrente_ModeloNovoSenha6Digitos_Private

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "1"
	And estou esperando por "30000" milissegundos
	And clico na opcao do menu transacional: "4"
	Then um dos textos "limite da conta;alteração cadastral;outros assuntos" for validado, com o tempo de execução "25000" em milissegundos

@URA0700
Scenario: URA0700-Contacorrente_Menu_Consultamenuoutrosassuntos_Consultarmenuoutrosassuntos_clientecommaisdeumaconta_Modelonovosenha6dígitos_Private

	And estou na opcao do menu do ura com o TEXTO e ID " você está", com o tempo total de execução de "25000" milissegundos
	And clico no botao 'teclado' e clico nos numeros do 'CPF'
	And estou na opcao do menu ' desbloquear' para cliente que não solicita senha no topo, com o tempo total de execução de "25000" milissegundos
	And clico na opcao do menu transacional: "3"
	And clico na 'conta' e 'agencia' transacional
	And estou na opcao do menu do ura com o texto ' desbloquear', com o tempo total de execução de "25000" milissegundos
	And clico nos numeros da senha transacional
	And clico na opcao do menu transacional: "6"
	Then um dos textos "dúvida ou dificuldade;bloqueio de senha;chave de segurança;caixa eletrônico;redefinir a senha" for validado, com o tempo de execução "30000" em milissegundos
	
@URA0701
Scenario: URA0701-Contacorrente_Menu_Consultamenuoutrosassuntos_Consultarmenuoutrosassuntos_clientecomapenasumaconta_Modelonovosenha6dígitos_Private

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "1"
	And estou esperando por "30000" milissegundos
	And clico na opcao do menu transacional: "4"
	And clico na opcao do menu transacional: "3"
	Then um dos textos "estorno ou débito;débitos não reconhecidos;dúvidas ou dificuldades;problemas no caixa eletrônico" for validado, com o tempo de execução "30000" em milissegundos

@URA0719
Scenario: URA0719-ContaCorrente_Menu_Consultamenupagamentooutransferencias_AcessarmenupagamentooutransferenciasnaopcaomenuContaCorrente_ModeloNovoSenha6Digitos_Private

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "4"
	Then um dos textos "pagamentos de títulos;pagar a fatura;realizar transferências;reemitir um boleto" for validado, com o tempo de execução "25000" em milissegundos

@URA0721
Scenario: URA0721-ContaCorrente_Menu_Consultamenuoutrasopcoes_consultarmenuoutrasopcoes_clientecomapenasumaContaCorrente_ModeloNovoSenha6Digitos_Private

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "6"
	Then um dos textos "dúvida ou dificuldade;bloqueio de senha;chave de segurança;caixa eletrônico;redefinir a senha" for validado, com o tempo de execução "30000" em milissegundos

@URA0724
Scenario: URA0724-Contacorrente_Menu_Consultamenuoutrasopcoes_consultarmenuoutrasopcoesATM_Modelonovosenha6digitos_Private

	And estou indo ao menu principal Private ou Select Transacional
	And clico na opcao do menu transacional: "3"
	And estou na opcao do menu do ura com o texto ' corrente ' verificando se precisa tecla dois, com o tempo total de execução de "10000" milissegundos
	And clico na opcao do menu transacional: "6"
	Then um dos textos "dúvida ou dificuldade;bloqueio de senha;chave de segurança;caixa eletrônico;redefinir a senha" for validado, com o tempo de execução "30000" em milissegundos

@URA0727
Scenario: URA0727-Contacorrente_Menu_Consultamenuoutrasopções_consultarmenuoutrasopções_clientecommaisdeumacontacorrente_Modelonovosenha6dígitos_Private

	And estou na opcao do menu do ura com o TEXTO e ID " você está", com o tempo total de execução de "25000" milissegundos
	And clico no botao 'teclado' e clico nos numeros do 'CPF'
	And estou na opcao do menu ' desbloquear' para cliente que não solicita senha no topo, com o tempo total de execução de "25000" milissegundos
	#Pulando Gerente...
	And clico na opcao do menu transacional: "1"
	And clico na opcao do menu transacional: "3"
	And clico na 'conta' e 'agencia' transacional
	And estou na opcao do menu do ura com o texto ' desbloquear', com o tempo total de execução de "25000" milissegundos
	And clico nos numeros da senha transacional
	And clico na opcao do menu transacional: "6"
	Then um dos textos "dúvida ou dificuldade;bloqueio de senha;chave de segurança;caixa eletrônico;redefinir a senha" for validado, com o tempo de execução "30000" em milissegundos