<%@page contentType ="text/html"%>
<%@ page pageEncoding ="UTF-8"%>
<%@page language = "java" import = "java.sql.*,java.io.*,java.util.*"%>
<jsp:useBean id = "book" class ="stockofbooks.Books"/>
<html>
    <head>
        <title> Library Database</title>
    </head>
    <body>
        <h1> List of books...</h1>
        <a href = "newBook.jsp"> Add more books</a>
        <form action = "delete.jsp" method = "POST">
            <center><table border = "1">
                    <thead>
                        <tr>
                            <th> ID </th>
                            <th> TITLE </th>
                            <th> PRICE </th>
                        </tr>
                    </thead>
                    <%
                                
                                try {
                                    book.connect();
                                    ResultSet rs = null;
                                    rs = book.viewBooks();
                                    

                                    while (rs.next()) {
                                       
                    %>
                    <tr>
                        <td><input type ="checkbox" name = "pkey" value ="<%= rs.getString("id")%>"/>
                        </td>
                        <td><%=rs.getString("title")%></td>
                        <td><%=rs.getString("price")%></td>

                    </tr>
                    <%
                                                } //end while

                    %>
                </table></center><br>
			check books for deletion
            <input type ="submit" value = "Delete"/>
        </form>

                    <%              
                        book.disconnect();
                    } catch (Exception sqle) {
                        System.out.print("Exception" + sqle);
                    }
        %>
       
    </body>
</html>