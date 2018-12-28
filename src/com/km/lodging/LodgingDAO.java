package com.km.lodging;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import com.km.common.MyBatisFactory;


public class LodgingDAO {
	//숙소 예약하기
	public int insertReserve(ReserveVO rvo)
	{
		SqlSession conn = null;
		int res = 0;
		
		try {
		
			conn = MyBatisFactory.getFactory().openSession();
			res=conn.insert("LodgingSpace.insertReservation", rvo);
			conn.commit();
		}finally {
			conn.close();
		}
		return res;
	}
	//선택된 숙소정보 불러오기
	public LodgingVO selectOneLodging(LodgingVO lvo)
	{
		SqlSession conn = null;
		
		try {
		
			conn = MyBatisFactory.getFactory().openSession();
			lvo=conn.selectOne("LodgingSpace.selectOneLodging", lvo);
		}finally {
			conn.close();
		}
		return lvo;
	}
	
	//선택된 숙소리뷰 불러오기
		public ArrayList<ReviewScoreVO> selectLodgingReview(LodgingVO lvo)
		{
			ArrayList<ReviewScoreVO> list = new ArrayList<ReviewScoreVO>();
			SqlSession conn = null;
			
			try {
				conn = MyBatisFactory.getFactory().openSession();
				list=(ArrayList)conn.selectList("LodgingSpace.selectLodgingReview", lvo);
			}finally {
				conn.close();
			}
			
			
			return list;
		}
<<<<<<< HEAD
=======
		
		
		return list;
	}

>>>>>>> branch 'master' of https://github.com/jaehoPro/km_prj
	
	//해당 호스트의 숙소리스트불러오기
	
	public ArrayList<LodgingVO> hostLodgingList(LodgingVO lvo)
	{
		ArrayList<LodgingVO> list = new ArrayList<LodgingVO>();
		SqlSession conn = null;
		
		try {
			conn = MyBatisFactory.getFactory().openSession();
			list=(ArrayList)conn.selectList("LodgingSpace.hostLodgingList", lvo);
		}finally {
			conn.close();
		}
		
		
		return list;
	}

	
<<<<<<< HEAD
=======
	

>>>>>>> branch 'master' of https://github.com/jaehoPro/km_prj
		

		//해당 조건검색 불러오기
	public ArrayList<ReserveVO> search(ReserveVO lvo)
	{
		ArrayList<ReserveVO> list = new ArrayList<ReserveVO>();
		SqlSession conn = null;
		try {
			conn = MyBatisFactory.getFactory().openSession();
			list=(ArrayList)conn.selectList("LodgingSpace.searchkeyword", lvo);
		}finally {
			conn.close();
		}
		return list;
	}
<<<<<<< HEAD
=======
	
	
	//해당 탑검색 불러오기
	public ArrayList<ReserveVO> topsearch(ReserveVO lvo)
	{
		ArrayList<ReserveVO> list = new ArrayList<ReserveVO>();
		SqlSession conn = null;
		try {
			conn = MyBatisFactory.getFactory().openSession();
			list=(ArrayList)conn.selectList("LodgingSpace.topsearch", lvo);
		}finally { 
			conn.close();
		}
		return list;
	}
	
	//해당 위시리스트 불러오기
		public ArrayList<ReserveVO> wishilist(ReserveVO lvo)
		{
			ArrayList<ReserveVO> list = new ArrayList<ReserveVO>();
			SqlSession conn = null;
			try {
				conn = MyBatisFactory.getFactory().openSession();
				list=(ArrayList)conn.selectList("LodgingSpace.topsearch", lvo);
			}finally {
				conn.close();
			}
			return list;
		}

	

>>>>>>> branch 'master' of https://github.com/jaehoPro/km_prj

}
