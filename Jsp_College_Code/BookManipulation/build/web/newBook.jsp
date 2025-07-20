<%@ page contentType = "text/html"%>
<%@ page pageEncoding = "UTF-8"%>
<html>
    <head>
        <title> Add A New Book </title>
    </head>
    <body>
        <h4 align="center"> Enter following...</h4>
        <form action ="add.jsp" method = "POST">


            <table border="0" align="center">

                <tbody>
                    <tr>
                        <td align="right">Book-id:</td>
                        <td><input type="text" name ="id" size = "30"/></td>
                    </tr>
                    <tr>
                        <td align="right">Title :
                        </td>
                        <td><input type = "text" name ="title" size = "30"/></td>
                    </tr>
                    <tr>
                        <td align="right">Price :
                        </td>
                        <td><input type = "text" name ="price" size = "30"/></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type = "submit" value = " Add to list"/></td>
                    </tr>
                </tbody>
            </table></form>
    </body>
</html>
