package com.km.lodging;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SelectedLodging
 */
@WebServlet("/SelectedLodging")
public class SelectedLodging extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		LodgingVO lvo = new LodgingVO();
				
		ArrayList<ReviewScoreVO> reviewlist = new ArrayList<ReviewScoreVO>();
		lvo.setLodging_seq(2);			//임의의 값 넣어주기
		
		LodgingDAO dao = new LodgingDAO();
		
		lvo = dao.selectOneLodging(lvo);			//선택된 숙소정보 불러오기
		reviewlist = dao.selectLodgingReview(lvo);	//선택된 숙소의 리뷰정보

		
		request.setAttribute("KEY_LVO", lvo);
		request.setAttribute("KEY_REVIEW", reviewlist);
		request.setAttribute("KEY_REVIEW_COUNT", reviewlist.size());
		
		System.out.println(lvo.getCheckin_score_avg());
		request.getRequestDispatcher("koreamate_sdetail.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
		
	}

}
