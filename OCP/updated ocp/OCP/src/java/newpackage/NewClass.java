package newpackage;

import com.sun.org.apache.xalan.internal.xsltc.runtime.BasisLibrary;
import java.sql.*;
import javax.servlet.jsp.PageContext;
import javax.xml.ws.Response;
import org.apache.jasper.tagplugins.jstl.core.Redirect;

public class NewClass {

    Connection conn;
    Statement stmt;

    public void connect()
            throws SQLException, Exception {
        try {
            DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
            conn = DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:xe", "sunny1", "sunny1");
            stmt = conn.createStatement();
        } catch (SQLException sqle) {
            sqle.printStackTrace();
        } catch (Exception e) {
            throw new Exception("Connection failed");
        }
    }//end connect

    public void disconnect() {
        try {
            if (conn != null) {
                conn.close();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }//end disconnect

    public void add_faculty_profile(String id, String name, String dob, String doj, String sex, String address, String email, String contact, String pwd, String desig, String course, String qualify) throws SQLException {
        if (conn != null) {
            try {
                PreparedStatement ptmt1 = null;
                ptmt1 = conn.prepareStatement("insert into FACULTY_PROFILE values(?,?,?,?,?,?,?,?,?,?,?,?)");
                ptmt1.setString(1, id);
                ptmt1.setString(2, name);
                ptmt1.setString(3, dob);
                ptmt1.setString(4, doj);
                ptmt1.setString(5, sex);
                ptmt1.setString(6, address);
                ptmt1.setString(7, email);
                ptmt1.setString(8, contact);
                ptmt1.setString(9, pwd);
                ptmt1.setString(10, desig);
                ptmt1.setString(11, course);
                ptmt1.setString(12, qualify);
                ptmt1.executeUpdate();
            } catch (SQLException sqle) {
                sqle.printStackTrace();
            }//end catch
        } else {
            System.out.print("connection error");
        }
    }//end add_faculty_profile

    public void add_faculty_id(Integer id) {
        if (conn != null) {
            try {
                PreparedStatement ptmt2 = null;
                ptmt2 = conn.prepareStatement("insert into FALTY(ID) values(?)");
                ptmt2.setInt(1, id);
                ptmt2.executeUpdate();
            } catch (SQLException sqle) {
                sqle.printStackTrace();
            }
        } else {
            System.out.print("Connection Error");
        }
    }//end add_faculty_id (only increment part)

    public void add_student_profile(String id, String name, String dob, String sex, String address, String email, String contact, String pwd, String desig, String course, String qualify) throws SQLException {
        if (conn != null) {
            try {
                PreparedStatement ptmt = null;
                ptmt = conn.prepareStatement("insert into STUDENT_PROFILE values(?,?,?,?,?,?,?,?,?,?,?)");
                ptmt.setString(1, id);
                ptmt.setString(2, name);
                ptmt.setString(3, dob);
                ptmt.setString(4, sex);
                ptmt.setString(5, address);
                ptmt.setString(6, email);
                ptmt.setString(7, contact);
                ptmt.setString(8, pwd);
                ptmt.setString(9, desig);
                ptmt.setString(10, course);
                ptmt.setString(11, qualify);
                ptmt.executeUpdate();
            } catch (SQLException sqle) {
                sqle.printStackTrace();
            }//end catch
        } else {
            System.out.print("connection error");
        }
    }//end Student_profile

    public void add_student_id(Integer id) {
        if (conn != null) {
            try {
                PreparedStatement ptmt2 = null;
                ptmt2 = conn.prepareStatement("insert into STD(ID) values(?)");
                ptmt2.setInt(1, id);
                ptmt2.executeUpdate();
            } catch (SQLException sqle) {
                sqle.printStackTrace();
            }
        } else {
            System.out.print("Connection Error");
        }
    }//end add_student_id(only increment part)

    public void addCourse(String cid, String cname, String duration, String fees) throws SQLException {
        if (conn != null) {
            try {
                PreparedStatement ptmt = null;
                ptmt = conn.prepareStatement("insert into COURSE(CID,CNAME,DURATION,FEES) values(?,?,?,?)");
                ptmt.setString(1, cid);
                ptmt.setString(2, cname);
                ptmt.setString(3, duration);
                ptmt.setString(4, fees);
                ptmt.executeUpdate();
            } catch (SQLException sqle) {
                sqle.printStackTrace();
                System.out.println("Sql Exception");
            }//end catch
            catch (Exception e) {
                e.printStackTrace();
                System.out.println("Exception");
            }
        } else {
            System.out.print("connection error");
        }
    }//end addCourse

    public ResultSet viewCourses() throws SQLException {
        ResultSet rs = null;
        try {
            Statement stmt = conn.createStatement();
            rs = stmt.executeQuery("select * from course order by cid");
        } catch (Exception e) {
            System.out.print("No values");
        }
        return rs;
    }//end viewCourses

    public void add_cors_id(Integer id) {
        if (conn != null) {
            try {
                PreparedStatement ptmt2 = null;
                ptmt2 = conn.prepareStatement("insert into CORS(ID) values(?)");
                ptmt2.setInt(1, id);
                ptmt2.executeUpdate();
            } catch (SQLException sqle) {
                sqle.printStackTrace();
                System.out.println("Sql Exception");
            } catch (Exception e) {
                e.printStackTrace();
                System.out.println("Exception");
            }
        } else {
            System.out.print("Connection Error");
        }
    }//end add_course_id(only increment part)

    public ResultSet view_cors() throws SQLException {
        ResultSet rs1 = null;
        try {
            Statement stmt1 = conn.createStatement();
            rs1 = stmt.executeQuery("select max(id) from cors");

        } catch (Exception e) {
            System.out.print("No values");
        }
        return rs1;
    }//end viewTable1

    public ResultSet view_STD_Table() throws SQLException {
        ResultSet rs1 = null;
        try {
            Statement stmt1 = conn.createStatement();
            rs1 = stmt.executeQuery("select max(id) from std");

        } catch (Exception e) {
            System.out.print("No values");
        }
        return rs1;
    }//end viewTable1

    public ResultSet view_falty_Table() throws SQLException {
        ResultSet rs1 = null;
        try {
            Statement stmt1 = conn.createStatement();
            rs1 = stmt.executeQuery("select max(id) from falty");

        } catch (Exception e) {
            System.out.print("No values");
        }
        return rs1;
    }//end viewTable1

    public ResultSet viewDetails() throws SQLException {
        ResultSet rs = null;
        try {
            Statement stmt = conn.createStatement();
            rs = stmt.executeQuery("select * from STUDENT_PROFILE order by id");
        } catch (Exception e) {
            System.out.print("No values");
        }
        return rs;
    }//end viewDetails of Students

    public ResultSet viewFacultyDetails() throws SQLException {
        ResultSet rs = null;
        try {
            Statement stmt = conn.createStatement();
            rs = stmt.executeQuery("select * from faculty_profile order by id");
        } catch (Exception e) {
            System.out.print("No values");
        }
        return rs;
    }//end viewDetails of faculty

    public void removeUsers(String[] keys) throws SQLException {
        if (conn != null) {
            try {
                PreparedStatement ptmt = null;
                PreparedStatement ptmt1 = null;
                for (int i = 0; i < keys.length; i++) {
                    ptmt = conn.prepareStatement("delete from STUDENT_PROFILE where id = ?");
                    ptmt1 = conn.prepareStatement("delete from FACULTY_PROFILE where id = ?");
                    ptmt.setString(1, keys[i]);
                    ptmt1.setString(1, keys[i]);
                    ptmt.executeUpdate();
                    ptmt1.executeUpdate();
                }
            } catch (Exception e) {
                System.out.print("problem occured during deletion");
            } //end catch
        } else {
            System.out.print("connection failed");
        } //end if
    } //end removeUsers

    public void addFeed(String comments, String name, String email) throws SQLException {
        if (conn != null) {
            try {
                PreparedStatement ptmt = null;
                ptmt = conn.prepareStatement("insert into feedback values(?,?,?)");
                ptmt.setString(1, comments);
                ptmt.setString(2, name);
                ptmt.setString(3, email);
                ptmt.executeUpdate();
            } catch (SQLException sqle) {
                sqle.printStackTrace();
            }//end catch
        } else {
            System.out.print("connection error");
        }
    }//end addFeed

    public ResultSet viewFeeds() throws SQLException {
        ResultSet rs = null;
        try {
            Statement stmt = conn.createStatement();
            rs = stmt.executeQuery("select * from feedback");
        } catch (Exception e) {
            System.out.print("No values");
        }
        return rs;
    }//end viewFeed

    public ResultSet login(String qry) throws SQLException {
        ResultSet rs = null;
        try {
            stmt = conn.createStatement();
            stmt.executeQuery(qry);
            rs = stmt.getResultSet();
        } catch (java.sql.SQLException e) {
            e.printStackTrace();
            System.out.print("No value");
        }
        return rs;
    }//end login

    public ResultSet log(String qry) throws SQLException { //all email & designation information is saved in this table
        ResultSet rs = null;
        try {
            stmt = conn.createStatement();
            stmt.executeQuery(qry);
            rs = stmt.getResultSet();
        } catch (java.sql.SQLException e) {
            e.printStackTrace();
            System.out.print("No value");
        }
        return rs;
    }//end log

    public void add_log(String email, String desig) {
        if (conn != null) {
            try {
                PreparedStatement ptmt1 = null;
                ptmt1 = conn.prepareStatement("insert into log(email,desig) values(?,?)");
                ptmt1.setString(1, email);
                ptmt1.setString(2, desig);
                ptmt1.executeUpdate();
            } catch (SQLException sqle) {
                sqle.printStackTrace();
            }
        } else {
            System.out.print("Connection Error");
        }
    }//end add_log

    public void addQuest(String sub_name, String q_no, String quest, String opt_a, String opt_b, String opt_c, String opt_d, String answer) throws SQLException {
        if (conn != null) {
            try {
                PreparedStatement ptmt = null;
                ptmt = conn.prepareStatement("insert into question values(?,?,?,?,?,?,?,?)");
                ptmt.setString(1, sub_name);
                ptmt.setString(2, q_no);
                ptmt.setString(3, quest);
                ptmt.setString(4, opt_a);
                ptmt.setString(5, opt_b);
                ptmt.setString(6, opt_c);
                ptmt.setString(7, opt_d);
                ptmt.setString(8, answer);
                ptmt.executeUpdate();
            } catch (SQLException sqle) {
                sqle.printStackTrace();
            }//end catch
        } else {
            System.out.print("connection error");
        }
    }//end addQuest

    public ResultSet viewQuest(String subject) throws SQLException {
        ResultSet rs = null;

        try {
            Statement stmt = conn.createStatement();

            rs = stmt.executeQuery("select q_no,quest,opt_a,opt_b,opt_c,opt_d from question where sub_name='" + subject + "' order by q_no");

        } catch (Exception e) {
            System.out.print("No values");
        }
        return rs;
    }//end viewQuest

    public ResultSet viewAnswer(String subject) throws SQLException {
        ResultSet rs = null;

        try {
            Statement stmt = conn.createStatement();

            rs = stmt.executeQuery("select answer from question where sub_name='" + subject + "'");

        } catch (Exception e) {
            System.out.print("No values");
        }
        return rs;
    }//end viewAnswer

    public ResultSet questionCount() throws SQLException {
        ResultSet rs1 = null;
        try {
            Statement stmt1 = conn.createStatement();
            rs1 = stmt1.executeQuery("select count(*) from question");
        } catch (Exception e) {
            System.out.println("No Value");
        }
        return rs1;
    }

    public void addAnnounce(String date, String announcement, String name) throws SQLException {
        if (conn != null) {
            try {
                PreparedStatement ptmt = null;
                ptmt = conn.prepareStatement("insert into announce values(?,?,?)");
                ptmt.setString(1, date);
                ptmt.setString(2, announcement);
                ptmt.setString(3, name);
                ptmt.executeUpdate();
            } catch (SQLException sqle) {
                sqle.printStackTrace();
            }//end catch
        } else {
            System.out.print("connection error");
        }
    }//end addAnnounce

    public ResultSet viewAnnounce() throws SQLException {
        ResultSet rs = null;
        try {
            Statement stmt = conn.createStatement();
            rs = stmt.executeQuery("select * from announce");
        } catch (Exception e) {
            System.out.print("No values");
        }
        return rs;
    }//end viewAnnounce

    public ResultSet viewQno() throws SQLException {
        ResultSet rs = null;
        try {
            Statement stmt = conn.createStatement();
            rs = stmt.executeQuery("select max(qno) from tab1");
        } catch (Exception e) {
            System.out.print("No values");
        }
        return rs;
    }//end viewQno

    public ResultSet viewExam(String qry) throws SQLException {
        ResultSet rs = null;
        try {
            stmt = conn.createStatement();
            stmt.executeQuery(qry);
            rs = stmt.getResultSet();
        } catch (java.sql.SQLException e) {
            e.printStackTrace();
            System.out.print("No value");
        }
        return rs;
    }//end viewExam

    public void editStudent(String name, String dob, String sex, String address, String contact, String course, String qualify, String id) throws SQLException {
        if (conn != null) {
            try {
                PreparedStatement ptmt1 = null;
                ptmt1 = conn.prepareStatement("update STUDENT_PROFILE set name=?,dob=?,sex=?,address=?,contact=?,course=?,qualify=? where id=?");
                ptmt1.setString(1, name);
                ptmt1.setString(2, dob);
                ptmt1.setString(3, sex);
                ptmt1.setString(4, address);
                ptmt1.setString(5, contact);
                ptmt1.setString(6, course);
                ptmt1.setString(7, qualify);
                ptmt1.setString(8, id);
                ptmt1.executeUpdate();
            } catch (SQLException sqle) {
                sqle.printStackTrace();
            }//end catch
        } else {
            System.out.print("connection error");
        }
    }//end editUser

    public void editFaculty(String name, String dob, String doj, String sex, String address, String contact, String course, String qualify, String id) throws SQLException {
        if (conn != null) {
            try {
                PreparedStatement ptmt1 = null;
                ptmt1 = conn.prepareStatement("update FACULTY_PROFILE set name=?,dob=?,doj=?,sex=?,address=?,contact=?,course=?,qualify=? where id=?");
                ptmt1.setString(1, name);
                ptmt1.setString(2, dob);
                ptmt1.setString(3, doj);
                ptmt1.setString(4, sex);
                ptmt1.setString(5, address);
                ptmt1.setString(6, contact);
                ptmt1.setString(7, course);
                ptmt1.setString(8, qualify);
                ptmt1.setString(9, id);
                ptmt1.executeUpdate();
            } catch (SQLException sqle) {
                sqle.printStackTrace();
            }//end catch
        } else {
            System.out.print("connection error");
        }
    }//end editUser

    public void chngPwd(String pwd, String desig, String id) throws SQLException {
        if (conn != null) {
            try {
                PreparedStatement ptmt1 = null;
                if (desig.equals("student")) {
                    ptmt1 = conn.prepareStatement("update STUDENT_PROFILE set pwd=? where id=?");
                } else {
                    ptmt1 = conn.prepareStatement("update FACULTY_PROFILE set pwd=? where id=?");
                }
                ptmt1.setString(1, pwd);
                ptmt1.setString(2, id);
                ptmt1.executeUpdate();
            } catch (SQLException sqle) {
                sqle.printStackTrace();
            }//end catch
        } else {
            System.out.print("connection error");
        }
    }//end chngPwd

    public ResultSet viewQuest_no_count(String sub_name) throws SQLException {
        ResultSet rs = null;
        try {
            Statement stmt = conn.createStatement();
            rs = stmt.executeQuery("select count(q_no) from question where sub_name='" + sub_name + "'");
        } catch (Exception e) {
            System.out.print("No values");
        }
        return rs;
    }//end viewQuest

    public void admin_setExam(String c_name){
        if(conn !=null){
            try{
                System.out.println("get"+c_name);
                PreparedStatement ptmt2 = null;
                ptmt2 = conn.prepareStatement("insert into SET_EXAM values(?)");
                ptmt2.setString(1, c_name);
                ptmt2.executeUpdate();
            }catch(SQLException sqle){
                sqle.printStackTrace();
            }
        } else{
            System.out.print("Connection Error");
        }
    }

 public ResultSet view_admin_setExam() throws SQLException {
        ResultSet rs = null;
        try {
            Statement stmt = conn.createStatement();
            rs = stmt.executeQuery("select * from set_exam");
        } catch (Exception e) {
            System.out.print("No values");
        }
        return rs;
    }


}// end main class
