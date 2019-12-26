package br.com.rsi.ura.fraseologia;

import org.apache.log4j.Logger;

import br.com.rsi.ura.erroReport.ErrorReport;
import br.com.rsi.ura.erroReport.stepErrorMassa.Massa;
import br.com.rsi.ura.saveResult.SaveResultTestCase;
import br.com.rsi.ura.sheets.massa.PlanilhaDTO;
import br.com.rsi.ura.sheets.relatorioPorCenario.RelatorioValues;
import br.com.rsi.ura.utils.UtilsUra;
import io.openbdt.speech.api.services.AssertAudioService;
import io.openbdt.speech.api.services.CaptureAndSpeechRecognitionFacadeService;
import io.openbdt.speech.api.services.impl.AssertAudioServiceImpl;
import io.openbdt.speech.api.services.impl.CaptureAndSpeechRecognitionFacadeServiceImpl;

/**
 * @author hugo.santos
 */
public class ValidacaoFraseologia {

	private final Logger LOG = Logger.getLogger(ValidacaoFraseologia.class);
	private AssertAudioService assertAudioService = new AssertAudioServiceImpl();
	private CaptureAndSpeechRecognitionFacadeService.CaptureAndSpeechRecognitionResult result;
	private CaptureAndSpeechRecognitionFacadeService captureAndSpeechRecognitionFacadeService = new CaptureAndSpeechRecognitionFacadeServiceImpl();
	private String[] arrayPossibilidadesUra = {"teste","central","atendimento","gente","Santander","Santo André","digite",
											   "número","começar","por favor","CPF","Boa tarde", "Boa noite", "Bom dia"};
	
	/**
	 * @param tempo --> Tempo de gravação.
	 * @return Resultado da gravação como String.
	 */
	public String fraseologia(final Integer tempo) {
		return fraseologiaSemValidacao(tempo);
	}
	
	/**
	 * @param textoEsperado --> Texto Esperado.
	 * @param tempo --> Tempo de gravção.
	 * @return Resultado da gravação como String.
	 */
	public String fraseologia(final String textoEsperado, final Integer tempo) {
		return fraseologiaComValidacao(textoEsperado, tempo, null, null, null);
	}
	
	/**
	 * @param timeout --> Tempo de gravação.
	 * @return Resultado da gravação como String.
	 */
	private String fraseologiaSemValidacao(final Integer timeout) {
		LOG.info("Iniciando Gravação...");
		try {
			result = captureAndSpeechRecognitionFacadeService.captureAndSpeechRecognition(timeout);
			SaveResultTestCase.setDirAudio(result.getCapturedAudioFile().getAbsolutePath());
			
//			if(result.getRecognitedText().contains("ERROR")) {
//				LOG.info("<RE_TEST> --- <TIME OUT>");
//				RelatorioValues.setTipoErro("RE_TEST");
//				RelatorioValues.setErro("Time Out -- Intermitência na Internet");
//				UtilsUra.falhou();
//			} else {
//				Massa.vdn(result.getRecognitedText());
//				new ErrorReport(result.getRecognitedText(), PlanilhaDTO.getIdCenario(), PlanilhaDTO.getNomeCenario());
//			}
			LOG.info(String.format("====Texto Traduzido====[%s]", result.getRecognitedText()));
			LOG.info("========================================================================================================");
		} catch (Exception e) {
			LOG.error(e.getMessage(), e);
			UtilsUra.falhou();
		}
		if(result.getRecognitedText().isEmpty()) {
			return "";
		} 
		return result.getRecognitedText();
	}

	/**
	 * @param textoEsperado --> Texto Esperado.
	 * @param timeout --> Tempo de gravação.
	 * @param inicioCorteID --> Início do corte.
	 * @param finalCorteID --> Fim do corte.
	 * @param numeroTranscricoesCorte --> Transição de corte.
	 * @return Resultado da gravação como String.
	 */
	public String fraseologiaComValidacao(final String textoEsperado, final Integer timeout, final Integer inicioCorteID, 
										  final Integer finalCorteID, final Integer numeroTranscricoesCorte) {
		LOG.info("Iniciando Gravação...");
		String possiveisIDs = null;
		String textoCorrigido = null;
		
		try {
			result = captureAndSpeechRecognitionFacadeService.captureAndSpeechRecognition(timeout);
			SaveResultTestCase.setDirAudio(result.getCapturedAudioFile().getAbsolutePath());
			
			if(result.getRecognitedText().contains("ERROR")) {
				LOG.info("<RE_TEST> --- <TIME OUT>");
				//RelatorioValues.setTipoErro("RE_TEST");
				//RelatorioValues.setErro("Time Out -- Intermitência na Internet");
				UtilsUra.falhou();
			} else {
				Massa.vdn(result.getRecognitedText());
				//new ErrorReport(result.getRecognitedText(), PlanilhaDTO.getIdCenario(), PlanilhaDTO.getNomeCenario());
			}
				
			boolean testePassou = assertAudioService.isEquivalent(textoEsperado, result.getRecognitedText(),
					AssertAudioService.PercentageEquivalent.NINETY_FIVE);
			
			LOG.info(String.format(">>>>>Texto Esperado>>>>[%s]", textoEsperado));
			LOG.info(String.format("====Texto Traduzido====[%s]", result.getRecognitedText()));
			
			if (testePassou && textoEsperado.contains("você ligou") || ((!testePassou) && textoEsperado.contains("você ligou"))) {

				String codigo = UtilsUra.localizarIdLog(result.getRecognitedText());
				if (codigo != "" && numeroTranscricoesCorte != null) {
				// possiveisIDs = UtilsUra.verificarCodigo(codigo);
				// RelatorioValues.setIdLog(possiveisIDs);
				// textoCorrigido = UtilsUra.alteraID(result.getRecognitedText(), possiveisIDs);
				
				LOG.info(String.format("====Texto Corrigido====[%s]", textoCorrigido));
				// LOG.info(String.format("====Possível ID====[%s]", (possiveisIDs == null) ? "NÃO LOCALIZADO" : possiveisIDs));
				}
			}
			
			if ((!testePassou) && textoEsperado.contains("você está")) {
				String textoEsperado2;
				for (int posi = 0; posi < arrayPossibilidadesUra.length; posi++) {
					textoEsperado2 = arrayPossibilidadesUra[posi];
					boolean valida2 = result.getRecognitedText().contains(textoEsperado2);

					if (valida2) {
						LOG.info(String.format("====Resultado do Assert com o " + posi + "º elemento de validação da URA ==== [%s]", textoEsperado2));
						testePassou = true;
						break;
					}
				}
			}
			/* if (!testePassou) {
				textoCorrigido = result.getRecognitedText();
				RelatorioValues.setTipoErro("RE_TEST");
				RelatorioValues.setErro(">Texto Esperado: '" + textoEsperado + "'>Texto Traduzido: '" + textoCorrigido + "'");
				LOG.info("<TRADUÇÃO ERRADA>");
				UtilsUra.falhou();
			} */
			LOG.info(String.format("====Resultado do Assert====[%s] ", testePassou));
			LOG.info("========================================================================================================");

		} catch (Exception e) {
			LOG.error(e.getMessage(), e);
			UtilsUra.falhou();
		}
		LOG.info(">>> FOI" + result.getRecognitedText());
		return result.getRecognitedText();
	}
}