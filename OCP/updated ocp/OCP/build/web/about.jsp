<!DOCTYPE html> <!-- The new doctype -->
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title> About Us </title>
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
                        <li><a href="contact.jsp">Contact Us</a></li>
                        <li><a href="course.jsp">Courses</a></li>
                        <li><a href="register.jsp">Register</a></li>
                        <li><a href="login.jsp">Sign In</a></li>
                    </ul>
                </nav>
            </header>

            <section id="articles"> <!-- A new section with the articles -->

                <!-- Article 1 start -->

                <div class="line"></div>  <!-- Dividing line -->

                <article id="article1"> <!-- The new article tag. The id is supplied so it can be scrolled into view. -->
                    <h3 class="style1">About Us</h3>
                    <div class="line"></div>   
                    <div class="articleBody clear">
                        <figure> 
                            <div align="justify"></div>
                            <img src="img/about-us-banner.jpg" width="950" height="300">
                        </figure>
                        <!-- Editing is done here-->			
                        <form action="" method="post" >
                            <p class="style7">Online Course Portal for a Campus is a web based application that can be used for a campus or organization for proving it for usage by all the people means to use it at any moment and at any time from any place.</p>
                            <p class="style7">The Registered Users can access various Books & Study Materials of programming subjects like C,C++,JAVA,Android,ASP.NET & PHP.They can also take part in Online Exams & give their valuable Feedbacks.</p>
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
