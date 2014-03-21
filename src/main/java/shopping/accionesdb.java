package shopping;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class accionesdb {
	
	
	String dbURL = "jdbc:mysql://localhost:3306/shopdb";
	String username = "root";
	String password = "martinalex1";
	
	{
	 
	try {
	 
	    Connection conn = DriverManager.getConnection(dbURL, username, password);
	 
	    if (conn != null) {
	        System.out.println("Connected");
	
	        String sql = "INSERT INTO CD (album, artist, country, price, quantity) VALUES (?, ?, ?, ?, ?)";
	   	 
	    	PreparedStatement statement = conn.prepareStatement(sql);
	    	statement.setString(1, "Las aventuras de Juan Antonio Canta");
	    	statement.setString(2, "Juan Antonio Canta");
	    	statement.setString(3, "España");
	    	statement.setString(4, "18.99");
	    	statement.setString(5, "1");
	    	 
	    	int rowsInserted = statement.executeUpdate();
	    	if (rowsInserted > 0) {
	    	    System.out.println("A new CD was inserted successfully!");
	        
	    }
	}
	}

	catch (SQLException ex) {
	    ex.printStackTrace();
	}
	
	
	}
}
