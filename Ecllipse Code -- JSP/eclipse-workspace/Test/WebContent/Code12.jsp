<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<%! Connection con=null; %> 
<%! Statement st= null; %> 
<%! ResultSet rs= null; %> 

<html> 
<head><title>This is a Jdbc Example</title></head> 
<body> 
<% 
try 
{ 
	Class.forName("com.mysql.jdbc.Driver").newInstance(); 
}
catch(ClassNotFoundException ce)
{
	out.println(ce);
} 

try
{ 
	con = DriverManager.getConnection("jdbc:mysql://localhost/","root", ""); 
st = con.createStatement(); 
rs = st.executeQuery("SELECT name, age FROM arun"); 
while(rs.next()) { 

String name = rs.getString(1); 
int age = rs.getInt(2); 
out.println(name + " " +age+"<br>"); 

} // end of whilee 
rs.close(); 
st.close(); 
con.close(); 

}catch(SQLException exception){ 
out.println("<!--"); 
StringWriter sw = new StringWriter(); 
PrintWriter pw = new PrintWriter(sw); 
exception.printStackTrace(pw); 
out.print(sw); 
sw.close(); 
pw.close(); 
out.println("-->"); 

} 



%> 
</body> 
</html> 