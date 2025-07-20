<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date" %>
<%@page import="java.sql.*"%>
<jsp:useBean id="ocp" class="newpackage.NewClass"></jsp:useBean>
    <!DOCTYPE html> <!-- The new doctype -->
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
            <title> Add Announce Page </title>
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
        <%  Integer dt = 0;
            String s = null;
            Date date = new Date();
            DateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy");
            //dt=Integer.parseInt(dateFormat.format(date));
            s = dateFormat.format(date).toString();
            System.out.println(s);
            System.out.println(dateFormat.format(date));
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
                    <h3 class="style1">Add Announcements</h3>
                    <div class="line"></div>

                    <div class="articleBody clear">
                        <figure> 
                            <div align="justify"></div>
                            <img src="img/announce.jpg" width="560" height="300"></figure>
                        <!-- Editing is done here-->

                        <form action="after_announce.jsp" method="post" >
                            <table width="393" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td width="100" height="40" class="style7">Date :</td>
                                    <td><input name="date" type="text" size="20" value="<%=s%>" required=""/></td>
                                </tr>				
                                <tr>
                                    <td width="150" height="40" class="style7">Announcement :</td>
                                    <td>
                                        <textarea name="announcement" cols="25" placeholder="Enter the Announcement" required=""></textarea>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="100" height="40" class="style7">Name :</td>
                                    <td><input name="name" type="text" size="30" maxlength="30" placeholder="Announced By" required=""/></td>
                                </tr>
                                <tr><td>&nbsp;</td></tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input name="button1" type="reset" value="CLEAR" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input name="button2" type="submit" value="ADD" />					  </td>
                                </tr>
                            </table>
                        </form>
                    </div></article>

                <!-- Article 1 end -->
            </section>

            <!-- Footer Part Starts Here -->
            <footer>
                <p> Calcutta Institute of Technology </p> 
                <a href="#" class="up">Go UP</a>
                <a href="#" class="by">MCA 6th Sem</a>	      </footer>
            <!-- Footer Part Ends Here -->
        </section> <!-- Closing the #page section -->

        <!-- JavaScript Includes -->


        <script src="jquery.scrollTo-1.4.2/jquery.scrollTo-min.js"></script>
        <script src="script.js"></script>
    </body>
</html>
