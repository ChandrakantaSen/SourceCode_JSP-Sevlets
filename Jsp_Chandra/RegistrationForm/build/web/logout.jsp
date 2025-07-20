<%-- 
    Document   : logout
    Created on : Jan 22, 2014, 1:14:08 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body align="center">
        <table>
            <tr>
                <td>
                    <% session.invalidate(); %>
                    <h1>you are succesfully logout!</h1>
                </td>
            </tr>
        </table>
        
    </body>
</html>
