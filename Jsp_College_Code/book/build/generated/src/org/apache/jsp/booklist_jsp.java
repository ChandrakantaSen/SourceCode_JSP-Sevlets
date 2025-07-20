package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.io.*;
import java.util.*;

public final class booklist_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.AnnotationProcessor _jsp_annotationprocessor;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_annotationprocessor = (org.apache.AnnotationProcessor) getServletConfig().getServletContext().getAttribute(org.apache.AnnotationProcessor.class.getName());
  }

  public void _jspDestroy() {
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

      out.write('\n');
      out.write('\n');
      out.write('\n');
      stockofbooks.Books book = null;
      synchronized (_jspx_page_context) {
        book = (stockofbooks.Books) _jspx_page_context.getAttribute("book", PageContext.PAGE_SCOPE);
        if (book == null){
          book = new stockofbooks.Books();
          _jspx_page_context.setAttribute("book", book, PageContext.PAGE_SCOPE);
        }
      }
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title> Library Database</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <h1> List of books...</h1>\n");
      out.write("        <a href = \"newBook.jsp\"> Add more books</a>\n");
      out.write("        <form action = \"delete.jsp\" method = \"POST\">\n");
      out.write("            <center><table border = \"1\">\n");
      out.write("                    <thead>\n");
      out.write("                        <tr>\n");
      out.write("                            <th> ID </th>\n");
      out.write("                            <th> TITLE </th>\n");
      out.write("                            <th> PRICE </th>\n");
      out.write("                        </tr>\n");
      out.write("                    </thead>\n");
      out.write("                    ");

                                ArrayList a = new ArrayList();
                                ArrayList a1 = new ArrayList();
                                try {
                                    book.connect();
                                    ResultSet rs = null;
                                    rs = book.viewBooks();
                                    int count=0;

                                    while (rs.next()) {
                                        count++;
                                        a.add(rs.getString("title"));
                    
      out.write("\n");
      out.write("                    <tr>\n");
      out.write("                        <td><input type =\"checkbox\" name = \"pkey\" value =\"");
      out.print( rs.getString("id"));
      out.write("\"/>\n");
      out.write("                        </td>\n");
      out.write("                        <td>");
      out.print(rs.getString("title"));
      out.write("</td>\n");
      out.write("                        <td>");
      out.print(rs.getString("price"));
      out.write("</td>\n");
      out.write("\n");
      out.write("                    </tr>\n");
      out.write("                    ");

                                                } //end while

                    
      out.write("\n");
      out.write("                </table></center><br>\n");
      out.write("\t\t\tcheck books for deletion....");
      out.print(count);
      out.write("\n");
      out.write("            <input type =\"submit\" value = \"Delete\"/>\n");
      out.write("        </form>\n");
      out.write("\n");
      out.write("                    ");
              session.setAttribute("a1", a);
                        out.print(a);
                        book.disconnect();
                    } catch (Exception sqle) {
                        System.out.print("Exception" + sqle);
                    }
        
      out.write("\n");
      out.write("        <a href=\"index.jsp\">test</a>\n");
      out.write("    </body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
