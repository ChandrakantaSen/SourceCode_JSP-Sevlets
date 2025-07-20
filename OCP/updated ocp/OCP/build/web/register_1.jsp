<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.*"%>
<%@ page language="java" %>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.GregorianCalendar"%>
<jsp:useBean id="ocp" class="newpackage.NewClass"></jsp:useBean>
    <!DOCTYPE html> <!-- The new doctype -->
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title> Registration Page </title>
            <link rel="stylesheet" type="text/css" href="styles3.css" />

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
        <%
            String email = null;
            email = (String) session.getAttribute("email");
            //pwd=(String)session.getAttribute("pwd");
            if (email == null) {
                response.sendRedirect("login.jsp");
            }
        %>
        <section id="page"> <!-- Defining the #page section with the section tag -->
            <header> <!-- Defining the header section of the page with the appropriate tag -->
                <hgroup>
                    <h1 align="center" class="style1"><strong> Online   Course   Portal </strong></h1>
                </hgroup>

                <div id="horizontalmenu">
                    <ul>
                        <li><a href="admin.jsp">Home</a></li>
                        <li>View Profiles
                            <ul>
                                <li><a href="admin_studentView.jsp">Student Details</a></li>
                                <li><a href="admin_facultyDetails.jsp">Faculty Details</a></li>
                            </ul>
                        </li>
                        <li>Add Services
                            <ul>
                                <li><a href="register_1.jsp">Add Faculty</a></li>
                                <li><a href="addcourse.jsp">Add Courses</a></li> 
                            </ul>
                        </li>
                        <li><a href="feedback.jsp">Feedbacks</a></li>
                        <li><a href="addAnnounce.jsp">Announcements</a></li>
                        <li>Exams
                            <ul>
                                <li><a href="">Set Exam</a></li>
                                <li><a href="">View Results</a></li>
                            </ul>
                        </li>
                        <li><a href="logout.jsp">Logout</a></li>
                    </ul>
                </div>

            </header>

            <section id="articles"> <!-- A new section with the articles -->

                <!-- Article 1 start -->

                <div class="line"></div>  <!-- Dividing line -->

                <article id="article1"> <!-- The new article tag. The id is supplied so it can be scrolled into view. -->
                    <h3 class="style1">New Faculty Registration</h3>
                    <div class="line"></div>

                    <div class="articleBody clear">
                        <figure> 
                            <div align="justify"><img src="img/Teachers.png" width="590" height="350"></div>
                        </figure>
                        <!-- Editing is done here-->
                        <form name="f1" action="afterRegn_1.jsp" method="post" onsubmit="javascript:return validateForm();">
                            <%ResultSet rs = null;
                                Integer id1 = 0;
                                String s, id2 = null;%>
                            <%
                                GregorianCalendar cal = new GregorianCalendar();
                                int i = cal.get(Calendar.YEAR);//get currwnt year
                                String s1 = Integer.toString(i);//year convert to string
                                s = "F";
                                s = s.concat(s1 + "_");//concat the string of s & current year. Like 'F2014_'
                                ocp.connect();
                                try {
                                    rs = ocp.view_falty_Table();//view falty table
                                    while (rs.next()) {
                                        id1 = rs.getInt(1);// get the max id
                                        id1 = (id1 + 1);//id is incrementing
                                        id2 = Integer.toString(id1);//id convert to string
                                        id2 = s.concat(id2);//concat the current year and id. Like 'F2014_1'
                                        //out.print(id2);
                                        //HttpSession session1=request.getSession();
                                        session.setAttribute("id1", id1);
                                        session.setAttribute("id2", id2);
                                    }//end while
                            %>
                            <table width="388" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td width="108" height="31" class="style7">Regn. ID :</td>
                                    <td><input name="id" type="text" size="20" value="<%=id2%>" disabled=""/></td>
                                </tr>
                                <tr>
                                    <td width="108" height="31" class="style7">Name :</td>
                                    <td><input name="name" type="text" size="30" maxlength="30" placeholder="Enter your Name" required=""/></td>
                                </tr>
                                <tr>
                                    <td width="108" height="31" class="style7">DOB :</td>
                                    <td><input name="dob" type="date" required=""/></td>
                                </tr>
                                <tr>
                                    <td width="108" height="31" class="style7">Joining Date :</td>
                                    <td><input name="doj" type="date" required=""/></td>
                                </tr>
                                <tr>
                                    <td width="108" height="31" class="style7">Sex :</td>
                                    <td>
                                        <input name="sex" type="radio" value="male" checked=""/><label><span class="style7">Male</span></label><span class="style7">&nbsp;&nbsp;&nbsp;</span>
                                        <input name="sex" type="radio" value="female" /><label><span class="style7">Female</span></label>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="108" height="31" class="style7">Address :</td>
                                    <td>
                                        <textarea name="address" cols="20" placeholder="Enter your Present Address" required=""></textarea>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="108" height="31" class="style7">Email ID :</td>
                                    <td><input name="email" type="email" size="30" maxlength="30"  placeholder="eg : abc@xyz.com" required="" onblur="checkEmail()"/></td>
                                </tr>
                                <tr>
                                    <td width="108" height="31" class="style7">Contact No. :</td>
                                    <td><input name="contact" type="number" placeholder="Number Only" required=""/></td>
                                </tr>  
                                <tr>
                                    <td width="108" height="31" class="style7">Password :</td>
                                    <td><input name="pwd1" type="password" size="20" maxlength="20"  placeholder="Min 8-15 Alpha-Numeric" required="" onblur="CheckPassword(this)"/></td>
                                </tr>
                                <tr>
                                    <td width="108" height="31" class="style7">Confirm Password</td>
                                    <td><input name="pwd" type="password" size="20" maxlength="20"  placeholder="Confirm your Password" required="" /></td>
                                </tr>
                                <tr>
                                    <td width="108" height="31" class="style7">Course :</td>
                                    <td><select name="course" required="">
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
                                        </select></td>
                                </tr>
                                <tr>
                                    <td width="128" height="31" class="style7">Qualification :</td>
                                    <td><select name="qualify" required="">
                                            <option></option>
                                            <option>Matric/Class X</option>
                                            <option>HS/Class XII</option>
                                            <option>BCA/BSc/BTech</option>
                                            <option>MCA/MSc/MTech</option>
                                            <option>PhD & Others</option>
                                        </select></td>
                                </tr>
                                <tr>
                                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <input type="checkbox" name="desig" value="faculty" required=""/></td>
                                    <td>Check this Box to Confirm as Faculty</td>
                                </tr>
                                <tr><td>&nbsp;</td></tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td><input name="button1" type="reset" value="RESET" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input name="button2" type="submit" value="SUBMIT" /></td>
                                </tr>
                            </table>
                            <%
                                } catch (Exception e) {
                                    e.printStackTrace();
                                }
                                ocp.disconnect();
                            %> 
                        </form>
                        <script type="text/javascript">
                            function validateForm() {
                                if (document.f1.pwd1.value != document.f1.pwd.value) {
                                    alert("Passwords Mismatch");
                                    document.f1.pwd.focus();
                                    return false;
                                }
                            }

                            function checkEmail()
                            {
                                var x = document.forms["f1"]["email"].value;
                                var atpos = x.indexOf("@");
                                var dotpos = x.lastIndexOf(".");
                                if (atpos < 1 || dotpos < atpos + 6 || dotpos + 2 >= x.length)
                                {
                                    alert("Enter a valid Email ID");
                                    document.f1.email.focus();
                                    return false;
                                }
                            }
                        </script>
                        <!-- Editing part complete here -->
                    </div>
                </article>

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
