package pack1;

import java.sql.Connection;
import java.sql.DriverManager;

public class DB {
	
	//initializing connection variables
	private static String url = "jdbc:mysql://localhost:3306/adminlogin";
	private static String user = "root";
	private static String password = "akila123";
	private static Connection con;
	
	public static Connection getConnection() {
		
		//create the connection
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(url,user,password);
			System.out.println("Succcessful");
	    }
		//exception handling
		catch(Exception e){
			System.out.println("Unsuccessful");	
		}
		
		return con;
	
}
}
