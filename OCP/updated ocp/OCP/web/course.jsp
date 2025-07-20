<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language = "java" import = "java.sql.*,java.io.*,java.util.*"%>
<jsp:useBean id="ocp" class="newpackage.NewClass"></jsp:useBean>
    <!DOCTYPE html> <!-- The new doctype -->
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
            <title> Courses Page </title>

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
                #page #articles #article1 .articleBody.clear form table tr td {
                    font-family: "Times New Roman", Times, serif;
                }
                #page #articles #article1 .articleBody.clear form table {
                    font-size: 18px;
                    font-family: Tahoma, Geneva, sans-serif;
                }
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
                            <li><a href="index.jsp">Home</a> </li>
                            <li><a href="about.jsp">About Us</a></li>
                            <li><a href="register.jsp">Register</a></li>
                            <li><a href="contact.jsp">Contact Us</a></li>
                            <li><a href="login.jsp">Sign In</a></li>
                        </ul>
                    </nav>
                </header>

                <section id="articles"> <!-- A new section with the articles -->

                    <!-- Article 1 start -->

                    <div class="line"></div>  <!-- Dividing line -->

                    <article id="article1"> <!-- The new article tag. The id is supplied so it can be scrolled into view. -->
                        <h3 class="style1"> Courses </h3>
                        <div class="line"></div>

                        <div class="articleBody clear">
                            <figure> 
                                <div align="justify"><img src="img/course-packet.jpg" width="580" height="300"/></div>
                            </figure>
                            <!-- Editing is done here-->

                            <form action="" method="post" >
                                <table border="0" cellpadding="0" cellspacing="15">
                                    <thead>
                                        <tr>
                                            <th> NAME </th>
                                            <th> DURATION </th>
                                            <th> FEES </th>
                                        </tr>
                                    </thead>
                                <%
                                    try {
                                        ocp.connect();
                                        ResultSet rs = null;
                                        rs = ocp.viewCourses();
                                        while (rs.next()) {
                                %>
                                <tr>
                                    <td><%=rs.getString("cname")%></td>
                                    <td><%=rs.getString("duration")%></td>
                                    <td><%=rs.getString("fees")%></td>
                                </tr>
                                <%
                                    } //end while
                                %>
                            </table>
                            <%
                                    ocp.disconnect();
                                } catch (Exception sqle) {
                                    System.out.print("Exception" + sqle);
                                }
                            %>
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
