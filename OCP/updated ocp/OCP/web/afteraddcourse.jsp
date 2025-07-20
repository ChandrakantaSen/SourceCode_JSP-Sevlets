<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="ocp" class="newpackage.NewClass"></jsp:useBean>
<%@page import="java.io.File"%>
<%@page import="java.lang.Boolean"%>
<!DOCTYPE html> <!-- The new doctype -->
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>After Add Course </title>

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
        <%! String cid, cname, duration, fees, id2 = null;
            Integer id1 = 0;%>
        <%
            try {
                id1 = (Integer) session.getAttribute("id1");
                cid = (String) session.getAttribute("id2");
                cname = request.getParameter("cname");
                duration = request.getParameter("duration");
                fees = request.getParameter("fees");
                ocp.connect();
                ocp.addCourse(cid, cname, duration, fees);
                ocp.add_cors_id(id1);
            } catch (NumberFormatException e) {
                e.printStackTrace();
            }
            ocp.disconnect();
            //create directory block start
            cname = request.getParameter("cname");
            try {
                String s = "C:\\Users\\CIT\\Documents\\NetBeansProjects\\OCP\\web\\Course/" + cname + "";
                boolean suc = false;
                File f = new File(s);
                if (!f.isDirectory()) {
                    suc = (new File(s)).mkdirs();
                }
                if (suc) {
                    System.out.println("Success");
                    System.out.println("cname");
                    // response.sendRedirect("addcourse.jsp");
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            //create directory block close
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
                    <h3 class="style1">Add New Course</h3>
                    <div class="line"></div>

                    <div class="articleBody clear">
                        <figure> 
                            <div align="justify"><img src="img/courses.jpg" width="700" height="300"  /></div>
                        </figure>
                        <!-- Editing is done here-->

                        <form name="afteraddcourse" method="get">
                            <p class="style7"> The Course has been Added</p>
                            <table width="399" border="0" cellpadding="0" cellspacing="0">

                            </table>                 
                        </form>
                        <script type="text/javascript">

                        </script>
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
