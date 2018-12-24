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
		LodgingVO lvo = new LodgingVO();
		int lodgingseq=Integer.parseInt(request.getParameter("lodging_seq"));
		System.out.println(lodgingseq+"===================");
		ArrayList<ReviewScoreVO> reviewlist = new ArrayList<ReviewScoreVO>();
		ArrayList<LodgingVO> lodginglist = new ArrayList<LodgingVO>();
		lvo.setLodging_seq(lodgingseq);			//(숙소번호)임의의 값 넣어주기
		
		
		LodgingDAO dao = new LodgingDAO();
	
		reviewlist = dao.selectLodgingReview(lvo);	//선택된 숙소의 리뷰정보
		lodginglist= dao.hostLodgingList(lvo);		//숙소 리스트 불러오기
		System.out.println(lodginglist.size());
		
		//숙소정보불러오기
		
		request.setAttribute("KEY_REVIEW", reviewlist);
		request.setAttribute("KEY_REVIEW_COUNT", reviewlist.size());
		
		
		//호스트숙소리스트
		request.setAttribute("KEY_Lodging", lodginglist);
		//request.setAttribute("KEY_REVIEW_COUNT", lodginglist.size());
		
	//	System.out.println(rvo.getReview_content());
		request.getRequestDispatcher("koreamate_Review.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
		
	}

}
