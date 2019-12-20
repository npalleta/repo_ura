package br.com.rsi.ura.utils;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;

public final class FileUtil {

	public static void deleteOlderFiles(long diasExpurgo, String caminho) throws IOException {
		// o tempo atual em epoca unix
		long agora = System.currentTimeMillis();

		// dias de expurgo em milissegundos
		long milliExpurgo = 86_400_000 * diasExpurgo;

		// lista de arquivos no diretorio de audio
		File file = new File(caminho);
		File[] listaDeWavs = file.listFiles();

		if (file.exists()) {
			for (File wav : listaDeWavs) {
				long ultimaModificacao = wav.lastModified();
				if (agora - ultimaModificacao > milliExpurgo) {
					Files.delete(wav.toPath());
				}
			}
		} else {
			file.mkdirs();
			for (File wav : listaDeWavs) {
				long ultimaModificacao = wav.lastModified();
				if (agora - ultimaModificacao > milliExpurgo) {
					Files.delete(wav.toPath());
				}
			}
		}
	}
}