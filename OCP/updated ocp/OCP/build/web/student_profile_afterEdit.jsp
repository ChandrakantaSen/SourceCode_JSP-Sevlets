<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %> 
<%@ page import="java.sql.*" %> 
<jsp:useBean id="ocp" class="newpackage.NewClass"></jsp:useBean>
    <!DOCTYPE html> <!-- The new doctype -->
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
            <title>After Student Edit</title>
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
                .style9 {font-size: 1.25em}
                .style11 {font-size: 2em}
                -->
            </style>
            <script type="text/JavaScript">

            </script>
        </head>

        <body>
        <%! String name, dob, sex, address, email, contact, pwd, desig, course, qualify, id;%>
        <%request.getAttribute("id");%>
        <%request.getAttribute("id");%>
        <%request.getSession();%>

        <form name= "afterEdit" action="" method="post">  
            <%
                try {
                    id = (String) session.getAttribute("id");
                    name = (String) session.getAttribute("name");
                    dob = request.getParameter("dob");
                    sex = request.getParameter("sex");
                    address = request.getParameter("address");
                    email = (String) session.getAttribute("email");
                    contact = request.getParameter("contact");
                    pwd = (String) session.getAttribute("pwd");
                    desig = (String) session.getAttribute("desig");
                    course = request.getParameter("course");
                    qualify = request.getParameter("qualify");
                    System.out.println(id + " " + name + " " + dob + " " + sex + " " + address + " " + email + " " + contact);
                } catch (Exception e) {
                    e.printStackTrace();
                }
                ocp.connect();
                ocp.editStudent(name, dob, sex, address, contact, course, qualify, id);
                ocp.disconnect();
            %>
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
                            <li><a href="addFeed.jsp">Feedbacks</a></li>
                            <li><a href="pre_exam.jsp">Exam</a></li>
                            <li><a href="std_change_password.jsp">Change Password</a></li>
                            <li><a href="logout.jsp">Logout</a></li>
                        </ul>
                    </nav>
                </header>
                <section id="articles"> 
                    <div class="line"></div>        
                    <article id="article1">
                        <h3 class="style1">Your Edition was Successful</h3><p class="style7">Your New Profile Details are as follows:</p>
                        <div class="line"></div>  
                        <div class="articleBody clear">
                            <figure> 
                                <div align="justify"></div>
                                <img src="img/Student.jpg" width="560" height="330">
                            </figure>
                            <table width="450" border="0" >     
                                <p class="style9">Name : <%=name%></p>
                                <p class="style9">DOB : <%=dob%></p>
                                <p class="style9">Sex : <%=sex%></p>
                                <p class="style9">Address : <%=address%></p>
                                <p class="style9">Email/Username : <%= email%></p>
                                <p class="style9">Contact : <%=contact%></p>
                                <p class="style9">Designation : <%=desig%></p>
                                <p class="style9">Course : <%=course%></p>
                                <p class="style9">Qualify : <%=qualify%></p>
                            </table>
                        </div></article>
                    <!-- Article 1 end -->
                </section>
        </form>
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
