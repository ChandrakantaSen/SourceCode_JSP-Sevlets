package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class regformoutput_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

 String fname1,lname1,sex1,dept1,caste1,address1,city1,email1=null; 
            int roll1,year1,pincode1=0;
        
  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"stylesheet.css\" />\n");
      out.write("        <script type=\"text/javascript\" src=\"stopwatch.js\"></script>\n");
      out.write("        <title>Registration Form Output</title>\n");
      out.write("        ");
      out.write("\n");
      out.write("        ");
      myPacakge.myclass course = null;
      synchronized (_jspx_page_context) {
        course = (myPacakge.myclass) _jspx_page_context.getAttribute("course", PageContext.PAGE_SCOPE);
        if (course == null){
          course = new myPacakge.myclass();
          _jspx_page_context.setAttribute("course", course, PageContext.PAGE_SCOPE);
        }
      }
      out.write("\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body id=\"startstoptimer\" onLoad=\"startstop()\" style=\"font-weight:bold\" >\n");
      out.write("        \n");
      out.write("        ");

            try{
                fname1=request.getParameter("fname");
                lname1=request.getParameter("lname");
                sex1=request.getParameter("sex");
                dept1=request.getParameter("dept");
                caste1=request.getParameter("caste");
                address1=request.getParameter("add");
                city1=request.getParameter("city");
                email1=request.getParameter("email");
                roll1=Integer.parseInt(request.getParameter("roll"));
                year1=Integer.parseInt(request.getParameter("year"));
                pincode1=Integer.parseInt(request.getParameter("pincode"));
                
                
                course.connect();
                course.addRegdata(fname1,lname1,sex1,dept1,caste1,address1,city1,email1,roll1,year1,pincode1);
                course.disconnect();
            }catch(NumberFormatException e){
                e.printStackTrace();
            }
        
      out.write("\n");
      out.write("      <table border=\"0\" align=\"right\">\n");
      out.write("                <tr>\n");
      out.write("                    <td>\n");
      out.write("                        <div>\n");
      out.write("                            <input id=\"clock\" type=\"text\" value=\"00:00\" \n");
      out.write("                            style=\"text-align:center; \n");
      out.write("                            background-color:white;\n");
      out.write("                            border:0px solid gray;\n");
      out.write("                            font-weight:bold;\n");
      out.write("                            font-size:14pt;\" readonly>\n");
      out.write("                        </div>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\t\n");
      out.write("            </table>     \n");
      out.write("        <!-- Jsp code starts here -->\n");
      out.write("       <form action=\"logout.jsp\" method=\"post\">\n");
      out.write("        <table border=\"0\" align='center'> &nbsp;&nbsp;\n");
      out.write("            <tr>\n");
      out.write("                <td>First Name: &nbsp;</td>\n");
      out.write("                <td>");
      out.print( fname1 );
      out.write("</td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td>Last Name: &nbsp;</td>\n");
      out.write("                <td>");
      out.print( lname1 );
      out.write("</td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td>Sex: &nbsp;</td>\n");
      out.write("                <td> ");
      out.print( sex1 );
      out.write("</td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td>Roll: &nbsp;</td>\n");
      out.write("                <td>");
      out.print( roll1 );
      out.write("</td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td>Year: &nbsp;</td>\n");
      out.write("                <td>");
      out.print( year1 );
      out.write("</td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td>Departments: &nbsp;</td>\n");
      out.write("                <td>");
      out.print( dept1 );
      out.write("</td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td>Caste: &nbsp;</td>\n");
      out.write("                <td>");
      out.print( caste1 );
      out.write("</td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td>Address: &nbsp;</td>\n");
      out.write("                <td>");

                      StringBuffer obj = new StringBuffer(address1);
                        int loc = (new String(obj)).indexOf('\n');
                        while(loc > 0){
                            obj.replace(loc, loc+1, "<BR>");
                            loc = (new String(obj)).indexOf('\n');
                        }
                        out.println(obj); 
      out.write("\n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td>City: &nbsp;</td>\n");
      out.write("                <td>");
      out.print( city1 );
      out.write("</td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td>Pincode: &nbsp;</td>\n");
      out.write("                <td>");
      out.print( pincode1 );
      out.write("</td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td>Email: &nbsp;</td>\n");
      out.write("                <td>");
      out.print( email1 );
      out.write("</td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td> </td>\n");
      out.write("                <td><input type=\"button\" name=\"logout\" value=\"Logout\"></td>\n");
      out.write("            </tr>\n");
      out.write("        </table>\n");
      out.write("            </form>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
