package models;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MySQL {
	
	private static String driver = "com.mysql.jdbc.Driver";
	private static String url = "jdbc:mysql://localhost:3306/eeshdb";
	private static String user = "root";
	private static String password = "";
	
	private Connection con = null;
	
	public MySQL() throws InstantiationException, IllegalAccessException, ClassNotFoundException {
		try {
			Class.forName(driver).newInstance();
			con = DriverManager.getConnection(url, user, password);
			if(!con.isClosed()) {
            }
		}
		catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public Connection getConnection() {
		return this.con;
	}
	
	public void closeConnection() {
		try {
			this.con.close();
		} 
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
}