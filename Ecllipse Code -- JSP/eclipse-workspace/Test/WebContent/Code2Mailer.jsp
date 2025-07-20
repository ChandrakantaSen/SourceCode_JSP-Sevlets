<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%!
  	String str;
   	public int calculate(int x, int y)
   {
     return x * y;
   }
%> 
<% str = request.getParameter("t1"); %>
 
<%
   out.println("Client name is: " + str);
 
   int k = calculate(10, 20);
   out.println("<br>Product of two numbers is: " + k);
%>     
</body>
</html>