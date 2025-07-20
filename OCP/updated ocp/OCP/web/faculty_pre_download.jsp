<%@page import="java.sql.ResultSet"%>
<jsp:useBean id="ocp" class="newpackage.NewClass"></jsp:useBean>
    <!DOCTYPE html> <!-- The new doctype -->
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
            <title> Faculty Download </title>
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
                        <h3 class="style1">Downloads</h3><p class="style7">Select your Subject to Download</p>
                        <div class="line"></div>

                        <div class="articleBody clear">
                            <figure> 
                                <div align="justify"></div>
                                <img src="img/Download-button-now.png" width="580" height="300">
                            </figure>
                            <!-- Editing is done here-->

                            <form action="faculty_download.jsp" method="post" >
                                <table width="393" border="0" cellpadding="0" cellspacing="0">
                                    <tr><td class="style7" width="188">Choose Course :</td><td><select name="course" required="">
                                                <option></option>
                                            <%
                                                try {
                                                    ocp.connect();
                                                    ResultSet rs1 = null;
                                                    rs1 = ocp.viewCourses();
                                                    while (rs1.next()) {
                                            %>
                                            <option value="<%=rs1.getString(2)%>"><%=rs1.getString(2)%></option>
                                            <%
                                                    }//end while
                                                } catch (Exception e) {
                                                    e.printStackTrace();
                                                }
                                            %>
                                        </select></td></tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr><td></td><td><INPUT TYPE="submit" VALUE="Go To Downloads" ></td></tr>
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
