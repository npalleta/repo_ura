package br.com.rsi.ura.sheets.suiteSantander;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Date;

import org.apache.log4j.Logger;
import org.apache.poi.EmptyFileException;
import org.apache.poi.common.usermodel.HyperlinkType;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.CellType;
import org.apache.poi.ss.usermodel.CreationHelper;
import org.apache.poi.ss.usermodel.Font;
import org.apache.poi.ss.usermodel.Hyperlink;
import org.apache.poi.ss.usermodel.IndexedColors;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import com.google.common.io.Files;

import br.com.rsi.ura.serviceJson.jsonData.Json;
import br.com.rsi.ura.utils.UtilsUra;

public class ReportTest {

	private final Logger LOG = Logger.getLogger(ReportTest.class);
	private final String fileName = "template.xlsx";

	public void initializeReport(FactoryReportData report) {
		initializeReport(report, true);
	}

	private XSSFWorkbook initializeReport(FactoryReportData report, Boolean closeFile) {
		FileOutputStream fileOut = null;
		XSSFWorkbook workbook = null;
					
		try {
			LOG.info("Abriu o arquivo " + new Date());
			
			File arquivoSuite = new File(report.getAbsoluteReportName());
			File pastaAudio = new File(report.getAbsoluteFolder());
			File txtJson = new File(report.getJsonReportErro());
			File logFolder = new File(report.getAbsoluteFolderLOG());
			
			if(!logFolder.exists()) {
				LOG.info("Criando 'LOGS' e 'OK' em: " + logFolder + "...");
				logFolder.mkdirs();
			}
			if (!pastaAudio.exists()) {
				LOG.info("Criando 'audios' em: " + pastaAudio + "...");
				pastaAudio.mkdir();
			}
			if(!txtJson.exists()) {
				LOG.info("Criando 'jsonErrorService' em: " + txtJson + "...");
				txtJson.createNewFile();
			}
			Json.setWayArqJson(report.getJsonReportErro());
			try {
				if (arquivoSuite.exists()) {
					workbook = new XSSFWorkbook(new FileInputStream(arquivoSuite));
				} else {
					workbook = new XSSFWorkbook(new FileInputStream(report.getPathPlanilha() + "/" + fileName));
					LOG.info("Criando 'SuiteTests_UraSAntander_.xlsx' em: " + arquivoSuite + "...");
				}
			} catch (EmptyFileException e) {
				LOG.info("EXCLUINDO 'SuiteTests_UraSAntander_.xlsx' DEVIDO AO CORROMPIMENTO >>>> " + arquivoSuite + "...");
				arquivoSuite.deleteOnExit();
				UtilsUra.falhou();
			}
			
			fileOut = new FileOutputStream(report.getAbsoluteReportName());
			workbook.write(fileOut);
		
		} catch (FileNotFoundException e) {
			LOG.error(e.getMessage(), e);
			File diretorio = new File(report.getAbsoluteFolder());
			diretorio.mkdirs();
		} catch (Exception e) {

			LOG.error(e.getMessage(), e);

		} finally {
			if (closeFile != null && closeFile.equals(Boolean.TRUE)) {
					try {
						if (fileOut != null)
							fileOut.close();
						if (workbook != null) 
							workbook.close();
					} catch (IOException e) {
						LOG.error(e.getMessage(), e);
					}
				LOG.info("Fechou o arquivo " + new Date());
			}
		}
		return workbook;
	}

	public void genereateReport(FactoryReportData report) {
		FileOutputStream fileOut = null;
		XSSFWorkbook workbook = null;
		try {
			LOG.info("Iniciou o arquivo " + new Date());
			File arquivo = new File(report.getAbsoluteReportName());
			workbook = new XSSFWorkbook(new FileInputStream(arquivo));
			XSSFSheet spreadSheet = workbook.getSheetAt(0);

			int rownum = getFirstRow(spreadSheet);
			Row row = spreadSheet.getRow(rownum);
			String caminhoAudio = report.getDados().getCaminhoAudio().replaceAll("flac", "wav");
			String audioName = report.getAbsoluteAudioName();
			copyAudioFile(caminhoAudio, audioName);
			populateCells(report, workbook, row, audioName, rownum);
			fileOut = new FileOutputStream(report.getAbsoluteReportName());
			workbook.write(fileOut);

		}catch (Exception e) {
			LOG.error(e.getMessage(), e);
		} finally {
			try {
				if (fileOut != null)
					fileOut.close();
				if (workbook != null) 
					workbook.close();
			} catch (IOException e) {
				LOG.error(e.getMessage(), e);
			}
			LOG.info("Fechou o arquivo " + new Date());
		}
	}

	private void copyAudioFile(String originalAudio, String audioDestination) {
		try {
			Files.copy(new File(originalAudio), new File(audioDestination));
		} catch (IOException e) {
			LOG.error(e.getMessage(), e);
		}
	}

	private void populateCells(FactoryReportData report, XSSFWorkbook workbook, Row row, String audioPath, int rownum) {
		// Populate all cells
		Cell cellIndice;

		// indice
		cellIndice = row.getCell(1);
		int indice = rownum - 3;

		cellIndice.setCellValue(indice);

		// Feature
		Cell cellFeature = row.getCell(2);
		cellFeature.setCellValue(report.getDados().getNomeFeature());

		// Cenario
		Cell cellScenario = row.getCell(3);
		cellScenario.setCellValue(report.getDados().getCenario());

		// Frase correta
		Cell cellExpectedSentence = row.getCell(4);
		cellExpectedSentence.setCellValue(report.getDados().getFraseEsperada());

		// acao
		Cell cellAcao = row.getCell(5);
		cellAcao.setCellValue(report.getDados().getAcao());

		// Frase Traduzida
		Cell cellTranslatedSentence = row.getCell(6);
		cellTranslatedSentence.setCellValue(report.getDados().getFraseTraduzida());

		// Percentual
		Cell cellPercentual = row.getCell(7);
		cellPercentual.setCellValue(report.getDados().getPercentualAcerto());

		// Status do Teste
		Cell cellStatus = row.getCell(8);
		cellStatus.setCellValue(report.getDados().getTesteAssert());

		CellStyle hlink_style = workbook.createCellStyle();
		Font hlink_font = workbook.createFont();
		hlink_font.setUnderline(Font.U_SINGLE);
		hlink_font.setColor(IndexedColors.BLUE.getIndex());
		hlink_style.setFont(hlink_font);

		CreationHelper createHelper = workbook.getCreationHelper();
		Cell cellLink = row.getCell(9);
		cellLink.setCellValue("Audio");
		Hyperlink link = createHelper.createHyperlink(HyperlinkType.FILE);
		if (audioPath != null) {
			audioPath = audioPath.replace("\\", "//");
		}

		link.setAddress(audioPath);
		cellLink.setHyperlink(link);
		cellLink.setCellStyle(hlink_style);

		Cell cellObs = row.getCell(10);
		cellObs.setCellValue(report.getDados().getPossiveisIds());

		// Erro Sistemico
		Cell cellErroSistemico = row.getCell(11);
		cellErroSistemico.setCellValue(report.getDados().getErroSistemico());

		// Erro Sistemico
		Cell cellErroFerramenta = row.getCell(12);
		cellErroFerramenta.setCellValue(report.getDados().getErroFerramenta());

	}

	private int getFirstRow(XSSFSheet spreadSheet) {
		for (int i = 4; i < 999; i++) {
			Row row = spreadSheet.getRow(i);
			Cell cell = row.getCell(4);
			if (cell.getCellTypeEnum() != null && cell.getCellTypeEnum().equals(CellType.NUMERIC)) {
				if (cell.getNumericCellValue() == 0d) {
					return i;
				}
			} else {
				if (cell.getStringCellValue() == null || "".equals(cell.getStringCellValue())) {
					return i;
				}
			}
		}
		return -1;
	}
}
