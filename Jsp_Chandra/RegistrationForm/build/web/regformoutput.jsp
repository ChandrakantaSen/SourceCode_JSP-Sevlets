<%-- 
    Document   : regformoutput
    Created on : Jan 21, 2014, 5:57:04 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="stylesheet.css" />
        <script type="text/javascript" src="stopwatch.js"></script>
        <title>Registration Form Output</title>
        <%! String fname1,lname1,sex1,dept1,caste1,address1,city1,email1=null; 
            int roll1,year1,pincode1=0;
        %>
        <jsp:useBean id="course" class="myPacakge.myclass"></jsp:useBean>

    </head>
    <body id="startstoptimer" onLoad="startstop()" style="font-weight:bold" >
        
        <%
            try{
                fname1=request.getParameter("fname");
                lname1=request.getParameter("lname");
                sex1=request.getParameter("sex");
                dept1=request.getParameter("dept");
                caste1=request.getParameter("caste");
                address1=request.getParameter("add");
                city1=request.getParameter("city");
                email1=request.getParameter("email");
                roll1=Integer.parseInt(request.getParameter("roll"));
                year1=Integer.parseInt(request.getParameter("year"));
                pincode1=Integer.parseInt(request.getParameter("pincode"));
                
                
                course.connect();
                course.addRegdata(fname1,lname1,sex1,dept1,caste1,address1,city1,email1,roll1,year1,pincode1);
                course.disconnect();
            }catch(NumberFormatException e){
                e.printStackTrace();
            }
        %>
      <table border="0" align="right">
                <tr>
                    <td>
                        <div>
                            <input id="clock" type="text" value="00:00" 
                            style="text-align:center; 
                            background-color:white;
                            border:0px solid gray;
                            font-weight:bold;
                            font-size:14pt;" readonly>
                        </div>
                    </td>
                </tr>	
            </table>     
        <!-- Jsp code starts here -->
       <form action="logout.jsp" method="post">
        <table border="0" align='center'> &nbsp;&nbsp;
            <tr>
                <td>First Name: &nbsp;</td>
                <td><%= fname1 %></td>
            </tr>
            <tr>
                <td>Last Name: &nbsp;</td>
                <td><%= lname1 %></td>
            </tr>
            <tr>
                <td>Sex: &nbsp;</td>
                <td> <%= sex1 %></td>
            </tr>
            <tr>
                <td>Roll: &nbsp;</td>
                <td><%= roll1 %></td>
            </tr>
            <tr>
                <td>Year: &nbsp;</td>
                <td><%= year1 %></td>
            </tr>
            <tr>
                <td>Departments: &nbsp;</td>
                <td><%= dept1 %></td>
            </tr>
            <tr>
                <td>Caste: &nbsp;</td>
                <td><%= caste1 %></td>
            </tr>
            <tr>
                <td>Address: &nbsp;</td>
                <td><%
                      StringBuffer obj = new StringBuffer(address1);
                        int loc = (new String(obj)).indexOf('\n');
                        while(loc > 0){
                            obj.replace(loc, loc+1, "<BR>");
                            loc = (new String(obj)).indexOf('\n');
                        }
                        out.println(obj); %>
                </td>
            </tr>
            <tr>
                <td>City: &nbsp;</td>
                <td><%= city1 %></td>
            </tr>
            <tr>
                <td>Pincode: &nbsp;</td>
                <td><%= pincode1 %></td>
            </tr>
            <tr>
                <td>Email: &nbsp;</td>
                <td><%= email1 %></td>
            </tr>
            <tr>
                <td> </td>
                <td><input type="button" name="logout" value="Logout"></td>
            </tr>
        </table>
            </form>
    </body>
</html>
