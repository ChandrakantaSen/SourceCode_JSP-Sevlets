<%-- 
    Document   : HtmlFormAction
    Created on : Jan 8, 2014, 12:05:13 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
     <table border="0" align='center'>
            <tr>
                <td>Name: &nbsp;</td>
                <td><%= request.getParameter("Name")%></td>
            </tr>
            <tr>
                <td>Address: &nbsp;</td>
                <td><%= request.getParameter("Address")%></td>
            </tr>
        </table>
    </body>
</html>
