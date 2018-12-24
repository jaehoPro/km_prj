package com.km.users;

import java.awt.print.Printable;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import oracle.jdbc.OracleResultSetMetaData.SecurityAttribute;

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

		
		System.out.println("로그인16");
		//${param.userid} 
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		UsersVO mvo = new UsersVO();
		mvo.setEmail(email);
		mvo.setPassword(password);
		
		UsersDAO dao = new UsersDAO();
		
		mvo = dao.login(mvo);
		

		try {
		if(mvo.getUsercode() == null || mvo.getUsercode().equals("")) {
			//이메일비번 틀릴시 여기로 와야하나 안옴. trycatch처리
			response.sendRedirect("/pages/login.jsp");
		}else {
			
			//page request session application
			//최근접속일 갱신
			dao.logdate(email);
			
			
			//세션담기
			System.out.println(mvo.getUsercode());
			System.out.println(mvo.getGrade());
			System.out.println(mvo.getConfirm());
			System.out.println(mvo.getF_name());
			System.out.println(mvo.getL_name());
			System.out.println(mvo.getUser_pic_path());
			System.out.println(mvo.getUser_pic_oriname());
			System.out.println(mvo.getUser_pic_rename());
			
			HttpSession session = request.getSession();
			session.setAttribute("SESS_USERCODE", mvo.getUsercode());
			session.setAttribute("SESS_GRADE", mvo.getGrade());
			session.setAttribute("SESS_CONFIRM", mvo.getConfirm());
			session.setAttribute("SESS_FNAME", mvo.getF_name());
			session.setAttribute("SESS_LNAME", mvo.getL_name());
			session.setAttribute("SESS_PIC_PATH", mvo.getUser_pic_path());
			session.setAttribute("SESS_PIC_ORINAME", mvo.getUser_pic_oriname());
			session.setAttribute("SESS_PIC_RENAME", mvo.getUser_pic_rename());
		
			
			System.out.println(mvo.getGrade());
			if(mvo.getGrade().equals("g") || mvo.getGrade().equals("h")) {
				//response.sendRedirect("index.jsp");
				//Session값을 가져가야하므로 foward로...
				request.getRequestDispatcher("index.jsp").forward(request, response);
			}else if(mvo.getGrade().equals("a")) {
				response.sendRedirect("admin/index.jsp");
				//request.getRequestDispatcher("admin/index.jsp").forward(request, response);
			}
		}
		}catch(NullPointerException e) {
			e.printStackTrace();
			response.sendRedirect("index.jsp");
		}
		
	}

}
