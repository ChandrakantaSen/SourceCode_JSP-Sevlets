<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language = "java" import = "java.sql.*,java.io.*,java.util.*"%>
<jsp:useBean id="ocp" class="newpackage.NewClass"></jsp:useBean>
    <!DOCTYPE html>
    <html>

        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>After Login Page</title>    
        </head>
        <body>
        <%!
            String email, email1, pwd, pwd1;
            boolean flag = false;
            String name, dob, doj, sex, address, desig, desig1, course, qualify, contact, id;

                    %>
        <% ResultSet rs = null;
            ResultSet rs1 = null; %>
        <%
            email = request.getParameter("email");
            pwd = request.getParameter("pwd");
            /*if((email.equals("admin"))&&(pwd.equals("password"))){
             session.setAttribute("email", email);
             //session.setAttribute("pwd", pwd);
             response.sendRedirect("admin.jsp");
             }else{*/
            String s1 = null, s2 = null, s3 = null, str = null;
            s1 = "select * from STUDENT_PROFILE where email='" + email + "' and pwd='" + pwd + "'";
            s2 = "select * from FACULTY_PROFILE where email='" + email + "' and pwd='" + pwd + "'";
            s3 = "select * from ADMIN_DETAILS where email='" + email + "' and pwd='" + pwd + "'";
            str = "select * from log where email='" + email + "'";
            try {
                ocp.connect();

                rs1 = ocp.log(str);
                rs1.next();
                if (rs1 != null) {
                    email = rs1.getString("email");
                    desig1 = rs1.getString("desig");
                    System.out.println(desig1);
                }// to fetch data from log table...
                //str="select * from register where email='"+email+"' and pwd='"+pwd+"'";
                if (desig1.equals("admin")) {
                    rs = ocp.login(s3);
                    rs.next();
                    System.out.println(" " + 123456);
                    System.out.println(rs);
                    if (rs != null) {
                        System.out.println(" " + 123456 + " " + 123);
                        email1 = rs.getString("email");
                        session.setAttribute("email", email1);
                        response.sendRedirect("admin.jsp");
                    }
                }
                if (desig1.equals("student")) {
                    rs = ocp.login(s1);

                    rs.next();
                    if (rs != null) {
                        id = rs.getString("id");
                        name = rs.getString("name");
                        dob = rs.getString("dob");
                        sex = rs.getString("sex");
                        address = rs.getString("address");
                        email1 = rs.getString("email");
                        contact = rs.getString("contact");
                        pwd1 = rs.getString("pwd");
                        desig = rs.getString("desig");
                        course = rs.getString("course");
                        qualify = rs.getString("qualify");

                        session.setAttribute("email", email1);
                        session.setAttribute("id", id);
                        session.setAttribute("name", name);
                        session.setAttribute("dob", dob);
                        session.setAttribute("sex", sex);
                        session.setAttribute("address", address);
                        session.setAttribute("contact", contact);
                        session.setAttribute("pwd", pwd);
                        session.setAttribute("desig", desig);
                        session.setAttribute("course", course);
                        session.setAttribute("qualify", qualify);

                        response.sendRedirect("student_profile.jsp");
                        //response.sendRedirect("profile.jsp");
                    }
                }
                if (desig1.equals("faculty")) {
                    rs = ocp.login(s2);
                    //System.out.println("kjh");
                    rs.next();
                    //System.out.println("kjh");
                    if (rs != null) {
                        //System.out.println("kjh");
                        id = rs.getString("id");
                        name = rs.getString("name");
                        dob = rs.getString("dob");
                        doj = rs.getString("doj");
                        sex = rs.getString("sex");
                        address = rs.getString("address");
                        email1 = rs.getString("email");
                        contact = rs.getString("contact");
                        pwd1 = rs.getString("pwd");
                        desig = rs.getString("desig");
                        course = rs.getString("course");
                        qualify = rs.getString("qualify");

                        session.setAttribute("email", email1);
                        session.setAttribute("id", id);
                        session.setAttribute("name", name);
                        session.setAttribute("dob", dob);
                        session.setAttribute("doj", doj);
                        session.setAttribute("sex", sex);
                        session.setAttribute("address", address);
                        session.setAttribute("contact", contact);
                        session.setAttribute("pwd", pwd);
                        session.setAttribute("desig", desig);
                        session.setAttribute("course", course);
                        session.setAttribute("qualify", qualify);

                        response.sendRedirect("faculty_profile.jsp");
                        //response.sendRedirect("profile.jsp");
                    }

                } else {
                    pageContext.include("login.jsp");
                }
            } catch (SQLException e1) {
                session.setAttribute("msg", "Invalid ID or password");
                pageContext.include("login.jsp");
                e1.printStackTrace();
        %>

        <%
            } catch (Exception e) {
                e.printStackTrace();
                out.println("Normal Exception");
            } finally {
                ocp.disconnect();
            }
                    //}
%>
    </body>
</html>
