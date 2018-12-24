package com.km.users;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.oreilly.servlet.multipart.FileRenamePolicy;

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
		System.out.println("회원가입");
		String saveDirectory = "C:/uploads";
		int maxPostSize = 1024 * 1024 * 10; //10M
		String encoding = "UTF-8";

		
		FileRenamePolicy policy = new DefaultFileRenamePolicy();
		MultipartRequest mrequest = new MultipartRequest(request,saveDirectory,maxPostSize,encoding,policy);
		
		String email = mrequest.getParameter("email");
		String password = mrequest.getParameter("password");
		String repassword = mrequest.getParameter("repassword");
		String f_name = mrequest.getParameter("f_name");
		String l_name = mrequest.getParameter("l_name");
		String sex = mrequest.getParameter("radio_s");
		String birth_y = mrequest.getParameter("birth_y");
		String birth_m = mrequest.getParameter("birth_m");
		String birth_d = mrequest.getParameter("birth_d");
		String nation = mrequest.getParameter("nation");
		String tel = mrequest.getParameter("tel");
		String introduction = mrequest.getParameter("introduction");
		String user_pic_oriname = mrequest.getOriginalFileName("profilePic");	
		String user_pic_rename = mrequest.getFilesystemName("profilePic");
			
		
		// Script안되는듯하여 유효성검사는 여기서
		if(password != repassword) {
			System.out.println("비번불일치");
			response.sendRedirect(".index.jsp");
		}
		if(email == null || password == null || f_name == null || l_name == null || 
		   sex == null || birth_y == null || birth_m == null || birth_d == null ||
		   nation == null || tel == null || introduction == null || user_pic_oriname == null) {
			System.out.println("항목미입력");
			response.sendRedirect(".index.jsp");
		}
		
			
			
			StringBuffer rnd3 = new StringBuffer();
			for(int i=0; i < 3; i++) {
			Random rnd = new Random();
			String randomStr = String.valueOf((char) ((int) (rnd.nextInt(26)) + 97));
			rnd3.append(randomStr);
			}
			
		String usercode = email.substring(0, 3) + birth_m + birth_d + rnd3;
		
		

		
		System.out.println(usercode);
		UsersVO uvo = new UsersVO();
		
		uvo.setUsercode(usercode);
		uvo.setEmail(email);
		uvo.setPassword(password);
		uvo.setF_name(f_name);
		uvo.setL_name(l_name);
		uvo.setSex(sex);
		uvo.setBirth_y(birth_y);
		uvo.setBirth_m(birth_m);
		uvo.setBirth_d(birth_d);
		uvo.setNation(nation);
		uvo.setTel(tel);
		uvo.setIntroduction(introduction);
		uvo.setUser_pic_path(saveDirectory);
		uvo.setUser_pic_oriname(user_pic_oriname);
		uvo.setUser_pic_rename(user_pic_rename);
		
		UsersDAO dao = new UsersDAO();
		
		int res = dao.register(uvo);
		
		
		if(res == 1) {
			System.out.println("가입완료");
			response.sendRedirect("./pages/login.jsp");
		}else {
			System.out.println("가입실패");
			response.sendRedirect(".index.jsp");
		}
	}

}
