package com.km.users;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class users_loginoutServlet
 */
@WebServlet("/login")
public class Users_loginoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("logout");
		HttpSession session = request.getSession();
		session.invalidate();
		session.setMaxInactiveInterval(0);
		response.sendRedirect("index.jsp");
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		System.out.println("로그인11");
		//${param.userid} 
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		System.out.println(email + password);
		UsersVO mvo = new UsersVO();
		mvo.setEmail(email);
		mvo.setPassword(password);
		
		UsersDAO dao = new UsersDAO();
		
		//mvo = dao.login(mvo);
		
		//System.out.println(mvo.getGrade());
		
		
	}
	

}
