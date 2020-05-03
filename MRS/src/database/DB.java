package database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DB {
	
	public static Connection getConnection() throws ClassNotFoundException, SQLException {
		Class.forName("org.sqlite.JDBC");
		return DriverManager.getConnection("jdbc:sqlite:C:\\Users\\dongf\\git\\project_repository\\MRS\\MRS.db");
		// IMPORTANT: When testing, you should change the above database path into your absolute path where you locate this database !!!
	}

}
