<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %> 
<%@ page import="java.sql.*" %> 
<jsp:useBean id="ocp" class="newpackage.NewClass"></jsp:useBean>
    <!DOCTYPE html> <!-- The new doctype -->
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
            <title>Student Change Password</title>


            <link rel="stylesheet" type="text/css" href="styles1.css" />

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
                .style9 {font-size: 1.25em}
                .style11 {font-size: 2em}
                -->
            </style>
            <script type="text/JavaScript">

            </script>
        </head>

        <body>
        <%! String pwd, desig, id;%>
        <%request.getAttribute("id");%>
        <%request.getSession();%>
        <form name= "faculty_afterchangepassword" action="" method="post">  
            <%
                try {
                    id = (String) session.getAttribute("id");
                    pwd = request.getParameter("pwd");
                    desig = (String) session.getAttribute("desig");
                } catch (Exception e) {
                    e.printStackTrace();
                }
                ocp.connect();
                ocp.chngPwd(pwd, desig, id);
                ocp.disconnect();
            %>
            <section id="page"> <!-- Defining the #page section with the section tag -->
                <header> <!-- Defining the header section of the page with the appropriate tag -->
                    <hgroup>
                        <h1 align="center" class="style1"><strong> Online   Course   Portal </strong></h1>
                    </hgroup>

                    <nav class="clear">
                        <ul>
                            <li><a href="faculty_profile.jsp">Profile</a> </li>
                            <li><a href="pre_upload.jsp">Upload</a></li>
                            <li><a href="faculty_pre_download.jsp">Downloads</a> </li>
                            <li><a href="announce.jsp">Announces</a></li>
                            <li><a href="pre_addQuestion.jsp">Add Question</a></li>
                            <li><a href="faculty_profile_edit - Copy.jsp">Edit Profile</a> </li>
                            <li><a href="logout.jsp">Logout</a></li>
                        </ul>
                    </nav>
                </header>
                <section id="articles"> 
                    <div class="line"></div>        
                    <article id="article1">
                        <h3 class="style1">Password Change Successful</h3>
                        <div class="line"></div>  
                        <div class="articleBody clear">
                            <figure> 
                                <div align="justify"><img src="img/3-d154s.jpg" width="600" height="310"></div>
                            </figure>
                            <table width="450" border="0" cellpadding="0" cellspacing="0">
                                <p class="style9">Your New Password is : <%= pwd%></p>
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
