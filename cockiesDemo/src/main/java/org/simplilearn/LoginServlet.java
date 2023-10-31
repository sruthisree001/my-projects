package org.simplilearn;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class LoginServlet
 */

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			response.setContentType("text/html");
			
			String username=request.getParameter("username");
			String password=request.getParameter("password");
			if(username.equals("suresh")&&password.equals("suresh@123"))
			{
				Cookie cookie=new Cookie("username",username);
				response.addCookie(cookie);
			}
			else
			{
				out.println("<h1>USername/password is incorrect </h1>");
			}
			out.close();
			
			
			
			
				
	}

}
