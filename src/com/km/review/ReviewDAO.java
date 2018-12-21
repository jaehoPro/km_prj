package com.km.review;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import com.km.common.MyBatisFactory;
import com.km.lodging.LodgingVO;
import com.km.lodging.ReviewScoreVO;



public class ReviewDAO {
	public ReviewVO selectShowReview(ReviewVO rvo)
	{
		SqlSession conn = null;
		try {	
		conn = MyBatisFactory.getFactory().openSession();
		rvo=conn.selectOne("reviewSpace.selectShowReview", rvo);
	}finally {
		conn.close();
	}
	return rvo;
}
	public ArrayList<ReviewVO> selectReview(ReviewVO rvo)
	{
		ArrayList<ReviewVO> list = new ArrayList<ReviewVO>();
		SqlSession conn = null;
		
		try {
			conn = MyBatisFactory.getFactory().openSession();
			list=(ArrayList)conn.selectList("reviewSpace.selectReview", rvo);
		}finally {
			conn.close();
		}
		
		
		return list;
	}
	
	
	

}

