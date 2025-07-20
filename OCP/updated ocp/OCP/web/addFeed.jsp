<jsp:useBean id="ocp" class="newpackage.NewClass"></jsp:useBean>
<!DOCTYPE html> <!-- The new doctype -->
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title> Feedback Add </title>
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
                        <li><a href="student_profile.jsp">Profile</a> </li>
                        <li><a href="student_pre_download.jsp">Downloads</a> </li>
                        <li><a href="std_view_announce.jsp">Announces</a></li>
                        <li><a href="student_profile_edit - Copy.jsp">Edit Profile</a></li>
                        <li><a href="pre_exam.jsp">Exam</a></li>
                        <li><a href="std_change_password.jsp">Change Password</a></li>
                        <li><a href="logout.jsp">Logout</a></li>
                    </ul>
                </nav>

            </header>

            <section id="articles"> <!-- A new section with the articles -->

                <!-- Article 1 start -->

                <div class="line"></div>  <!-- Dividing line -->

                <article id="article1"> <!-- The new article tag. The id is supplied so it can be scrolled into view. -->
                    <h3 class="style1">Any Feedbacks</h3>

                    <div class="line"></div>

                    <div class="articleBody clear">
                        <figure> 
                            <div align="justify"></div>
                            <img src="img/feedback.jpg" width="580" height="300">                   	      </figure>
                        <!-- Editing is done here-->

                        <form name="f1" action="after_addfeedback.jsp" method="post">
                            <table width="393" border="0" cellspacing="0" cellpadding="0">
                                <tr><td></td></tr>
                                <tr>
                                    <td width="108" height="31" class="style7">Comments :</td>
                                    <td width="285"><label for="t9"></label>
                                        <textarea name="comments" cols="25" placeholder="Enter your Comments" required=""></textarea>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td width="108" height="31" class="style7">Name :</td>
                                    <td><label for="t9"></label>
                                        <input name="name" type="text" size="30" maxlength="30" placeholder="Enter your Name" required=""/>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td width="108" height="31" class="style7">Email ID :</td>
                                    <td><label for="t9"></label>
                                        <input name="email" type="email"  size="30" maxlength="30" placeholder="Enter your Email ID" required=""/>
                                        &nbsp;</td>
                                </tr>
                                <tr><td>&nbsp;</td></tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td><input name="button1" type="reset" value="CLEAR" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input name="button2" type="submit" value="SUBMIT" />					  </td>
                                </tr>
                            </table>
                        </form>
                        <script type="text/javascript">


                        </script>
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
