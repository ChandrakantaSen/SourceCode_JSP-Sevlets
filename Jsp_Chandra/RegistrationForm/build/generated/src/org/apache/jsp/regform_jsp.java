package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class regform_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

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

      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"stylesheet.css\" />\r\n");
      out.write("<script type=\"text/javascript\" src=\"stopwatch.js\"></script>\r\n");
      out.write("<title>Registration Form</title>\r\n");
      out.write("</head>\r\n");
      out.write("<body id=\"startstoptimer\" onLoad=\"startstop()\" style=\"font-weight:bold\" >\r\n");
      out.write("\t<fieldset>\r\n");
      out.write("\t<legend>Registration Form:</legend>\r\n");
      out.write("\t<form name= \"regform\" action=\"regformoutput.jsp\" method=\"post\" align='justify'>\r\n");
      out.write("\t    <table border=\"0\" align=\"right\">\r\n");
      out.write("                <tr>\r\n");
      out.write("                    <td>\r\n");
      out.write("                        <div>\r\n");
      out.write("                            <input id=\"clock\" type=\"text\" value=\"00:00\" \r\n");
      out.write("                            style=\"text-align:center; \r\n");
      out.write("                            background-color:white;\r\n");
      out.write("                            border:0px solid gray;\r\n");
      out.write("                            font-weight:bold;\r\n");
      out.write("                            font-size:14pt;\" readonly>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </td>\r\n");
      out.write("                </tr>\t\r\n");
      out.write("            </table>  \r\n");
      out.write("            <!-- Jsp code starts here -->\r\n");
      out.write("            <table border=\"0\">\r\n");
      out.write("               <!--     <tr>\r\n");
      out.write("                        <td><b>Id:</b></td>\r\n");
      out.write("                        <td><input type=\"text\" name=\"id\" value=\"\" maxlength=\"25\" disabled ></td>\r\n");
      out.write("                    </tr>      -->\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("        \t\t\t<td><b>First Name:</b></td>\r\n");
      out.write("\t\t\t\t<td><input type=\"text\" name=\"fname\" value=\"\" placeholder=\"--Enter the name--\" required=\"true\" maxlength=\"30\"/></td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t\t<td><b>Last Name:</b></td>\r\n");
      out.write("\t\t\t\t<td><input type=\"text\" name=\"lname\" value=\"\" placeholder=\"--Enter the name--\" required=\"true\" maxlength=\"15\"/></td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t\t<td><b>Sex:</b></td>\r\n");
      out.write("\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\tMale:<input type=\"radio\" name=\"sex\" value=\"Male\" checked />&nbsp;\r\n");
      out.write("\t\t\t\t\t\tFemale:<input type=\"radio\" name=\"sex\" value=\"Female\"/>\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("                        <tr>\r\n");
      out.write("                            <td><b>Roll:</b></td>\r\n");
      out.write("                            <td>\r\n");
      out.write("                                <input type=\"text\" name=\"roll\" value=\"\" placeholder=\"--Enter the roll--\" required=\"true\" maxlength=\"15\"/>\r\n");
      out.write("                            </td>\r\n");
      out.write("                        </tr>\r\n");
      out.write("                        <tr>\r\n");
      out.write("                            <td><b>Year:</b></td>\r\n");
      out.write("                            <td>\r\n");
      out.write("                                <input type=\"text\" name=\"year\" value=\"\" placeholder=\"--Enter the year--\" maxlength=\"15\"/>\r\n");
      out.write("                            </td>\r\n");
      out.write("                        </tr>\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t\t<td> <b>Department:</b></td>\r\n");
      out.write("\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t    <select name=\"dept\" >\r\n");
      out.write("\t\t\t\t      <option value=\"--Select the Department--\">--Select the Department--</option>\r\n");
      out.write("                                      <option value=\"MCA\">MCA</option>\r\n");
      out.write("\t\t\t\t      <option value=\"CS\">CS</option>\r\n");
      out.write("\t\t\t\t      <option value=\"ECE\">ECE</option>\r\n");
      out.write("                                      <option value=\"IT\">IT</option>\r\n");
      out.write("\t\t\t\t    </select>\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("                        <tr>\r\n");
      out.write("                            <td><b>Caste:</b></td>\r\n");
      out.write("                            <td>\r\n");
      out.write("                                <select name=\"caste\">\r\n");
      out.write("                                    <option value=\"--Select the Caste--\">--Select the Caste--</option>\r\n");
      out.write("                                    <option value=\"Gen\">Gen</option>\r\n");
      out.write("                                    <option value=\"SC\">SC</option>\r\n");
      out.write("                                    <option value=\"ST\">ST</option>\r\n");
      out.write("                                    <option value=\"OBC\">OBC</option>\r\n");
      out.write("                                </select>\r\n");
      out.write("                            </td>\r\n");
      out.write("                        </tr>\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t\t<td><b>Address:</b></td>\r\n");
      out.write("\t\t\t\t<td><input type=\"textarea\" name=\"add\" rows=\"20\" cols=\"30\" placeholder=\"--Enter the address--\" required=\"true\" \t\t\t\t\t\t\t\t\t  maxlength=\"50\"/></td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t\t<td><b>City:</b></td>\r\n");
      out.write("\t\t\t\t<td><input type=\"text\" name=\"city\" value=\"\" placeholder=\"--Enter the city--\" maxlength=\"10\"/></td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t<td><b>Pincode:</b></td>\r\n");
      out.write("\t\t\t<td><input type=\"text\" name=\"pincode\" value=\"\" placeholder=\"--Enter the pincode--\" maxlength=\"10\"/></td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t\t<td><b>Email:</b></td>\r\n");
      out.write("\t\t\t\t<td><input type=\"text\" name=\"email\" placeholder=\"--Enter the email--\" maxlength=\"30\" /></td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t\t<td>&nbsp;</td>\r\n");
      out.write("\t\t\t\t<td><input type=\"submit\" name=\"submit\" value=\"Register\">\r\n");
      out.write("\t\t\t\t    <input type=\"reset\" name=\"reset\" value=\"Reset\"></td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t</table>\r\n");
      out.write("\t</form>\r\n");
      out.write("\t</fieldset>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
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
