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
@WebServlet("/LodgingPayment")
public class LodgingPaymentServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ReserveVO rvo = new ReserveVO();
		rvo.setLodging_seq(Integer.parseInt(request.getParameter("lodging_seq")));
		rvo.setLodging_name(request.getParameter("lodging_name"));
		rvo.setCheckin_date(request.getParameter("datepicker"));
		rvo.setCheckout_date(request.getParameter("datepicker2"));
		rvo.setCheckin_time(Integer.parseInt(request.getParameter("checkintime")));
		rvo.setCheckout_time(Integer.parseInt(request.getParameter("checkouttime")));
		rvo.setReserve_people(Integer.parseInt(request.getParameter("reserve_people")));
		rvo.setPrice(Integer.parseInt(request.getParameter("payment")));
		
		System.out.println(rvo.getCheckin_date());
				
		request.setAttribute("KEY_RVO", rvo);
		request.getRequestDispatcher("koreamate_payment.jsp").forward(request, response);
		
		
		
	}

}
