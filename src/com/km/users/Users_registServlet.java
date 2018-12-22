package com.km.users;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Users_regist
 */
@WebServlet("/regist")
public class Users_registServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("회원가입왔쪄염 뿌우");
		
		
		String email = (String)request.getAttribute("email");
		String password = (String) request.getAttribute("password");
		
		System.out.println(email + " : " + password);
		
		
		
		
		response.sendRedirect("index.jsp");
	}

}
