package org.simplilearn.lms.controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.simplilearn.lms.entities.User;
import org.simplilearn.lms.service.UserService;
import org.simplilearn.lms.service.UserServicesImpl;

@WebServlet
public class UserController extends HttpServlet {
	
	private static final long serialVersionUID = 4104654709799047914L;
	private UserService userService=new UserServicesImpl();
	
	
	
	@Override
	protected void doPost(HttpServletRequest req,HttpServletResponse resp) throws ServletException , IOException{
		
		resp.setContentType("text/html");
		String username=req.getParameter("username");
		String password=req.getParameter("password");
		String usertype=req.getParameter("usertype");
		
		User user=new User();
		user.setUsername(username);
		user.setPassword(password);
		user.setUsertype(usertype);
		
		userService.insert(user);
		req.setAttribute("msg","User registered successfully");
		RequestDispatcher rd=req.getRequestDispatcher("index.jsp");
		rd.forward(req,resp);
	}
	

}
