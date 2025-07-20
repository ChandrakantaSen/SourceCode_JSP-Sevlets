<%@ page contentType = "text/html"%>
<%@ page pageEncoding = "UTF-8"%>
<%@page language = "java" import = "java.sql.*,java.io.*"%>
<jsp:useBean id = "book" class = "stockofbooks.Books"/>

<html>
	<head>
	<title>Delete books </title>
	</head>
	<body>
		<% try{
		String[] keys = request.getParameterValues("pkey");
		book.connect();
		book.removeBooks(keys);
		book.disconnect();
		}catch(Exception e){
		System.out.print("Exception"+e);
		}
		%>
		selected books have been deleted <br>
		click<a href = "booklist.jsp"<b> here
		</b></a> to get back
	</body>
</html>
