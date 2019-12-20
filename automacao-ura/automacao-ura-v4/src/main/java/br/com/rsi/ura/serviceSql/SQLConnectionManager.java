package br.com.rsi.ura.serviceSql;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Properties;

import org.apache.log4j.Logger;

public final class SQLConnectionManager {

	private static final Logger LOG = Logger.getLogger(SQLConnectionManager.class);
	private static String driverName = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
	private static String url = null;
	private static String username = null;
	private static String password = null;
	private static String codigoProjeto = null;
	private static Connection con;
	
	/**
	 * @category Responsável por formatar a URL de conexão, UserName, Password, Código do Projeto.
	 */
	public SQLConnectionManager() {
		Properties prop = new Properties();
		InputStream input = null;

		try {
			input = new FileInputStream(".\\src\\main\\java\\br\\com\\rsi\\ura\\serviceSql\\sqlconnection.properties");
			prop.load(input);
			url = "jdbc:sqlserver://" + prop.getProperty("SqlServer") + ";databaseName=" + prop.getProperty("DataBase")
					+ "";
			username = prop.getProperty("User");
			password = prop.getProperty("Password");
			codigoProjeto = prop.getProperty("CodigoProjeto");

		} catch (IOException ex) {
			LOG.error(ex.getStackTrace());
		} catch (Exception exc) {
			LOG.error(exc.getStackTrace());
		} finally {
			if (input != null) {
				try {
					input.close();
				} catch (IOException e) {
					LOG.error(e.getStackTrace());
				}
			}
		}
	}
	
	/**
	 * @return con: Uma chave da conexão do BD.
	 * @category Responsável por pegar os dados e realizar a solicitação de conexão.
	 */
	public Connection getConnection() {
		try {
			Class.forName(driverName);
			try {
				con = DriverManager.getConnection(url, username, password);
			} catch (SQLException ex) {
				LOG.error("Failed to create the database connection.");
			}
		} catch (ClassNotFoundException ex) {
			LOG.error("Driver not found.");
		}
		return con;
	}

	/**
	 * @param codigoFN --> Chave de conexão do BD.
	 * @param statusExec --> Status da execução do cenário.
	 * @param dataExecucao --> Data da execução.
	 * @param horaExecucao --> Data da execução.
	 * @category Responsável por salvar o resultado no BD.
	 */
	public static void salvaStatusExecucaoTabelaFuncionalidade(String codigoFN, boolean statusExec, String dataExecucao,
			String horaExecucao) {

		Connection con = null;
		PreparedStatement preparedStatement = null;
		String statusExecucao;

		statusExecucao = (statusExec) ? "PASSED" : "FAILED";

		String updateTabelaSQL = "EXEC [dbo].[Report_Aut] @COD_PROJETO = ?, @COD_FN = ?, @STATUS_AUTO = ?, @DATA_EXEC = ?, @HORA_EXEC = ?";

		try {
			con = new SQLConnectionManager().getConnection();
			preparedStatement = con.prepareStatement(updateTabelaSQL);

			preparedStatement.setString(1, codigoProjeto);
			preparedStatement.setString(2, codigoFN);
			preparedStatement.setString(3, statusExecucao);
			preparedStatement.setString(4, dataExecucao);
			preparedStatement.setString(5, horaExecucao);

			preparedStatement.executeUpdate();
			
			LOG.info("SQLConection");
			LOG.info("Status da Execução Atualizado BD!");

		} catch (SQLException e) {
			LOG.error(e.getMessage());
		} finally {
			try {
				if (preparedStatement != null)
					preparedStatement.close();
				if (con != null)
					con.close();
			} catch (SQLException e) {
				LOG.info("Erro ao atualizar o BD...");
				LOG.error(e.getMessage(), e);
			}
		}
	}
}