<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
String[] stArray={"bob","riche","jacky","rosy"};
%>

<html>
<body>
    <%
     int i=0;
     for(i=0;i<stArray.length;i++)
     {
      out.print("stArray Elements       :"+stArray[i]+"<br/>");
     }
    %>
</body>
</html>