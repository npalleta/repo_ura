package br.com.rsi.ura.sheets.suiteSantander;

/**
 * @author augusto.lemes
 */
public class RelatorioDadosDTO {
	
	private String nomeFeature;
	private String cenario;
	private String fraseEsperada;
	private String acao;
	private String fraseTraduzida;
	private Boolean testeAssert;
	private String caminhoAudio;
	private Double percentualAcerto;
	private String possiveisIds;
	private String erroSistemico;
	private String erroFerramenta;
	
	public RelatorioDadosDTO(String nomeFeature, String cenario, String fraseEsperada, String acao, String fraseTraduzida,
			Boolean testeAssert, String caminhoAudio, Double percentualAcerto, String possiveisIds, String erroSistemico, String erroFerramenta) {
		super();
		this.nomeFeature = nomeFeature;
		this.cenario = cenario;
		this.fraseEsperada = fraseEsperada;
		this.acao = acao;
		this.fraseTraduzida = fraseTraduzida;
		this.testeAssert = testeAssert;
		this.caminhoAudio = caminhoAudio;
		this.percentualAcerto = percentualAcerto;
		this.possiveisIds = possiveisIds;
		this.erroSistemico = erroSistemico;
		this.erroFerramenta = erroFerramenta;
	}
	
	public String getAcao() {
		return acao;
	}
	public void setAcao(String acao) {
		this.acao = acao;
	}
	public RelatorioDadosDTO() {
		super();
	}
	public String getNomeFeature() {
		return nomeFeature;
	}
	public void setNomeFeature(String nomeFeature) {
		this.nomeFeature = nomeFeature;
	}
	public String getCenario() {
		return cenario;
	}
	public void setCenario(String cenario) {
		this.cenario = cenario;
	}
	public String getFraseEsperada() {
		return fraseEsperada;
	}
	public void setFraseEsperada(String fraseEsperada) {
		this.fraseEsperada = fraseEsperada;
	}
	public String getFraseTraduzida() {
		return fraseTraduzida;
	}
	public void setFraseTraduzida(String fraseTraduzida) {
		this.fraseTraduzida = fraseTraduzida;
	}
	public Boolean getTesteAssert() {
		return testeAssert;
	}
	public void setTesteAssert(Boolean testeAssert) {
		this.testeAssert = testeAssert;
	}
	public String getCaminhoAudio() {
		return caminhoAudio;
	}
	public void setCaminhoAudio(String caminhoAudio) {
		this.caminhoAudio = caminhoAudio;
	}
	public Double getPercentualAcerto() {
		return percentualAcerto;
	}
	public void setPercentualAcerto(Double percentualAcerto) {
		this.percentualAcerto = percentualAcerto;
	}
	public String getPossiveisIds() {
		return possiveisIds;
	}
	public void setPossiveisIds(String possiveisIds) {
		this.possiveisIds = possiveisIds;
	}
	public String getErroSistemico() {
		return erroSistemico;
	}
	public void setErroSistemico(String erroSistemico) {
		this.erroSistemico = erroSistemico;
	}
	public String getErroFerramenta() {
		return erroFerramenta;
	}
	public void setErroFerramenta(String erroFerramenta) {
		this.erroFerramenta = erroFerramenta;
	}
}