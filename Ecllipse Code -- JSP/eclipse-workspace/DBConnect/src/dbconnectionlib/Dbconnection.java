package dbconnectionlib;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Dbconnection {

	public static void main(String[] args) {
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("Driver found");
		}
		catch(ClassNotFoundException e)
		{
			System.out.println("Driver not found " + e);
		}
		
		String url="jdbc:mysql://localhost/dao";
		String user="root";
		String pwd ="";
		
		try
		{
			Connection con = null;
			con = DriverManager.getConnection(url, user, pwd);
			
			System.out.println("Database connected successfully...!");
		}
		catch(SQLException ex)
		{
			System.out.println("Connection String Error: " + ex);
		}
		
	}

}
