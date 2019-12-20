package br.com.rsi.ura.sheets.massa;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

import org.apache.log4j.Logger;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;

import br.com.rsi.ura.configuration.GerenciadorDePropriedades;
import br.com.rsi.ura.sheets.relatorioPorCenario.RelatorioValues;

/**
 * @author hugo.santos
 */
public final class GerenciadorDaPlanilhaDeMassa {

	private static final Logger LOG = Logger.getLogger(GerenciadorDaPlanilhaDeMassa.class);
	
	/**
	 * @param id --> ID do cenário que está sendo executado.
	 * @param nomeCenario --> Nome do cenário.
	 * @category Lê os dados respectivos do cenário e seta seus valores nas variáveis para ultilização e printa no console.
	 */
	public static synchronized void lerPlanilhaID(String id, String nomeCenario) {
		String fileName = null;
		HSSFWorkbook workbook = null;
		HSSFSheet sheet = null;
		FileInputStream file = null;
		String idMassa = null;
		String idRenavam = null;
		String idCodigoBarras = null;
		PlanilhaDTO.setNomeCenario(nomeCenario);
		PlanilhaDTO.setIdCenario(id);
		
		try {
			fileName = GerenciadorDePropriedades.getInstance().getMassaExcelInputFile();
			file = new FileInputStream(new File(fileName));

			workbook = new HSSFWorkbook(file);
			sheet = workbook.getSheet("UR");

			for (Row row : sheet) {

				Cell cellID = row.getCell(0);

				if (cellID.toString().trim().equals(id)) {
					idMassa = row.getCell(2).toString();
					RelatorioValues.setIdMassa(idMassa);					
					
					idCodigoBarras = row.getCell(3).toString();
					idRenavam = row.getCell(4).toString();

					PlanilhaDTO.setValor(row.getCell(5).toString().replace(".", "").replace(",", "").replace("_", ""));
					PlanilhaDTO.setTelefone(row.getCell(6).getStringCellValue());
					String dataFutura = row.getCell(7).toString().replaceAll("\\D", "").replace("_", "").replace("/", "");
					PlanilhaDTO.setDataPassada(dataFutura);
					String dataPassada = row.getCell(8).toString().replaceAll("\\D", "").replace("_", "").replace("/", "");
					PlanilhaDTO.setDataFutura(dataPassada);						
					PlanilhaDTO.setIdMassa(idMassa);
					break;
				}
			}
			sheet = workbook.getSheet("Massa");
			for (Row row : sheet) {

				Cell cellID = row.getCell(0);

				if (cellID.toString().trim().equals(idMassa)) {
					PlanilhaDTO.setCpf(row.getCell(1).getStringCellValue().replaceAll("\\D", ""));
					LOG.info("---- CPF: " + PlanilhaDTO.getCpf());
					PlanilhaDTO.setDataNascimento(row.getCell(2).toString());
					
					PlanilhaDTO.setAgencia(row.getCell(4).toString().replaceAll("\\D", ""));
					PlanilhaDTO.setContaCorrente(row.getCell(5).toString().replaceAll("\\D", ""));
					PlanilhaDTO.setContaPoupanca(row.getCell(6).toString().replaceAll("\\D", ""));
					
					PlanilhaDTO.setNumeroCartao(row.getCell(7).toString().replaceAll("\\D", ""));
					PlanilhaDTO.setCvv(row.getCell(8).toString());
					if (row.getCell(9).toString().trim().toLowerCase().equals("bloqueado")) {
						PlanilhaDTO.setTemCartaoBloqueado(true);
					} else {
						PlanilhaDTO.setTemCartaoBloqueado(false);
					}
					String senha4dig = row.getCell(10).toString().replaceAll("\\D", "");
					PlanilhaDTO.setSenha4Dig((!senha4dig.isEmpty()) ? senha4dig.substring(0, 4) : "");
					String senha6dig = row.getCell(11).toString().replaceAll("\\D", "");
					PlanilhaDTO.setSenha6Dig((!senha6dig.isEmpty()) ? senha6dig.substring(0, 6) : "");
					String assinaturaEletronica = row.getCell(12).toString().replaceAll("\\D", "");
					PlanilhaDTO.setAssinaturaEletronica((!assinaturaEletronica.isEmpty()) ? assinaturaEletronica.substring(0, 6) : "");
					PlanilhaDTO.setAgenciaFavorecido(row.getCell(13).toString());
					PlanilhaDTO.setContaFavorecido(row.getCell(14).toString());
					PlanilhaDTO.setDocTed(row.getCell(15).toString());
					PlanilhaDTO.setInvestimento(row.getCell(16).toString());
					PlanilhaDTO.setProdutos(row.getCell(17).toString());
					String talaoCheque = row.getCell(18).toString().replaceAll("\\D", "");
					PlanilhaDTO.setTalaoCheque((!talaoCheque.isEmpty()) ? talaoCheque.substring(0, 6) : "");
					break;
				}
			}
			sheet = workbook.getSheet("CodigoDeBarras");
			for (Row row : sheet) {

				Cell cellID = row.getCell(0);

				if (cellID.toString().trim().equals(idCodigoBarras)) {
					PlanilhaDTO.setCodigoBarra(row.getCell(2).toString().replaceAll("\\D", ""));
					break;
				}
			}
			sheet = workbook.getSheet("Renavam");
			for (Row row : sheet) {
				Cell cellID = row.getCell(0);
				if (cellID.toString().trim().equals(idRenavam)) {
					String renavam1 = (row.getCell(1).toString() == null ? "" : row.getCell(1).toString());
					String renavam2 = (row.getCell(2).toString() == null ? "" : row.getCell(2).toString());
					PlanilhaDTO.setRenavam1(renavam1);
					PlanilhaDTO.setRenavam2(renavam2);
					break;
				}
			} 
			
			LOG.info(String.format("---- ID: %s", (id == null) ? "VAZIO" : id));
			LOG.info(String.format("---- Massa ID: %s", (idMassa == null) ? "VAZIO" : idMassa));
			LOG.info(String.format("---- Telefone: %s", (PlanilhaDTO.getTelefone() == null) ? "VAZIO" : PlanilhaDTO.getTelefone()));
			LOG.info(String.format("---- Valor R$: %s", (PlanilhaDTO.getValor() == null) ? "VAZIO" : PlanilhaDTO.getValor()));
			LOG.info(String.format("---- Senha 6 Dg.: %s", (PlanilhaDTO.getSenha6Dig() == null) ? "VAZIO" : PlanilhaDTO.getSenha6Dig()));
			LOG.info(String.format("---- Senha 4 Dg.: %s", (PlanilhaDTO.getSenha4Dig() == null || PlanilhaDTO.getSenha4Dig().isEmpty()) ? "VAZIO" : PlanilhaDTO.getSenha4Dig()));
			LOG.info(String.format("---- Agência: %s", (PlanilhaDTO.getAgencia() == null || PlanilhaDTO.getAgencia().isEmpty()) ? "VAZIO" : PlanilhaDTO.getAgencia()));
			LOG.info(String.format("---- Nº Conta Corrente: %s", (PlanilhaDTO.getContaCorrente() == null || PlanilhaDTO.getContaCorrente().isEmpty()) ? "VAZIO" : PlanilhaDTO.getContaCorrente()));
			LOG.info(String.format("---- Nº Conta Poupança: %s", (PlanilhaDTO.getContaPoupanca() == null || PlanilhaDTO.getContaPoupanca().isEmpty()) ? "VAZIO" : PlanilhaDTO.getContaPoupanca()));
			LOG.info(String.format("---- Nº Talão de Cheques: %s", (PlanilhaDTO.getTalaoCheque() == null || PlanilhaDTO.getTalaoCheque().isEmpty()) ? "VAZIO" : PlanilhaDTO.getTalaoCheque()));
			LOG.info(String.format("---- Código de Barras ID: %s", (idCodigoBarras == null || idCodigoBarras.isEmpty()) ? "VAZIO" : idCodigoBarras));
			LOG.info(String.format("---- Nº Código de Barras: %s", (PlanilhaDTO.getCodigoBarra() == null) ? "VAZIO" : PlanilhaDTO.getCodigoBarra()));
			LOG.info(String.format("---- Renavam ID: %s", (idRenavam == null || idRenavam.isEmpty()) ? "VAZIO" : idRenavam));
			LOG.info(String.format("---- 1º Renavam: %s", (PlanilhaDTO.getRenavam1() == null) ? "VAZIO" : PlanilhaDTO.getRenavam1()));
			LOG.info(String.format("---- 2º Renavam: %s", (PlanilhaDTO.getRenavam2() == null) ? "VAZIO" : PlanilhaDTO.getRenavam2()));
			
		} catch (IOException e) {
			LOG.info("---- Erro na leitura do arquivo da massa de dados em: " + fileName + " ----");
			LOG.error(e);
		} finally {
			try {
				workbook.close();
				file.close();
			} catch (IOException e) {
				LOG.info("---- Erro no fechamento do arquivo da massa de dados em: " + fileName + " ----");
				LOG.error(e);
			}
		}
	}
}