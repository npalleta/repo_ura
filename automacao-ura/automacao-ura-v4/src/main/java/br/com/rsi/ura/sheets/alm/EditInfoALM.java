package br.com.rsi.ura.sheets.alm;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

import org.apache.log4j.Logger;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import br.com.rsi.ura.sheets.massa.PlanilhaDTO;
import br.com.rsi.ura.sheets.reportLog.LogGenerator;
import br.com.rsi.ura.utils.UtilsUra; 

class EditInfoALM {

	private final Logger LOG = Logger.getLogger(EditInfoALM.class);

	private final int localizeLineALM(XSSFSheet sheet) {
		int rowNum = -1;
		search: for(Row row : sheet) {
			Cell cell = row.getCell(0);
			if(cell.getStringCellValue().contains(PlanilhaDTO.getIdCenario())) {
				rowNum = row.getRowNum();
				break search;
			}
		}
		return rowNum;
	}
	
	public void editWorkbookALM() {
		
		LOG.info("Editando ALM do Cenário: " + PlanilhaDTO.getIdCenario());
		File wayLog = new File(LogGenerator.getNomeLog() == null || LogGenerator.getNomeLog().isEmpty() ? "C:\\" : LogGenerator.getNomeLog());
		if(wayLog.exists()) {
			OutputStream out = null;
			File arqALM = new File(ReportALM.WAY_WORKBOOK_REPORT_ALM); 
			try (XSSFWorkbook wb = new XSSFWorkbook(new FileInputStream(arqALM))) {
				XSSFSheet sheet = wb.getSheetAt(0);
				int rowNum = localizeLineALM(sheet);
				if (rowNum == -1) {
					LOG.info("LINHA DO ALM NÃO FOI ENCONTRADA.");
					UtilsUra.falhou();
				}
				sheet.getRow(rowNum).createCell(2).setCellValue(ReportALM.STATUS_OK);
				sheet.getRow(rowNum).createCell(4).setCellValue(("\\" + ReportALM.WAY_ALM_EVIDENCE + "\\" + LogGenerator.getNomeArquivo()));
				out = new FileOutputStream(arqALM);
				wb.write(out);

				LOG.info("ALM Editado com Sucesso!");
			} catch (FileNotFoundException e) {
				LOG.error(e.getMessage(), e);
			} catch (IOException e) {
				LOG.error(e.getMessage(), e);
			} finally {
				try {
					if (out != null)
						out.close();
				} catch (IOException e) {
					LOG.error(e.getMessage(), e);
				}
			}
		}
	}
}