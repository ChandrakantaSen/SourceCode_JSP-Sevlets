<%@ page session="true" %>
<%@ page contentType="text/html"%> 
<%@page language="java" import ="javax.sql.*,java.sql.*" %> 
<jsp:useBean id="bus" class="busFare.detailFare"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Entry Page</title>
    </head>
    <body>
        <script language="javascript">
            function check(){
                var stopsrl=document.form1.txtStopserial.value;
                var stopname=document.form1.txtStoppagename.value;
                var distance=document.form1.txtDistance.value;
                if(stopsrl==""){
                    alert('Stoppage Serial should not be blank')
                    return false;
                }
                if(isNaN(stopsrl)){
                    alert('Stoppage Serial should be in numeric')
                    return false;
                }
                if(stopname==""){
                    alert('Stoppage Name should not be blank')
                    return false;
                }
                if(distance==""){
                    alert('Distance should not be blank')
                    return false;
                }
                if(isNaN(distance)){
                    alert('Distance should be in numeric')
                    return false;
                }
            }
        </script>
        <%
            String routeno = request.getParameter("txtBusrouteno");
            session.setAttribute("Routeno", routeno);
            String initpoint = request.getParameter("txtInitpoint");
            session.setAttribute("InitPoint", initpoint);
            String endpoint = request.getParameter("txtEndpoint");
            session.setAttribute("Endpoint", endpoint);
            String bustype = request.getParameter("cmbRoutetype");
            session.setAttribute("Bustype", bustype);
        %>
        <%
            String getRouteno = (String) session.getAttribute("Routeno");
            String getInitpoint = (String) session.getAttribute("InitPoint");
            String getEndpoint = (String) session.getAttribute("Endpoint");
            String getBustype = (String) session.getAttribute("Bustype");
        %>
        <form action="addBusdetails.jsp" method="post" name="form1" onsubmit="return check()"> 
            <p>&nbsp;</p>
            <p align="center"><u><b><font size="5" color="#333399">Route Details Entry</font></b></u></p>
            <div align="center">
                <center>
                    
                    <table border="2" cellspacing="0" width="95%" id="AutoNumber1" style="border-collapse: collapse" bordercolor="#000066" cellpadding="0" height="138">
                        <tr>
                            <td width="100%" height="138"><br>
                                <br>
                                <br>
                                &nbsp;<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="102%" id="AutoNumber2" height="123">
                                    <tr>
                                        <td width="14%" height="39">
                                            <p align="right"><font color="#000066">Route No. : </font>&nbsp;&nbsp;&nbsp;
                                        </td>
                                        <td width="16%" height="39">&nbsp;&nbsp;
                                            <input type="text" name="txtBusrouteno" size="17" style="border: 1px solid #99CCFF" readonly value="<%=getRouteno%>">
                                        </td>
                                        <td width="6%" height="39">
                                            <p align="right">
                                            <font color="#000066">Type :&nbsp;&nbsp;&nbsp;
                                            </font>
                                        </td>
                                        <td width="14%" height="39">
                                            &nbsp;
                                        <input type="text" name="cmbRoutetype" size="13" style="border: 1px solid #99CCFF" readonly value="<%=getBustype%>"></td>
                                        <td width="11%" height="39">
                                            <p align="right"><font color="#000066">Initial point :</font>&nbsp;&nbsp;&nbsp;&nbsp;
                                        </td>
                                        <td width="15%" height="39">&nbsp;&nbsp;
                                        <input type="text" name="txtInitpoint" size="17" style="border: 1px solid #99CCFF" readonly value="<%=getInitpoint%>"></td>
                                        <td width="9%" height="39">
                                            <p align="right"><font color="#000066">End Point :</font>&nbsp;&nbsp;&nbsp;
                                        </td>
                                        <td width="18%" height="39">&nbsp;&nbsp;
                                        <input type="text" name="txtEndpoint" size="10" style="border: 1px solid #99CCFF" readonly value="<%=getEndpoint%>"></td>
                                    </tr>
                                    <tr>
                                        <td width="14%" height="52">
                                            <p align="right"><font color="#000066">Stoppage Serial :</font>&nbsp;&nbsp;&nbsp;&nbsp;
                                        </td>
                                        <td width="16%" height="52">&nbsp;&nbsp;
                                        <input type="text" name="txtStopserial" size="17" style="border: 1px solid #99CCFF"></td>
                                        <td width="31%" height="52" colspan="3">
                                            <p align="right"><font color="#000066">Stoppage Name :</font>&nbsp;&nbsp;&nbsp;&nbsp;
                                        </td>
                                        <td width="15%" height="52">&nbsp;&nbsp;
                                        <input type="text" name="txtStoppagename" size="17" style="border: 1px solid #99CCFF"></td>
                                        <td width="9%" height="52">
                                            <p align="right"><font color="#000066">Distance :</font>&nbsp;&nbsp;&nbsp;
                                        </td>
                                        <td width="18%" height="52">&nbsp;&nbsp;
                                        <input type="text" name="txtDistance" size="10" style="border: 1px solid #99CCFF"></td>
                                    </tr>
                                    
                                </table>
                                
                                <p>
                                
                                <p align="center">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <input type="submit" value="  Save  " name="btnSave">&nbsp;
                                <input type="reset" value="  Reset  " name="btnRst"></p>
                                
                            &nbsp;</td>
                        </tr>
                        
                    </table>
                    
                </center>
            </div><br>
            <table border="1" align="center" cellspacing="1" width="95%" id="AutoNumber1" bordercolorlight="pink" bordercolordark="pink">
                <tr>
                    <td width="33%">
                    <p align="center"><b><font color="#000066">Stoppage Serial</font></b></td>
                    <td width="33%">
                    <p align="center">&nbsp;<font color="#000066"><b>Stoppage Name</b></font></td>
                    <td width="34%">
                    <p align="center"><b><font color="#000066">&nbsp;Distance</font></b></td>
                </tr>
                <%
            try {
                bus.connect();
                ResultSet rs = null;
                %>
                <%
                    try {
                        rs = bus.getBusroute(getRouteno);
                        for (int i = 1; rs.next(); ++i) {
                            String str = rs.getString(4);
                            String str1 = rs.getString(5);
                            String str2 = rs.getString(6);
                %>      
                <tr>
                    <td width="33%" align="center"><%=str%></td>
                    <td width="33%" align="center"><%=str1%></td>
                    <td width="34%" align="center"><%=str2%></td>
                </tr>
                <%
                    }
                %> 
                <%
                    } catch (Exception e) {
                        out.print("CAN NOT RETRIEVE FROM temproute table");
                    }
                %>
                <%
                bus.disconnect();
            } catch (Exception e) {
            }
                %> 
            </table>
            <table align="center">
                <tr>
                    <td><input type="button" value="Last Stoppage Added" name="btnButton" onclick="document.location.href='lastRouteadded.jsp'"/></td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="button" value="Back to Main Page" name="btnButton" onclick="document.location.href='index.jsp'"/></td>
                </tr>
            </table>
        </form>
        
    </body>
</html>
