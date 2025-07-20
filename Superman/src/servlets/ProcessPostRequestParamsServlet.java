package servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ProcessPostRequestParamsServlet
 */
@WebServlet("/ProcessPostRequestParamsServlet")
public class ProcessPostRequestParamsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String uid = request.getParameter("uid");
		String pwd = request.getParameter("pwd");
		
		String html = "<html><body><h1>Hello Mr. %s. Your password is %s</h1></body></html>";
		PrintWriter out = response.getWriter();
		out.printf(html, uid, pwd);
		out.close();
	}

}
