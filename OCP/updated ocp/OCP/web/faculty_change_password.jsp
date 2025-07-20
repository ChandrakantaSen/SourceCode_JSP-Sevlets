<!DOCTYPE html> <!-- The new doctype -->
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title> Faculty Change Password</title>
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
            function CheckPassword(pwd1)   
            {   
            var passw= /^(?=.*[0-9])(?=.*[a-zA-Z])[a-zA-Z0-9!@#$%^&*]{8,15}$/;  
            if(pwd1.value.match(passw))   
            {   
            alert('Correct,Please proceed Next')  
            return true;  
            }  
            else  
            {   
            alert('Password length must be 8-15 AlphaNumeric')
            pwd1.focus();
            return false;  
            }  
            }  
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
                        <li><a href="faculty_pre_download.jsp">Downloads</a> </li>
                        <li><a href="announce.jsp">Announces</a></li>
                        <li><a href="pre_addQuestion.jsp">Add Question</a></li>
                        <li><a href="faculty_profile_edit - Copy.jsp">Edit Profile</a> </li>
                        <li><a href="logout.jsp">Logout</a></li>
                    </ul>
                </nav>
            </header>

            <section id="articles"> <!-- A new section with the articles -->

                <!-- Article 1 start -->

                <div class="line"></div>  <!-- Dividing line -->

                <article id="article1"> <!-- The new article tag. The id is supplied so it can be scrolled into view. -->
                    <h3 class="style1">Password Change</h3>

                    <div class="line"></div>

                    <div class="articleBody clear"><!-- Editing is done here-->

                        <form name="f1" action="faculty_afterchangepassword.jsp" method="post" onsubmit="javascript:return validateForm();">
                            <table width="493" border="0" cellpadding="0" cellspacing="5">
                                <tr>
                                    <td width="100" class="style7">Current Password :</td>
                                    <td><input type="password" name="o_pwd" size="20" maxlength="20" placeholder="Enter Current Password" required=""></td>
                                </tr>
                                <tr>
                                    <td width="100" class="style7">New Password :</td>
                                    <td><input name="pwd1" type="password" size="20" maxlength="20"  placeholder="Min 8-15 Alpha-Numeric" required="" onblur="CheckPassword(this)"/></td>
                                </tr>
                                <tr>
                                    <td width="190" class="style7">Re-Type Password :</td>
                                    <td><input name="pwd" type="password" size="20" maxlength="20"  placeholder="Confirm your Password" required="" /></td>
                                </tr>
                                <tr><td></td></tr>
                                <tr>
                                    <td></td>
                                    <td><input name="button1" type="reset" value="RESET" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input name="button2" type="submit" value="SUBMIT" /></td>
                                </tr>
                            </table>
                        </form>
                        <script type="text/javascript">
                            function validateForm() {
                                if (document.f1.pwd1.value != document.f1.pwd.value) {
                                    alert("New Passwords Mismatch");
                                    document.f1.pwd.focus();
                                    return false;
                                }
                            }
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
        </section> 
        <!-- Closing the #page section -->

        <!-- JavaScript Includes -->


        <script src="jquery.scrollTo-1.4.2/jquery.scrollTo-min.js"></script>
        <script src="script.js"></script>
    </body>
</html>
