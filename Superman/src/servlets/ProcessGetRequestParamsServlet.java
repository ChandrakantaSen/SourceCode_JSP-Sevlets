package servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ProcessGetRequestParamsServlet
 */
@WebServlet("/ProcessGetRequestParamsServlet")
public class ProcessGetRequestParamsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String first = request.getParameter("fn");
		String last = request.getParameter("ln");
		
		String html = "<html><body><h1>Hello Mr. %s %s</h1></body></html>";
		PrintWriter out = response.getWriter();
		out.printf(html, first, last);
		out.close();
	}

}
