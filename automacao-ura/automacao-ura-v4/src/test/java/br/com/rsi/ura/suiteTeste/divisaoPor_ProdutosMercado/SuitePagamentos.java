package br.com.rsi.ura.suiteTeste.divisaoPor_ProdutosMercado;

import org.junit.runner.RunWith;
import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;

@RunWith(Cucumber.class)
@CucumberOptions (

	features = {"src\\test\\java\\br\\com\\rsi\\ura\\teste"},
			glue = {"br.com.rsi.ura.gherkin_geral", 
					"br.com.rsi.ura.teste.pagamentos"}, 
			
			tags = {"@PAGAMENTOS"}
)

public class SuitePagamentos {

}