package com.km.users;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.oreilly.servlet.multipart.FileRenamePolicy;
import com.oreilly.servlet.multipart.Part;

/**
 * Servlet implementation class IdentifyServlet
 */
@WebServlet("/identify")
public class IdentifyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		String usercode = (String)session.getAttribute("SESS_USERCODE");
		
		
		IdentifyVO ivo = new IdentifyVO();
		UsersDAO dao = new UsersDAO();
		
		ivo = dao.identy(usercode);
		
		String pic = ivo.getId_pic_rename();
		String confirm = ivo.getConfirm();
		request.setAttribute("ivo", ivo);
		
		System.out.println(usercode+" : "+confirm+" : "+pic);
		if(pic ==  null) {
			request.getRequestDispatcher("/pages/identy-n.jsp").forward(request, response);
		}else {
			if(confirm.equals("n")) {
				request.getRequestDispatcher("/pages/identy-w.jsp").forward(request, response);
			}else if(confirm.equals("r")) {
				request.getRequestDispatcher("/pages/identy-r.jsp").forward(request, response);
			}else if(confirm.equals("y")) {
				request.getRequestDispatcher("/pages/identy-y.jsp").forward(request, response);
			}else {
				response.sendRedirect("/index.jsp");
			}
		}
		
		
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("파업");
		HttpSession session = request.getSession();
		IdentifyVO ivo = new IdentifyVO();
		if(session.getAttribute("SESS_USERCODE") == null) {
			response.sendRedirect("/pages/login.jsp");
		} else {
			String sess_usercode = session.getAttribute("SESS_USERCODE").toString();
			ivo.setUsercode(sess_usercode);
		}
		
		String saveDirectory = "C:/uploads/id";
		int maxPostSize = 1024 * 1024 * 10; //10M
		String encoding = "UTF-8";
		
		//--------------------------------------------
		// * c:/uploads 폴더에 파일카피 input/output Stream
		// * 중복파일 rename
		//--------------------------------------------
		FileRenamePolicy policy = new DefaultFileRenamePolicy();
		MultipartRequest mrequest = new MultipartRequest(request,saveDirectory,maxPostSize,encoding,policy);
		
		
		//-----------------------------------------------
		// * shop_pic : cos.jar 를 이용한 단일 파일 업로드 처리 
		//-----------------------------------------------
		String origPname = mrequest.getOriginalFileName("identy");
		String sysPname =  mrequest.getFilesystemName("identy");
		
		
		//**프로필 사진을 기존데로 사용하는 경우
		//if(origPname == null) {
//				origPname = mrequest.getParameter("old_pname");
//				sysPname = mrequest.getParameter("old_sysname");
//				saveDirectory = mrequest.getParameter("old_ppath");
//				uvo.setPpath(saveDirectory);
//				uvo.setPname(origPname);
//				uvo.setSysname(sysPname);
		//**프로필 사진을 바꾼 경우
	//	} else {
				//3.File 객체를 이용한 원본 파일명 
				File pfile = mrequest.getFile("identy");
				String filePname  = pfile.getName(); 	
						
				//중복 시 리네임된 파일명
				sysPname = mrequest.getFilesystemName("identy");
				
				//파일크기
				long attachFileSize = pfile.length();		
				String attachFileContentType = mrequest.getContentType("identy");
				
				//파일 확장자 처리
				String attachFileExt = "jpg";
				if(origPname.lastIndexOf(".") != -1) {
					attachFileExt = origPname.substring(origPname.lastIndexOf(".")+1);
				}
				if(!attachFileExt.toUpperCase().equals("JPG") &&
						!attachFileExt.toUpperCase().equals("PNG") &&
						!attachFileExt.toUpperCase().equals("GIF")
				) {
					response.setContentType("text/html; charset=UTF-8");
					PrintWriter out = response.getWriter();
					out.println("<script>alert('이미지 첨부만 가능')</script>");
					//response.sendRedirect("shop_form.jsp");
				}
				ivo.setId_pic_path(saveDirectory);
				ivo.setId_pic_oriname(origPname);
				ivo.setId_pic_rename(sysPname);
				
		//}
		
		
		//--------------------------------------------
		// 2. DB저장작업 : USERS 테이블 정보 수정(+프로필 정보)
		//--------------------------------------------
		UsersDAO dao = new UsersDAO();
		int res = dao.upPropic(ivo);
		String hihi = mrequest.getParameter("hihi");
		System.out.println(hihi);
		if(res > 0) {
			if(hihi.equals("yes")) {
				response.sendRedirect("/closePopup.jsp");
			}else {
			response.sendRedirect("/identify");
			}
		} else {
			System.out.println("404걸어 갑니다.");
			response.sendRedirect("404.jsp");
		}
	}

}
