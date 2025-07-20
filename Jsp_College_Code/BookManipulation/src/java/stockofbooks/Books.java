/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package stockofbooks;
import java.sql.*;

public class Books {
Connection conn;
Statement stmt;
public void connect(){
	try{
	    Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	    conn = DriverManager.getConnection("jdbc:odbc:myDsn","system","password");
	   }catch(Exception e){
		e.printStackTrace();
	    }//end catch
	} //end connect
/*public void connect()
            throws SQLException,Exception{
        try{
         DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
         conn = DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:xe","scott","tiger");
         stmt=conn.createStatement();
        }catch(SQLException sqle){
            sqle.printStackTrace();
        }
        catch(Exception e){
            throw new Exception("Connection failed");
        }
    }//end connect*/
public void disconnect(){
	try{
	    if(conn!=null)
		conn.close();
	   }catch(Exception e){
		e.printStackTrace();
	    }
	}//end disconnect
public ResultSet viewBooks() throws SQLException{
	ResultSet rs = null;
	try{
	Statement stmt = conn.createStatement();
	rs = stmt.executeQuery("select id,title,price from BOOKTABLE");
	}catch(Exception e){
		   System.out.print("No values");
	}
	return rs;
	}//end viewBooks
public void addBooks (String id,String title,String price) throws SQLException {
	if(conn!=null){
	    try{
		PreparedStatement ptmt = null;
		ptmt=conn.prepareStatement("insert into BOOKTABLE(ID,TITLE,PRICE) values(?,?,?)");
		ptmt.setString(1,id);
		ptmt.setString(2,title);
		ptmt.setString(3,price);
		ptmt.executeUpdate();
		}catch (SQLException sqle){
		   sqle.printStackTrace();
		}//end catch
	} else {
		System.out.print("connection error");
		}
	}//end addBooks

public void removeBooks(String []keys) throws SQLException{
		if(conn!=null){
			try{
			PreparedStatement ptmt = null;
                        for(int i=0;i<keys.length;i++){
			ptmt = conn.prepareStatement("delete from BOOKTABLE where id = ?");
			
				ptmt.setString(1,keys[i]);
                        
			ptmt.executeUpdate();
                        }
			}catch (Exception e){
			     System.out.print("problem occured during deletion");
			} //end catch
		   } else {
			System.out.print("conneection failed");
			} //end if
		} //end remove books




} //end class



	


