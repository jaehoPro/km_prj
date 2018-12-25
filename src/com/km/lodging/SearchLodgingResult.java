package com.km.lodging;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 
 * Servlet implementation class SelectedLodging
 */
@WebServlet("/SearchLodiginResult")
public class SearchLodgingResult extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");
		System.out.println("다훈 안녕! 그만해!");
		String destination = request.getParameter("destination");
		String checkIn = request.getParameter("checkIn");
		String checkOut = request.getParameter("checkOut");
		int checkInTime = Integer.parseInt(request.getParameter("checkInTime"));  //데이터 형식
		int checkOutTime = Integer.parseInt(request.getParameter("checkOutTime"));
		
		System.out.println("목적지 : "+destination);
		System.out.println("체크인시간 : "+checkIn);
		System.out.println("체크아웃시간 : "+checkOut);

		System.out.println("체크인타임 : "+checkInTime);
		System.out.println("체크아웃타임 : "+checkOutTime);

		
//		String checkInTime = request.getParameter("checkInTime");  //데이터 형식
//		String checkOutTime = request.getParameter("checkOutTime");
		
		ReserveVO rvo = new ReserveVO();
		rvo.setAddr_city(destination);
		rvo.setCheckin_date(checkIn);
		rvo.setCheckout_date(checkOut);
		rvo.setCheckin_time(checkInTime);
		rvo.setCheckout_time(checkOutTime);
		
		LodgingDAO dao = new LodgingDAO();
		ArrayList<ReserveVO> list = dao.search(rvo);
		System.out.println(list.size() + " 건 검색 완료!!^^");
		
		request.setAttribute("SEARCH_LIST", list);
		request.getRequestDispatcher("koreamate_search.jsp").forward(request, response);
		
	}

}
