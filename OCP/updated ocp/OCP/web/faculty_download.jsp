<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Arrays"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import= "java.sql.*"%>
<%@page import="java.io.*" %>
<jsp:useBean id="ocp" class="newpackage.NewClass"></jsp:useBean>
    <!DOCTYPE html> <!-- The new doctype -->
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
            <title> Downloads Page </title>
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

            </script>
        </head>

        <body>
        <%String course = null;
            course = request.getParameter("course");%>
        <section id="page"> <!-- Defining the #page section with the section tag -->
            <header> <!-- Defining the header section of the page with the appropriate tag -->
                <hgroup>
                    <h1 align="center" class="style1"><strong> Online   Course   Portal </strong></h1>
                </hgroup>

                <nav class="clear">
                    <ul>
                        <li><a href="faculty_profile.jsp">Profile</a> </li>
                        <li><a href="pre_upload.jsp">Upload</a></li>
                        <li><a href="faculty_profile_edit - Copy.jsp">Edit Profile</a> </li>
                        <li><a href="announce.jsp">Announces</a></li>
                        <li><a href="pre_addQuestion.jsp">Add Question</a></li>
                        <li><a href="faculty_change_password.jsp">Change Password</a></li>
                        <li><a href="logout.jsp">Logout</a></li>
                    </ul>
                </nav>
            </header>

            <section id="articles"> <!-- A new section with the articles -->

                <!-- Article 1 start -->

                <div class="line"></div>  <!-- Dividing line -->

                <article id="article1"> <!-- The new article tag. The id is supplied so it can be scrolled into view. -->
                    <h3 class="style1">Download Course Materials</h3>
                    <p class="style7"><%out.println("<b>Under " + course + " Directory</b>");%></p>
                    <div class="line"></div>

                    <div class="articleBody clear">
                        <figure> 
                            <div align="justify"></div>
                            <img src="img/Download-button-now.png" width="560" height="310">
                        </figure>
                        <!-- Editing is done here-->

                        <form action="" method="post" >
                            <p class="style7"> Click on the File to Download</p>
                            <br>
                            <table width="200" border="0" cellpadding="0" cellspacing="0">
                                <tr><td>
                                        <%

                                            System.out.println(course);
                                            File dir = new File("C:\\Users\\CIT\\Documents\\NetBeansProjects\\OCP\\web\\Course\\" + course + "\\");
                                            //dir.lastModified();
                                            //SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy HH:mm:ss");
                                            //out.println(sdf.format(dir.lastModified()));
                                            //String dt=sdf.format(dir.lastModified()).toString();
                                            //String[] dat=dt.list().;
                                            String[] files = dir.list();
                                            //Arrays.sort(files);// show the alphabetacally shorting order
                                        %>
                                        <%
                                            for (int i = 0; i < files.length; i++) {
                                                out.println("<a href='Course/" + course + "/" + files[i] + "'>" + files[i] + "</a>" + "<br>");
                                                //File file=files[i];
                                                //Date lastMod = new Date(dir.lastModified());
                                                //out.println(sdf.format(lastMod));
                                            }
                                        %>
                                    </td></tr>
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
        </section> 
        <!-- Closing the #page section -->

        <!-- JavaScript Includes -->


        <script src="jquery.scrollTo-1.4.2/jquery.scrollTo-min.js"></script>
        <script src="script.js"></script>
    </body>
</html>
