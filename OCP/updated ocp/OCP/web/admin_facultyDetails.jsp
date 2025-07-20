<%@page contentType ="text/html"%>
<%@ page pageEncoding ="UTF-8"%>
<%@page language = "java" import = "java.sql.*,java.io.*,java.util.*"%>
<jsp:useBean id = "ocp" class ="newpackage.NewClass"></jsp:useBean>
    <!DOCTYPE html> <!-- The new doctype -->
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
            <title>Faculty Details</title>
            <link rel="stylesheet" type="text/css" href="styles3.css" />

            <!-- Internet Explorer HTML5 enabling code: -->

            <!--[if IE]>
            
            
            <style type="text/css">
            .clear {
              zoom: 1;
              display: block;
            }
            </style>
            <![endif]--> 
            <style type="text/css">
                <!--
                .style1 {font-size: 3em}
                .style7 {font-size: 1.5em}
                .style8 {font-size: 1em}
                .style11 {font-size: 2em}
                -->
            </style>
            <script type="text/JavaScript">

            </script>
        </head>

        <body>
        <%
            String email = null;
            email = (String) session.getAttribute("email");
            //pwd=(String)session.getAttribute("pwd");
            if (email == null) {
                response.sendRedirect("login.jsp");
            }
        %>
        <section id="page"> <!-- Defining the #page section with the section tag -->
            <header> <!-- Defining the header section of the page with the appropriate tag -->
                <hgroup>
                    <h1 align="center" class="style1"><strong> Online   Course   Portal </strong></h1>
                </hgroup>

                <div id="horizontalmenu">
                    <ul>
                        <li><a href="admin.jsp">Home</a></li>
                        <li>View Profiles
                            <ul>
                                <li><a href="admin_studentView.jsp">Student Details</a></li>
                                <li><a href="admin_facultyDetails.jsp">Faculty Details</a></li>
                            </ul>
                        </li>
                        <li>Add Services
                            <ul>
                                <li><a href="register_1.jsp">Add Faculty</a></li>
                                <li><a href="addcourse.jsp">Add Courses</a></li> 
                            </ul>
                        </li>
                        <li><a href="feedback.jsp">Feedbacks</a></li>
                        <li><a href="addAnnounce.jsp">Announcements</a></li>
                        <li>Exams
                            <ul>
                                <li><a href="">Set Exam</a></li>
                                <li><a href="">View Results</a></li>
                            </ul>
                        </li>
                        <li><a href="logout.jsp">Logout</a></li>
                    </ul>
                </div>
            </header>

            <section id="articles"> <!-- A new section with the articles -->

                <!-- Article 1 start -->

                <div class="line"></div>  <!-- Dividing line -->

                <article id="article1"> <!-- The new article tag. The id is supplied so it can be scrolled into view. -->

                    <h3 class="style1">Faculty Details</h3>
                    <div class="line"></div>

                    <div class="articleBody clear">

                        <!-- Editing is done here-->

                        <form action = "delete.jsp" method = "POST">
                            <center><table border = "1" cellspacing>
                                    <thead>
                                        <tr>
                                            <th> REGN NO. </th>
                                            <th> NAME </th>
                                            <th> DOB </th>
                                            <th> DOJ </th>
                                            <th> SEX </th>
                                            <th> ADDRESS </th>
                                            <th> EMAIL/USERNAME </th>
                                            <th> CONTACT </th>
                                            <th> PASSWORD </th>
                                            <th> DESIGNATION </th>
                                            <th> COURSE </th>
                                            <th> QUALIFICATION </th>
                                        </tr>
                                    </thead>
                                    <%
                                        try {
                                            ocp.connect();
                                            ResultSet rs = null;
                                            rs = ocp.viewFacultyDetails();
                                            while (rs.next()) {

                                    %>
                                    <tr>
                                        <td><input type ="checkbox" name = "pkey" value ="<%=rs.getString("id")%>" required=""/> <%=rs.getString("id")%></td>
                                        <td><%=rs.getString("name")%></td>
                                        <td><%=rs.getString("dob")%></td>
                                        <td><%=rs.getString("doj")%></td>
                                        <td><%=rs.getString("sex")%></td>
                                        <td><%=rs.getString("address")%></td>
                                        <td><%=rs.getString("email")%></td>
                                        <td><%=rs.getString("contact")%></td>
                                        <td><%=rs.getString("pwd")%></td>
                                        <td><%=rs.getString("desig")%></td>
                                        <td><%=rs.getString("course")%></td>
                                        <td><%=rs.getString("qualify")%></td>

                                    </tr>
                                    <%
                                        } //end while

                                    %>
                                </table></center><br>
                            Check Faculty ID for deletion....
                            <input type ="submit" value = "Delete"/>
                        </form>
                        <%                                ocp.disconnect();
                            } catch (Exception sqle) {
                                System.out.print("Exception" + sqle);
                            }
                        %>
                    </div></article>

                <!-- Article 1 end -->
            </section>

            <!-- Footer Part Starts Here -->
            <footer>
                <p> Calcutta Institute of Technology </p> 
                <a href="#" class="up">Go UP</a>
                <a href="#" class="by">MCA 6th Sem</a>	      </footer>
            <!-- Footer Part Ends Here -->
        </section> 
        <!-- Closing the #page section -->

        <!-- JavaScript Includes -->


        <script src="jquery.scrollTo-1.4.2/jquery.scrollTo-min.js"></script>
        <script src="script.js"></script>
    </body>
</html>
