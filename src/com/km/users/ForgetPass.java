package com.km.users;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Properties;
import java.util.Random;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Mail_send
 */
@WebServlet("/forgetpass")
public class ForgetPass extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		  String host     = "smtp.naver.com";
		  final String user   = "dh930108";
		  final String password  = "molayo2444";
		  
		  response.setContentType("text/html; charset=UTF-8");
		  PrintWriter out = response.getWriter();
		  
		  String email = request.getParameter("email");
		  
		  UsersDAO dao = new UsersDAO();
		  int res = 0;
		  
		  res = dao.emailcheck(email);

		 if(res == 0) {
			 System.out.println("발송실패");
			 out.println("<script>alert('일치하는 이메일이 없습니다.'); location.href='/pages/forgot_password.jsp';</script>");
			 
			 out.flush();
		 }else {
		  String to   = email;
		  
		  UsersVO uvo = new UsersVO();
		  uvo.setEmail(email);
		  
		  StringBuffer tempw = new StringBuffer();
			for(int i=0; i < 3; i++) {
			Random rnd = new Random();
			String randomStr = String.valueOf((char) ((int) (rnd.nextInt(26)) + 97));
			tempw.append(randomStr);
			}
			for(int i=0; i < 3; i++) {
			Random rnd = new Random();
			String randomStr = String.valueOf(rnd.nextInt(10));
			tempw.append(randomStr);
			}
			
		   uvo.setPassword(tempw.toString());

		  
		  
		  dao.temppsw(uvo);

		  
		  // Get the session object
		  Properties props = new Properties();
		  props.put("mail.smtp.host", host);
		  props.put("mail.smtp.auth", "true");

		  Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
		   protected PasswordAuthentication getPasswordAuthentication() {
		    return new PasswordAuthentication(user, password);
		   }
		  });

		  // Compose the message
		  try {
		   MimeMessage message = new MimeMessage(session);
		   message.setFrom(new InternetAddress(user));
		   message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));

		   // Subject
		   message.setSubject("[KoreaMate] 임시 비밀번호");
		   
		   // Text
		   message.setText("임시비밀번호는 " + tempw.toString() + "입니다.");

		   // send the message
		   Transport.send(message);
		   System.out.println("message sent successfully...");
		   out.println("<script>alert('이매일로 임시비밀번호가 발송되었습니다.'); location.href='/pages/login.jsp';</script>");
			 
		   out.flush();

		  } catch (MessagingException e) {
		   e.printStackTrace();
		  }
		 }
	}

}
