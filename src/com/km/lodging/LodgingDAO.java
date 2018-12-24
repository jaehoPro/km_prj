package com.km.lodging;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import com.km.common.MyBatisFactory;


public class LodgingDAO {
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

}
