
<%@page import="java.util.Arrays"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>

<jsp:useBean id="ocp" class="newpackage.NewClass"></jsp:useBean>
    <!DOCTYPE html> <!-- The new doctype -->
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
            <title> Exam Result </title>
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
                            <li><a href="addFeed.jsp">Feedbacks</a></li>
                            <li><a href="student_profile_edit - Copy.jsp">Edit Profile</a> </li>
                            <li><a href="std_change_password.jsp">Change Pwd</a></li>
                            <li><a href="logout.jsp">Logout</a></li>
                        </ul>
                    </nav>
                </header>

                <section id="articles"> <!-- A new section with the articles -->

                    <!-- Article 1 start -->

                    <div class="line"></div>  <!-- Dividing line -->

                    <article id="article1"> <!-- The new article tag. The id is supplied so it can be scrolled into view. -->
                        <h3 class="style1">Results</h3>
                        <div class="line"></div>

                        <div class="articleBody clear">

                            <!-- Editing is done here-->

                            <form action="" method="post" >
                            <% ResultSet rs = null;
                                String ans = null;
                                Integer count = 0, i = 0, j = 0, nil = 0, currect = 0, wrng = 0;%>
                            <%

                                String c_ans[] = new String[100];

                                // out.println("Incoming data: "+request.getParameter("3"));
                                String get_ans[] = new String[100];

                                ocp.connect();
                                //try{
                                rs = ocp.viewAnswer("Oracle");
                                while (rs.next()) {

                                    c_ans[count] = rs.getString("answer");// fetching answer from database
                                    count = count + 1;
                                }
                                for (Integer d = 0; d < count; d++) {
                                    out.println(c_ans[d]);
                                }
                                for (Integer c = 0; c < count; c++) {
                                    get_ans[c] = request.getParameter(c.toString());
                                }
                                out.println(Arrays.toString(get_ans));
                                /*for(int k=0;i<count;i++){
                                 if(get_ans[k]==null){
                                 nil=nil+1;
                                 System.out.println("fdsafrsf"+nil);
                                 }
                                 else{
                                 if(get_ans[k].equals(c_ans[k])){
                                 currect=currect+1;
                                 System.out.println("gfdguf"+ currect);
                                 }
                                 else{
                                 wrng=wrng+1;
                                 System.out.println("gfjdskhf"+wrng);
                                 }
                                 }
                                 }
                                 }catch(SQLException e){
                                 e.printStackTrace();
                                 }finally{
                                 ocp.disconnect();
                                 System.out.println("avcder"+nil+wrng+ currect);
                                 }*/
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
