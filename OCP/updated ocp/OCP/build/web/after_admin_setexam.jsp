<!DOCTYPE html> <!-- The new doctype -->
<%@ page import="java.io.*" %> 
<%@ page import="java.sql.*" %> 
<jsp:useBean id="ocp" class="newpackage.NewClass"></jsp:useBean>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title> set exam </title>
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
                                <li><a href="admin_setexam.jsp">Set Exam</a></li>
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
                <h3 class="style1">Successfully set Course for the exam</h3>
                <div class="line"></div>
                    
                <div class="articleBody clear">
               	  <figure> 
                   	  <div align="justify"></div>
                          <img src="img/exam.jpg" width="580" height="300">
               	  </figure>
                   	<!-- Editing is done here-->
						
					<form action="" method="post" >
					  <table width="493" border="0" cellpadding="0" cellspacing="0">
					    <%  
                                                String c_name=null;
                                                try{
                                                c_name=request.getParameter("course");
                                                System.out.println("abc "+c_name);
                                                ocp.connect();
                                                ocp.admin_setExam(c_name);
                                                }catch(Exception e){
                                                    e.printStackTrace();
                                                }
                                                finally{
                                                    ocp.disconnect();
                                                }
                                            %>
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
