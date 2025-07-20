<%@page import="java.util.Calendar"%>
<%@page import="java.util.GregorianCalendar"%>
<%@page import="java.sql.*"%>
<jsp:useBean id="ocp" class="newpackage.NewClass"></jsp:useBean>
    <!DOCTYPE html> <!-- The new doctype -->
    <html>
        <head>

            <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
            <title> Add Course </title>

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
                    <h3 class="style1">Add New Course</h3>
                    <div class="line"></div>

                    <div class="articleBody clear">
                        <figure> 
                            <div align="justify"><img src="img/courses.jpg" width="700" height="300"  /></div>
                        </figure>
                        <!-- Editing is done here-->

                        <form action="afteraddcourse.jsp" method="post">
                            <%ResultSet rs = null;
                                Integer id1 = 0;
                                String s, id2 = null;%>
                            <%
                                GregorianCalendar cal = new GregorianCalendar();
                                //out.print(cal.get(Calendar.YEAR));
                                int i = cal.get(Calendar.YEAR);//get current year
                                //out.print(i);
                                String s1 = Integer.toString(i);//year convert to string
                                //out.print(s1+"  ");
                                s = "C";
                                s = s.concat("/" + s1 + "/");//concat the string of s & current year. Like 'C/2014/'
                                ocp.connect();
                                try {
                                    rs = ocp.view_cors();
                                    while (rs.next()) {
                                        id1 = rs.getInt(1);//get max id
                                        //id1=ocp.auto_inc(id1);
                                        id1 = (id1 + 1);//id is incrementing
                                        id2 = Integer.toString(id1);//id convert to string
                                        id2 = s.concat(id2);//concat the current year and id. Like 'S2014_1'
                                        //out.print(id2);
                                        //HttpSession session1=request.getSession();
                                        session.setAttribute("id1", id1);
                                        session.setAttribute("id2", id2);
                                    }//end while%>
                            <table width="399" border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td width="108" height="31" class="style7">Course ID :</td>
                                    <td><input name="cid" type="text" size="20" value="<%=id2%>" disabled=""/></td>
                                </tr>
                                <tr>
                                    <td width="150" height="31" class="style7">Course Name :</td>
                                    <td><input name="cname" type="text" size="20" maxlength="20" placeholder="Enter Course Name" required=""/></td>
                                </tr>
                                <tr>
                                    <td width="108" height="31" class="style7">Duration :</td>
                                    <td><select name="duration" required="">
                                            <option></option>
                                            <option>1 Month</option>
                                            <option>2 Months</option>
                                            <option>3 Months</option>
                                            <option>6 Months</option>
                                        </select>                          
                                    </td>
                                </tr>
                                <tr>
                                    <td width="108" height="31" class="style7">Course Fees :</td>
                                    <td><select name="fees" required="">
                                            <option></option>
                                            <option>Rs.2000</option>
                                            <option>Rs.4000</option>
                                            <option>Rs.5000</option>
                                            <option>Rs.7000</option>
                                        </select>                         
                                    </td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>             
                                </tr>
                                <tr>
                                    <td></td>
                                    <td>
                                        <input name="button1" type="reset" value="RESET" />&nbsp;&nbsp;&nbsp;&nbsp;
                                        <input name="button2" type="submit" value="CREATE" />
                                    </td>
                                </tr>
                            </table>
                            <%
                                } catch (Exception e) {
                                    e.printStackTrace();
                                }
                                ocp.disconnect();
                            %>
                            <table width="100" border="0" cellspacing="1" cellpadding="0">
                                <tr>
                                    <th scope="row"><a><img src="Icons/paypal_128.png" alt="icon not load" align="baseline" /></a></th>
                                    <td><a><img src="Icons/mastercard_128.png" alt="icon not load" align="baseline" /></a></td>
                                    <td><a><img src="Icons/visa_128.png" alt="icon not load" align="baseline" /></a></td>
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
        </section> 
        <!-- Closing the #page section -->

        <!-- JavaScript Includes -->


        <script src="jquery.scrollTo-1.4.2/jquery.scrollTo-min.js"></script>
        <script src="script.js"></script>
    </body>
</html>
