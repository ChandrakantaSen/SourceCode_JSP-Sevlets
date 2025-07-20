<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language = "java" import = "java.sql.*,java.io.*,java.util.*"%>
<jsp:useBean id="ocp" class="newpackage.NewClass"></jsp:useBean>
    <!DOCTYPE html> <!-- The new doctype -->
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
            <title> Announcements Page </title>
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
                .style2 {font-size: 24em}
                .style3 {color: #FF0000}
                .style5 {color: #FFFFFF}
                .style6 {font-size: large}
                -->
            </style>
            <script type="text/JavaScript">

            </script>
        </head>

        <body>
        <%! String date, announcement, name = null;
                                             %>
        <%
            if ((date != null) && (announcement != null) && (name != null)) {
                try {
                    date = request.getParameter("date");
                    announcement = request.getParameter("announcement");
                    name = request.getParameter("name");
                    ocp.connect();
                    ocp.addAnnounce(date, announcement, name);
                } catch (NumberFormatException e) {
                    e.printStackTrace();
                } finally {
                    ocp.disconnect();
                }
            }
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
                        <li><a href="faculty_profile_edit - Copy.jsp">Edit Profile</a></li>
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
                    <h3 class="style1">Announcements</h3>
                    <div class="line"></div>

                    <div class="articleBody clear">

                        <!-- Editing is done here-->

                        <form action="" method="post" >
                            <table width="637"  border="0" align="center" cellpadding="0" cellspacing="3">
                                <tr>
                                    <td width="70" class="style7">DATE</td>
                                    <td width="10"></td>
                                    <td width="150" class="style7">ANNOUNCEMENT</td>
                                    <td width="10"></td>
                                    <td width="50" class="style7">ANNOUNCED BY</td>
                                </tr>
                                <%
                                    try {
                                        ocp.connect();
                                        ResultSet rs = null;
                                        rs = ocp.viewAnnounce();
                                        while (rs.next()) {
                                %>
                                <tr>

                                <tr></tr>
                                <tr>
                                    <td><%=rs.getString("time")%></td>
                                    <td></td>
                                    <td><%=rs.getString("announcement")%></td>
                                    <td></td>
                                    <td><%=rs.getString("name")%></td>
                                </tr>
                                <tr>                                               
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
                <span class="style5"></span>
                <!-- Article 1 end -->
            </section>

            <!-- Footer Part Starts Here -->
            <span class="style3"></span>
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
