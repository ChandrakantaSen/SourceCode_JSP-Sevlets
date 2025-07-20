<!DOCTYPE html> <!-- The new doctype -->
<%@page import="java.util.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title> Logout Page </title>
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

            window.location.hash="no-back-button";
            window.location.hash="Again-No-back-button";//again because google chrome don't insert first hash into history
            window.onhashchange=function(){window.location.hash="no-back-button";}
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
                        <li><a href="login.jsp">Login Again</a></li>
                    </ul>
                </nav>
            </header>

            <section id="articles"> <!-- A new section with the articles -->

                <!-- Article 1 start -->

                <div class="line"></div>  <!-- Dividing line -->

                <article id="article1"> <!-- The new article tag. The id is supplied so it can be scrolled into view. -->
                    <h3 class="style1">You have Successfully Logged Out</h3>
                    <div class="line"></div>

                    <div class="articleBody clear">
                        <%
                            try {
                                session = request.getSession(false);
                                if (session != null) {
                                    session.removeAttribute("email");
                                    session.removeValue("email");
                                    session.invalidate();

                                }
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        %>
                        <figure> 

                            <img src="img/thank-you.jpg" width="580" height="300">
                        </figure>
                        <!-- Editing is done here-->


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
