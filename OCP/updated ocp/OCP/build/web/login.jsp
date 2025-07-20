<!DOCTYPE html> <!-- The new doctype -->
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title> Login Page </title>
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

            <section id="articles"> <!-- A new section with the articles -->

                <!-- Article 1 start -->

                <div class="line"></div>  <!-- Dividing line -->

                <article id="article1"> <!-- The new article tag. The id is supplied so it can be scrolled into view. -->
                    <h3 class="style1">User Login</h3> 
                    <%
                        String msg;
                        request.getSession();
                        msg = (String) session.getAttribute("msg");
                        if (msg != null) {
                            out.println("<b>" + msg + "</b>");
                            //out.println("<img src='abc/"+n+"'>");
                        }
                    %>
                    <div class="line"></div>
                    <div class="articleBody clear">
                        <figure> 
                            <div align="justify"><img src="img/Login_1.jpg" width="600" height="350"></div>
                        </figure>
                        <!-- Editing is done here-->
                        <form  action="afterLogin.jsp" method="post">
                            <table width="393" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td width="108" height="31" class="style7">Username :</td>
                                    <td width="285"><input name="email" type="text" size="30" maxlength="30" placeholder="Enter your Username" required=""/></td>
                                </tr>  
                                <tr>
                                    <td width="108" height="31" class="style7">Password :</td>
                                    <td width="285"><input name="pwd" type="password" size="30" maxlength="30" placeholder="Enter your Password" required=""/></td>
                                </tr>
                                <tr><td>&nbsp;</td></tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td><input name="button1" type="reset" value="RESET" />&nbsp;&nbsp;<input name="button2" type="submit" value="SIGN IN" /></td>
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
