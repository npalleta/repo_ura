package br.com.rsi.ura.suiteTeste.divisaoPor_ProdutosMercado;

import org.junit.runner.RunWith;
import org.junit.runners.Suite;

@RunWith(Suite.class)
@Suite.SuiteClasses({

		SuiteContaCorrente.class,
		SuiteEmprestimo.class,
		SuiteFolhaPagamento.class,
		SuiteInvestimentos.class,
		SuiteProdutosServicos.class,
		SuiteMeiosDePagamentos.class,
		SuitePagamentos.class,
		SuiteSeguros.class,
		SuiteTransferenciasRecursos.class
})

public class SuiteTestesProdutosMercado {

}