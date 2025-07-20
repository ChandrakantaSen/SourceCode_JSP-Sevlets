<%@page import="java.sql.*"%>
<%@ page language="java" %>
<jsp:useBean id="ocp" class="newpackage.NewClass"></jsp:useBean>
    <!DOCTYPE html> <!-- The new doctype -->
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
            <title> Add Questions Page </title>
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
        <%
            String name, sub_name = null;
            sub_name = request.getParameter("sub_name");
            session.setAttribute("sub_name", sub_name);
            name = (String) session.getAttribute("name");
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
                        <li><a href="announce.jsp">Announces</a></li>
                        <li><a href="faculty_profile_edit - Copy.jsp">Edit Profile</a> </li>
                        <li><a href="faculty_change_password.jsp">Change Password</a></li>
                        <li><a href="logout.jsp">Logout</a></li>
                    </ul>
                </nav>
            </header>

            <section id="articles"> <!-- A new section with the articles -->

                <!-- Article 1 start -->

                <div class="line"></div>  <!-- Dividing line -->

                <article id="article1"> <!-- The new article tag. The id is supplied so it can be scrolled into view. -->

                    <h3 class="style1">Add New Questions</h3>
                    <div class="line"></div>

                    <div class="articleBody clear">

                        <!-- Editing is done here-->

                        <form action="after_AddQuestion.jsp" method="post" >
                            <%ResultSet rs = null;
                                Integer qno = 0;
                                String q_no = null;%>
                            <%
                                ocp.connect();
                                try {
                                    rs = ocp.viewQuest_no_count(sub_name);
                                    while (rs.next()) {
                                        q_no = rs.getString(1);

                                        qno = Integer.parseInt(q_no);// conver to integer
                                        qno = (qno + 1);
                                        q_no = qno.toString();// conver to String
                                        //HttpSession session1=request.getSession();
                                        session.setAttribute("q_no", q_no);
                                    }//end while%>
                            <table width="600" border="0" cellspacing="1" cellpadding="0">
                                <tr>
                                    <td width="180" height="31" class="style7">Subject Name :</td>
                                    <td><input name="sub_name" type="text" size="20" value="<%=sub_name%>" disabled=""/></td>
                                </tr>
                                <tr>
                                    <td width="180" height="31" class="style7">Question No. :</td>
                                    <td><input name="q_no" type="text" size="20" value="<%=q_no%>" disabled=""/></td>
                                </tr>
                                <tr>
                                    <td width="180" height="31" class="style7">Question :</td>
                                    <td width="285">      
                                        <textarea name="quest" cols="30" placeholder="Enter the Question" required=""></textarea>
                                    </td>
                                </tr>

                                <tr>
                                    <td width="180" height="31" class="style7">Possible Answers :</td>
                                    <td class="style7">A.&nbsp;<input name="opt_a" type="text" size="40" maxlength="35" placeholder="Enter 1st Option" required=""/><br/><p></p>
                                        B.&nbsp;<input name="opt_b" type="text" size="40" maxlength="35" placeholder="Enter 2nd Option" required=""/><br/><p></p>
                                        C.&nbsp;<input name="opt_c" type="text" size="40" maxlength="35" placeholder="Enter 3rd Option" required=""/><br/><p></p>
                                        D.&nbsp;<input name="opt_d" type="text" size="40" maxlength="35" placeholder="Enter 4th Option" required=""/><br/><p></p>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="180" height="31" class="style7">Correct Answer :</td>
                                    <td>
                                        <input name="answer" type="radio" value="A" checked=""/>
                                        <label><span class="style7">A</span></label>
                                        &nbsp;                          
                                        <input name="answer" type="radio" value="B"/>
                                        <label><span class="style7">B</span></label>
                                        &nbsp;
                                        <input name="answer" type="radio" value="C"/>
                                        <label><span class="style7">C</span></label>
                                        &nbsp;
                                        <input name="answer" type="radio" value="D"/>
                                        <label><span class="style7">D</span></label>
                                    </td>
                                </tr>
                                <tr> &nbsp; </tr>
                                <tr> &nbsp; </tr>
                                <tr> &nbsp; </tr>
                                <tr> &nbsp; </tr>
                                <tr> &nbsp; </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;&nbsp;&nbsp;<input name="button1" type="reset" value="RESET" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input name="button2" type="submit" value="SUBMIT" />					  </td>
                                </tr>
                            </table>
                            <%
                                } catch (Exception e) {
                                    e.printStackTrace();
                                }
                                ocp.disconnect();
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
