<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="ocp" class="newpackage.NewClass"></jsp:useBean>
<%@page import="java.io.File"%>
<%@page import="java.lang.Boolean"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        <h1></h1>
        <%! String name, sub_name, q_no, quest, opt_a, opt_b, opt_c, opt_d, answer;%>
        <%request.getSession();%>
        <%
            name = (String) session.getAttribute("name");
            try {
                sub_name = (String) session.getAttribute("sub_name");
                q_no = (String) session.getAttribute("q_no");
                quest = request.getParameter("quest");
                opt_a = request.getParameter("opt_a");
                opt_b = request.getParameter("opt_b");
                opt_c = request.getParameter("opt_c");
                opt_d = request.getParameter("opt_d");
                answer = request.getParameter("answer");
                ocp.connect();
                ocp.addQuest(sub_name, q_no, quest, opt_a, opt_b, opt_c, opt_d, answer);
            } catch (NumberFormatException e) {
                e.printStackTrace();
            } finally {
                ocp.disconnect();
                session.setAttribute("message", "Question is Uploaded");
                pageContext.include("pre_addQuestion.jsp");
            }
        %>
    </body>
</html>
