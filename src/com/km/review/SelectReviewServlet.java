package com.km.review;

import java.awt.print.Printable;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.km.lodging.LodgingDAO;
import com.km.lodging.LodgingVO;
import com.km.lodging.ReviewScoreVO;

import oracle.jdbc.OracleResultSetMetaData.SecurityAttribute;

/**
 * Servlet implementation class users_loginoutServlet
 */
@WebServlet("/SelectReview")
public class SelectReviewServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ReviewVO rvo = new ReviewVO();
				
		ArrayList<ReviewVO> reviewlist = new ArrayList<ReviewVO>();
		rvo.setReserve_seq(1);	//임의의 값 넣어주기
		
		ReviewDAO dao = new ReviewDAO();
		
		rvo = dao.selectShowReview(rvo);	//선택된 숙소정보 불러오기
		reviewlist = dao.selectReview(rvo);	//선택된 숙소의 리뷰정보

		
		request.setAttribute("KEY_RVO", rvo);
		request.setAttribute("KEY_REVIEW", reviewlist);
		request.setAttribute("KEY_REVIEW_COUNT", reviewlist.size());
		
		System.out.println(rvo.getReview_content());
		request.getRequestDispatcher("koreamate_Review.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
		
	}

}
