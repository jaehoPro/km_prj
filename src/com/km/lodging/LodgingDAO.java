package com.km.lodging;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import com.km.common.MyBatisFactory;


public class LodgingDAO {
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
	
	
=======
		
	public ArrayList<ReviewScoreVO> search(LodgingVO lvo)
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
>>>>>>> branch 'master' of https://github.com/jaehoPro/km_prj

}
