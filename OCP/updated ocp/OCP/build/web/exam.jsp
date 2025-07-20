<%@page import="java.sql.ResultSet"%>
<!doctype html>
<jsp:useBean id = "ocp" class ="newpackage.NewClass"></jsp:useBean>
    <html>
        <head>
            <meta charset="utf-8">
            <title>Exam Page</title>
            <link rel="stylesheet" type="text/css" href="examstyle.css">
            <script type="text/javascript" >
                var hh = 1;
                var mm = 0;
                var ss = 0;
                var cursor = 0;
                var questions = [
            <%

                try {
                    ocp.connect();
                    ResultSet rs = null;

                    rs = ocp.viewQuest("Oracle");
                    //System.out.println(rs.next());
                    while (rs.next()) {%>
                    {"QNO": "<%=rs.getString("q_no")%>", "QUEST": "<%=rs.getString("quest")%>", "OPT_A": "<%=rs.getString("opt_a")%>", "OPT_B": "<%=rs.getString("opt_b")%>", "OPT_C": "<%=rs.getString("opt_c")%>", "OPT_D": "<%=rs.getString("opt_d")%>", "ANS": "", "STATUS": ""},
            <%}
                } catch (Exception sqle) {
                    System.out.print("Exception" + sqle);
                } finally {
                    ocp.disconnect();
                }
            %>
                ];
        </script>
        <script src="exam.js"></script>
    </head>

    <body>
        <div id="main">
            <div id="heading">
                <label id="header"></label>
                <div id="count">
                    <label id="clock"> </label>
                </div>
                <div id="user_info">
                    <label id="u_info">
                        <%
                            String id, email, name;

                            email = (String) session.getAttribute("email");
                            id = (String) session.getAttribute("id");
                            name = (String) session.getAttribute("name");
                        %>
                        <%=name%>
                    </label>
                </div>
            </div>
            <div id="formdiv">
                <form id="qform" action="" method="post">         
                    <div id="ques">
                        <div id="marks">marks:</div>
                        <div id="qbody">
                            <label id="q">Question 1</label>
                            <div id="A">
                                <input type="radio" name="ans" id="ansA" value="A"/>
                                <label id="optionA" >Option 1</label>
                            </div>
                            <div id="B">
                                <input type="radio" name="ans" id="ansB" value="B"/>
                                <label id="optionB" >Option 2</label>
                            </div>
                            <div id="C">
                                <input type="radio" name="ans" id="ansC" value="C"/>
                                <label id="optionC" >Option 3</label>
                            </div>
                            <div id="D">
                                <input type="radio" name="ans" id="ansD" value="D"/>
                                <label id="optionD" >Option 4</label>
                            </div>
                        </div>
                        <div id="btn">
                            <div id="revbtn">
                                <input type="button" id="review" class="button medium gray" value="MARK/UNMARK FOR REVIEW" >
                            </div>
                            <div id="rem_ans_btn">
                                <input type="button" id="rem_ans" class="button medium gray" value="REMOVE ANSWER" >
                            </div>
                            <div id="savnxt">
                                <input type="button" id="next" class="button medium gray" value="SAVE & NEXT">
                            </div>
                            <div id="skp">
                                <input type="button" id="skip" class="button medium gray" value="SKIP">
                            </div>
                        </div>
                    </div>
                    <div id="qno">
                        <%
                            try {
                                ocp.connect();
                                ResultSet rs = null;

                                rs = ocp.viewQuest("Oracle");
                                //System.out.println(rs.next());
                                while (rs.next()) {%>
                        <input type="button" class="shortcut white" id="<%="qubutn_" + rs.getString("q_no")%>" value="<%=rs.getString("q_no")%>" onClick="qset(<%=rs.getString("q_no")%> - 1)" onBlur="qunset(<%=rs.getString("q_no")%> - 1)" />
                        <%}
                            } catch (Exception sqle) {
                                System.out.print("Exception" + sqle);
                            } finally {
                                ocp.disconnect();
                            }
                        %>
                    </div>
                    <div id="submtbtn">
                        <input type="button" id="submt" class="button bigrounded gray" style="font-size:18px" value="Submit" onClick='postData("afterExam.jsp", questions, callback)'/>
                    </div>
                </form>
            </div>
            <div id="footer"></div>
        </div>
    </body>
</html>
