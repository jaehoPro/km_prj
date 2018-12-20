package com.km.review;

import org.apache.ibatis.session.SqlSession;

import com.km.common.MyBatisFactory;



public class ReviewDAO {
	public ReviewVO showReview(ReviewVO rvo)
	{
		SqlSession conn = null;
		
		conn = MyBatisFactory.getFactory().openSession();
		rvo=conn.selectOne("reviewSpace.selectShowReview", rvo);

		return rvo;
	}

}

