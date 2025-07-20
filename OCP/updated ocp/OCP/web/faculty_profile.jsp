<!DOCTYPE html> <!-- The new doctype -->
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title> Faculty Profile </title>
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
            window.location.hash="no-back-button";
            window.location.hash="Again-No-back-button";//again because google chrome don't insert first hash into history
            window.onhashchange=function(){window.location.hash="no-back-button";}
        </script>
    </head>

    <body>
        <p><%! String name, dob, doj, sex, address, email, contact, pwd, desig, course, qualify, id2 = null;%>
            <%
                String email, name, id;

            %>
            <%          request.getAttribute("email1");
                request.getSession();
            %>
            <%
                id = (String) session.getAttribute("id");
                name = (String) session.getAttribute("name");
                dob = (String) session.getAttribute("dob");
                doj = (String) session.getAttribute("doj");
                sex = (String) session.getAttribute("sex");
                address = (String) session.getAttribute("address");
                email = (String) session.getAttribute("email");
                contact = (String) session.getAttribute("contact");
                pwd = (String) session.getAttribute("pwd");
                desig = (String) session.getAttribute("desig");
                course = (String) session.getAttribute("course");
                qualify = (String) session.getAttribute("qualify");
            %></p>
       	<section id="page"> <!-- Defining the #page section with the section tag -->
            <header> <!-- Defining the header section of the page with the appropriate tag -->
                <hgroup>
                    <h1 align="center" class="style1"><strong> Online   Course   Portal </strong></h1>
                </hgroup>

                <nav class="clear">
                    <ul>
                        <li><a href="faculty_profile_edit - Copy.jsp">Edit Profile</a> </li>
                        <li><a href="pre_upload.jsp">Upload</a></li>
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
                    <h3 class="style1">Faculty Profile</h3>
                    <div class="line"></div>

                    <div class="articleBody clear">
                        <figure> 
                            <div align="justify"></div>
                            <img src="img/faculty.jpg" width="560" height="300">
                        </figure>
                        <!-- Editing is done here-->

                        <form action="" method="post" >
                            <table width="493" border="0" cellpadding="0" cellspacing="0">
                                <p class="style7">Welcome <%=name%></p>

                                <p class="style7">You can Click on the above Menus & enjoy the various Services </p>
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
