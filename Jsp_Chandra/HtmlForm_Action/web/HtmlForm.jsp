<%-- 
    Document   : index
    Created on : Jan 8, 2014, 11:47:54 AM
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
        &nbsp;&nbsp;
        <form name="input" action='HtmlFormAction.jsp' method="post">
        <table border="0" align='center'>
            <tr>
                <td>Name: &nbsp;</td>
                <td><input type='text' name='Name' value='' placeholder="Enter the name" size="20"></td>
            </tr>
            <tr>
                <td>Address: &nbsp;</td>
                <td><input type='text' name='Address' value='' placeholder="Enter the address" size="20"></td>
            </tr>
            <tr>
                <td>Phone No.: &nbsp; </td>
                <td><input type="text" name="Phone No" value=" " placeholder="Enter"></td>
            </tr>
            <tr>
                <td>    </td>
                <td><input type="submit" value='submit'></td>
            </tr>
        </table>
        </form>
    </body>
</html>
