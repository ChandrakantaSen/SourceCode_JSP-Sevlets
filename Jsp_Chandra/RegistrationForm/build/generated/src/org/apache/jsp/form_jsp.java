package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class form_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"stylesheet.css\" />\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\t<fieldset>\r\n");
      out.write("\t<legend>Registration Form:</legend>\r\n");
      out.write("\t<form name= \"form1\" action=\"\" method=\"post\" align=\"center\" background=\"./wood_bg.jpg\">\r\n");
      out.write("\t\t<table border=\"0\">\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t\t<td><b>First Name:</b></td>\r\n");
      out.write("\t\t\t\t<td><input type=\"text\" name=\"firstname\" value=\"\" placeholder=\"--Enter the name--\" required=\"true\" maxlength=\"30\"/></td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t\t<td><b>Last Name:</b></td>\r\n");
      out.write("\t\t\t\t<td><input type=\"text\" name=\"lastname\" value=\"\" placeholder=\"--Enter the name--\" required=\"true\" maxlength=\"15\"/></td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t\t<td><b>Sex:</b></td>\r\n");
      out.write("\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\tMale:<input type=\"radio\" name=\"sex\" value=\"Male\" checked />&nbsp;\r\n");
      out.write("\t\t\t\t\t\tFemale:<input type=\"radio\" name=\"sex\" value=\"Female\"/>\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t\t<td> <b>Department:</b></td>\r\n");
      out.write("\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t<select name=\"department\" >\r\n");
      out.write("\t\t\t\t\t\t\t<option value=\"-Select the Department--\">-Select the Department--</option>\r\n");
      out.write("\t\t\t\t\t\t\t  <option value=\"MCA\">MCA</option>\r\n");
      out.write("\t\t\t\t\t\t\t  <option value=\"CS\">CS</option>\r\n");
      out.write("\t\t\t\t\t\t\t  <option value=\"ECE\">ECE</option>\r\n");
      out.write("\t\t\t\t\t\t\t  <option value=\"IT\">IT</option>\r\n");
      out.write("\t\t\t\t\t\t</select>\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t\t<td><b>Address:</b></td>\r\n");
      out.write("\t\t\t\t<td><input type=\"textarea\" name=\"address\" rows=\"10\" cols=\"30\" placeholder=\"--Enter the address--\" required=\"true\" \t\t\t\t\t\t\t\t\t  maxlength=\"50\"/></td>\r\n");
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
      out.write("\t\t\t\t<td><b>Email Address:</b></td>\r\n");
      out.write("\t\t\t\t<td><input type=\"text\" name=\"email\" placeholder=\"--Enter the email--\" maxlength=\"30\" /></td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t\t<td><b>Password:</b></td>\r\n");
      out.write("\t\t\t\t<td><input type=\"password\" name=\"password\" maxlength=\"10\" placeholder=\"--Enter the password--\"/></td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t\t<td>&nbsp;</td>\r\n");
      out.write("\t\t\t\t<td><input type=\"submit\" name=\"submit\" value=\"Register\">\r\n");
      out.write("\t\t\t\t\t\t<input type=\"reset\" name=\"reset\" value=\"Reset\"></td>\r\n");
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
