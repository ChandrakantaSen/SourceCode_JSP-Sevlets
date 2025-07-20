<%@ page session="true" %>
<%@ page contentType="text/html"%> 
<%@page language="java" import ="javax.sql.*,java.sql.*" %> 
<jsp:useBean id="bus" class="busFare.detailFare"/>
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bus Detail Save</title>
    </head>
    <body>
        <p>&nbsp;</p>
        <p align="center"><font size="3" color="Blue"><b>Detail saved.</b></font></p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <%
            String getRouteno = (String) session.getAttribute("Routeno");
            String getInitpoint = (String) session.getAttribute("InitPoint");
            String getEndpoint = (String) session.getAttribute("Endpoint");
            String getBustype= (String) session.getAttribute("Bustype");
            
        %>
        <table align="center" >
            <tr>
                <td width="100%"><form action="entryPage_busdetail.jsp" method="post">
                        <P><input type="hidden" name="txtBusrouteno" size="17" style="border: 1px solid #99CCFF" readonly value="<%=getRouteno%>"></P>
                        <P><input type="hidden" name="txtInitpoint" size="17" style="border: 1px solid #99CCFF" readonly value="<%=getInitpoint%>"></P>
                        <P><input type="hidden" name="txtEndpoint" size="17" style="border: 1px solid #99CCFF" readonly value="<%=getEndpoint%>"></P>
                        <P><input type="hidden" name="cmbRoutetype" size="13" style="border: 1px solid #99CCFF" readonly value="<%=getBustype%>"></P>
                        <P><input type="submit" value="Add to Same Route" name="btnSubmit" /></P>
                
                </form></td>
            </tr>
        </table>
        
        <%
            try {
                String ROUTENO1 = request.getParameter("txtBusrouteno");
                String INITPOINT1 = request.getParameter("txtInitpoint");
                String ENDPOINT1 = request.getParameter("txtEndpoint");
                String STOPSRL1 = request.getParameter("txtStopserial");
                String STOPPAGE1 = request.getParameter("txtStoppagename");
                String DISTANCE1 = request.getParameter("txtDistance");
                String TYPE1 = request.getParameter("txtType");
                String FARE1 = null;
        %> <br><br><br>
        
        <%
                bus.connect();
                bus.add(ROUTENO1, INITPOINT1, ENDPOINT1, STOPSRL1, STOPPAGE1, DISTANCE1, FARE1,TYPE1);
                bus.disconnect();

            } catch (Exception e) {
                e.printStackTrace();
            }
        %> 
        <table align="center">
            <tr>
                <td><input type="button" value="Add to Another Route" name="btnButton" onclick="document.location.href='routeMaster.jsp'"/></td>
                
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" value="Back to Main Page" name="btnButton" onclick="document.location.href='index.jsp'"/></td>
            </tr>
        </table>
        
    </body>
</html>