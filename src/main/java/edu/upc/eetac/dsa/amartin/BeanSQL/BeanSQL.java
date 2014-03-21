package edu.upc.eetac.dsa.amartin.BeanSQL;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class BeanSQL {
String lista;
	public BeanSQL(){

	}

public String GetCDs(){

	ResultSet rsListaRegistros = null;
	Context envContext = null;
	Connection conConexion;
	Statement scSQL;
	DataSource ds = null;
	String options = "";

	try {
		envContext = new InitialContext();
		Context initContext = (Context) envContext.lookup("java:/comp/env");
		ds = (DataSource) initContext.lookup("jdbc/discostu");
	} catch (NamingException e1) {
		e1.printStackTrace();
	}

	try {
		conConexion = ds.getConnection();
		scSQL = conConexion.createStatement();
		rsListaRegistros = scSQL.executeQuery("SELECT * FROM cds");
		while (rsListaRegistros.next()) {
			options = options + "<option>";
			options = options + rsListaRegistros.getString("Disco");
			options = options + " | ";
			options = options + rsListaRegistros.getString("Autor");
			options = options + " | ";
			options = options + rsListaRegistros.getString("Pais");
			options = options + " | ";
			options = options + rsListaRegistros.getString("Precio");
			options = options + " </option> ";
		}
		conConexion.close();
	}
	catch (SQLException e1) {
		e1.printStackTrace();
	}
	return options;
}
	public void SetCds(String total, int number) throws SQLException{

		Context envContext = null;
		PreparedStatement stmt = null;
		Connection conConexion = null;
		DataSource ds = null;
		float amount = Float.parseFloat(total);
		int cantidad = number;

		try {
			envContext = new InitialContext();
			Context initContext = (Context) envContext.lookup("java:/comp/env");
			ds = (DataSource) initContext.lookup("jdbc/discostu");
		} catch (NamingException e1) {
			e1.printStackTrace();
		}

		try {
			conConexion = ds.getConnection();
			String sql = "INSERT INTO Registro(Cantidad,Total) VALUES(?, ?)";
            stmt = conConexion.prepareStatement(sql);
            stmt.setInt(1,cantidad);
            stmt.setFloat(2, amount);
            stmt.executeUpdate();
		}
	 catch (SQLException e2) {
		e2.printStackTrace();
	 }	
		conConexion.close();
	}
}