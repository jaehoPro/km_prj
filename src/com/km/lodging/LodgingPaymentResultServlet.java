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
@WebServlet("/LodgingPaymentResult")
public class LodgingPaymentResultServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ReserveVO rvo = new ReserveVO();
		rvo.setLodging_seq(Integer.parseInt(request.getParameter("lodging_seq")));
		rvo.setCheckin_date(request.getParameter("checkin_date"));
		rvo.setCheckout_date(request.getParameter("checkout_date"));
		rvo.setCheckin_time(Integer.parseInt(request.getParameter("checkin_time")));
		rvo.setCheckout_time(Integer.parseInt(request.getParameter("checkout_time")));
		rvo.setReserve_people(Integer.parseInt(request.getParameter("reserve_people")));
		rvo.setPrice(Integer.parseInt(request.getParameter("price")));
		rvo.setMassege_to_host("잘부탁드립니다.");
		rvo.setUsercode(request.getParameter("usercode"));
		
		
		//예약테이블 DB추가
		LodgingDAO dao = new LodgingDAO();
		System.out.println("삽입결과=========="+dao.insertReserve(rvo));
		
				
		request.setAttribute("KEY_RVO", rvo);
		request.getRequestDispatcher("koreamate_payment_result.jsp").forward(request, response);
		
		
		
	}

}
