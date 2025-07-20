<%-- 
    Document   : index
    Created on : Feb 8, 2013, 3:05:21 PM
    Author     : Soumik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<%@page language = "java" import = "java.sql.*,java.io.*,java.util.*,javax.swing.*"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        JOptionPane.showInputDialog("Enter");
        ArrayList s = new ArrayList();
                    s = (ArrayList) session.getAttribute("a1");
                    int a = s.size();

        %>
        <%=s + "" + a%>
        <form action="index.jsp" method="post">
            <%
                ResultSet rs = null;

            %>
            <input type="submit">
        </form>


    </body>
</html>
