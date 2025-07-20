<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %> 
<%@ page import="java.sql.*" %> 
<jsp:useBean id="ocp" class="newpackage.NewClass"></jsp:useBean>
    <!DOCTYPE html> <!-- The new doctype -->
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
            <title> After Registration Page </title>
            <link rel="stylesheet" type="text/css" href="styles.css" />

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
        <%! String name, dob, sex, address, email, contact, pwd, desig, course, qualify, id2 = null;%>
        <%Integer id1 = 0;%>
        <%request.getAttribute("id");%>
        <%request.getSession();%>

        <form name= "afterRegn" action="login.jsp" method="post">  
            <%
                try {
                    id1 = (Integer) session.getAttribute("id1");
                    id2 = (String) session.getAttribute("id2");
                    name = request.getParameter("name");
                    dob = request.getParameter("dob");
                    sex = request.getParameter("sex");
                    address = request.getParameter("address");
                    email = request.getParameter("email");
                    contact = request.getParameter("contact");
                    pwd = request.getParameter("pwd");
                    desig = request.getParameter("desig");
                    course = request.getParameter("course");
                    qualify = request.getParameter("qualify");
                } catch (Exception e) {
                    e.printStackTrace();
                }
                ocp.connect();
                ocp.add_student_profile(id2, name, dob, sex, address, email, contact, pwd, desig, course, qualify);
                ocp.add_student_id(id1);
                ocp.add_log(email, desig);
                ocp.disconnect();
            %>
            <section id="page"> <!-- Defining the #page section with the section tag -->
                <header> <!-- Defining the header section of the page with the appropriate tag -->
                    <hgroup>
                        <h1 align="center" class="style1"><strong> Online   Course   Portal </strong></h1>
                    </hgroup>

                    <nav class="clear">
                        <ul>
                            <li><a href="index.jsp">Home</a> </li>
                            <li><a href="about.jsp">About Us</a></li>
                            <li><a href="course.jsp">Courses</a></li>
                            <li><a href="contact.jsp">Contact Us</a></li>
                            <li><a href="register.jsp">Register</a></li>
                        </ul>
                    </nav>
                </header>
                <section id="articles"> 
                    <div class="line"></div>        
                    <article id="article1">
                        <h3 class="style1">Your Registration was Successful</h3>
                        <div class="line"></div>  
                        <div class="articleBody clear">
                            <figure> 
                                <div align="justify"><img src="img/3-d154s.jpg" width="600" height="310"></div>
                            </figure>

                            <table width="450" border="0" cellpadding="0" cellspacing="0">    

                                <p class="style7">You may now Login with your<br>Username & Password</p>

                                <p class="style7"><a href = "login.jsp">Click Here</a> to Login</p>

                            </table>

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
