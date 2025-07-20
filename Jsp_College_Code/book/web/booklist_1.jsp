<%@page contentType ="text/html"%>
<%@ page pageEncoding ="UTF-8"%>
<%@page language = "java" import = "java.sql.*,java.io.*,java.util.*"%>
<jsp:useBean id = "book" class ="stockofbooks.Books"/>
<html>
    <head>
        <title> Library Database</title>
    </head>
    <body>
        <%!int i = 0;%>
        <h1> List of books...</h1>
        <a href = "newBook.jsp"> Add more books</a>

        <center><table border = "1">
                <thead>
                    <tr>
                        <th> ID </th>
                        <th> TITLE </th>
                        <th> PRICE </th>
                    </tr>
                </thead>
                <%
                            ArrayList a = new ArrayList();
                            ArrayList a1 = new ArrayList();
                            try {
                                book.connect();
                                ResultSet rs = null;
                                rs = book.viewBooks();
                                int count = 0;

                                while (rs.next()) {
                                    count++;
                                    a.add(rs.getString("title"));
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
			<%=count%>
        <form action="booklist_1.jsp" method="post">

            <%
                                                out.print(a.get(i));
                                                i++;
            %>
            <input type="submit" value="Next">
        </form>
            
      

            <%

                        book.disconnect();
                    } catch (Exception sqle) {
                        System.out.print("Exception" + sqle);
                    }
        %>

    </body>
</html>