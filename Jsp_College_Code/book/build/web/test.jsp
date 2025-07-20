<%-- 
    Document   : test
    Created on : Jul 31, 2013, 7:34:51 PM
    Author     : Soumik
--%>


<%@page language = "java" import = "java.sql.*,java.io.*,java.util.*,javax.swing.*"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%!int a=0;%>
        <%
        a=Integer.parseInt(JOptionPane.showInputDialog("Enter value of a:-"));

        
        %>
        <%=a%>
</html>
