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
@WebServlet("/TopSearchResult")
public class TopSearchResult extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");
		System.out.println("다훈 안녕! 그만해!");
		String destination = request.getParameter("destination2");
		
		
		System.out.println("목적지 : "+destination);
		
		
//		String checkInTime = request.getParameter("checkInTime");  //데이터 형식
//		String checkOutTime = request.getParameter("checkOutTime");
		
		ReserveVO rvo = new ReserveVO();
		rvo.setAddr_city(destination);
		
		
		LodgingDAO dao = new LodgingDAO();
		ArrayList<ReserveVO> list = dao.topsearch(rvo);
		System.out.println(list.size() + " 건 검색 완료!!^^");
		
		request.setAttribute("SEARCH_LIST", list);
		request.getRequestDispatcher("koreamate_search.jsp").forward(request, response);
		
	}

}
