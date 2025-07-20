<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
</head>
<body>
	<form name="frm1" method="post" action="#">
		<table border="1">
			<tr>
				<td>Enter the text value:</td>
				<td><input type="textbox" name="val1"></td>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td><input type="submit" value="submit"></td>
			</tr>
		</table>
	</form>
</body>
</html>
<%
	String myText = request.getParameter("val1");
	
	if (myText == null) 
	{
%>
	<b>you have entered NULL value</b>
<%
	} 
	else 
	{ 
		if (myText.length() == 0) 
		{
%>
			<b>Text value is empty</b>
<% 		} 
		else 
		{ 
%>
			<b>Text value is: <%= myText %></b>
<%
		}
}
%>