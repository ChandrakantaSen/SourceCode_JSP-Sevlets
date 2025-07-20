<%@ page pageEncoding ="UTF-8"%>
<%@page language = "java" import = "java.sql.*,java.io.*"%>
<jsp:useBean id = "book" class = "stockofbooks.Books"/>
<html>
    <head>
        <title> Add Books </title>
    </head>
    <body>
        <%!String ID, Title, Price;%>
        <%
                    try {
                        ID = (request.getParameter("id"));
                        Title = request.getParameter("title");
                        Price = (request.getParameter("price"));


                        book.connect();
                        book.addBooks(ID, Title, Price);
                        book.disconnect();
                    } catch (Exception ne) {
                        System.out.print("Exception" + ne);
                    }
        %>
       
	The new book has been added <br>
	click <a href = " booklist.jsp"> here </a> to go back
    </body>
</html>