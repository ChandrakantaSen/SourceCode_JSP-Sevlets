/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author user
 */
package myPacakge;
import java.sql.*;

public class myclass {
Connection conn;
Statement stmt;
public void connect()throws SQLException{
	try{
	    Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	    conn = DriverManager.getConnection("jdbc:odbc:myDsn","system","password");
	   }catch(Exception e){
		e.printStackTrace();
	    }
}//end connect

public void disconnect(){
	try{
	    if(conn!=null)
		conn.close();
	   }catch(Exception e){
		e.printStackTrace();
	    }
	}//end disconnect

//fname1,lname1,sex1,dept1,caste1,address1,city1,email1,roll1,year1,pincode1
public void addRegdata(String fname1,String lname1,String sex1,String dept1,String caste1,String address1,String city1,String email1,int roll1, int year1,int pincode1) throws SQLException {
	if(conn!=null){
	    try{
		PreparedStatement ptmt = null;
		ptmt=conn.prepareStatement("insert into regform values(?,?,?,?,?,?,?,?,?,?,?)");
		ptmt.setString(1,fname1);
		ptmt.setString(2,lname1);
		ptmt.setString(3,sex1);
                ptmt.setInt(4,roll1);
                ptmt.setInt(5,year1);
                ptmt.setString(6,dept1);
                ptmt.setString(7,caste1);
                ptmt.setString(8,address1);
                ptmt.setString(9,city1);
                ptmt.setInt(10,pincode1);
                ptmt.setString(11,email1);
		ptmt.executeUpdate();
		}catch (SQLException sqle){
		   sqle.printStackTrace();
		}//end catch
	} else {
		System.out.print("connection error");
		}
	}//end addBooks

}// end main class
