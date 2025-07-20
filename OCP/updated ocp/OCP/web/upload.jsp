<%@page import="java.sql.ResultSet"%>
<%@ page language="java" %>
<jsp:useBean id="ocp" class="newpackage.NewClass"></jsp:useBean>
    <!DOCTYPE html> <!-- The new doctype -->
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
            <title> Upload Page </title>
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
                .style11 {font-size: 2em}
                -->
            </style>
            <script type="text/JavaScript">
                function print()
                {
                alert(document.getElementById("course").selectedIndex);
                }
            </script>
        </head>

        <body>
        <% String course = null;
            course = request.getParameter("course");
            session.setAttribute("course", course);
        %>
        <section id="page"> <!-- Defining the #page section with the section tag -->
            <header> <!-- Defining the header section of the page with the appropriate tag -->
                <hgroup>
                    <h1 align="center" class="style1"><strong> Online   Course   Portal </strong></h1>
                </hgroup>

                <nav class="clear">
                    <ul>
                        <li><a href="faculty_profile.jsp">Profile</a> </li>
                        <li><a href="faculty_profile_edit - Copy.jsp">Edit Profile</a></li>
                        <li><a href="faculty_pre_download.jsp">Downloads</a> </li>
                        <li><a href="announce.jsp">Announces</a></li>
                        <li><a href="pre_addQuestion.jsp">Add Question</a></li>
                        <li><a href="faculty_change_password.jsp">Change Pwd</a></li>
                        <li><a href="logout.jsp">Logout</a></li>
                    </ul>
                </nav>
            </header>

            <section id="articles"> <!-- A new section with the articles -->

                <!-- Article 1 start -->

                <div class="line"></div>  <!-- Dividing line -->

                <article id="article1"> <!-- The new article tag. The id is supplied so it can be scrolled into view. -->
                    <h3 class="style1">Upload Course Materials</h3><p class="style7"> Choose the File to Upload : </p>
                    <div class="line"></div>

                    <div class="articleBody clear">
                        <figure> 
                            <div align="justify"></div>
                            <img src="img/file-upload.jpg" width="630" height="340">
                        </figure>
                        <!-- Editing is done here-->

                        <FORM action="upload1.jsp" method="post" enctype="multipart/form-data"  > 
                            <table width="300" border="0" cellpadding="0" cellspacing="0">

                                <tr><center><td colspan="2"><p align= "center"><center></td></tr> 

                                        <tr><td><INPUT NAME="F1" TYPE="file" required=""></td></tr>
                                        <tr><td>&nbsp;</td></tr>
                                        <tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <INPUT TYPE="submit" VALUE="Upload File" ></td></tr> 
                                        </table>
                                        </FORM>
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
