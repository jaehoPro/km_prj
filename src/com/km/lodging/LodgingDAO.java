package com.km.lodging;

import org.apache.ibatis.session.SqlSession;

import com.km.common.MyBatisFactory;


public class LodgingDAO {
	public LodgingVO memberLogin(LodgingVO lvo)
	{
		SqlSession conn = null;
		
		conn = MyBatisFactory.getFactory().openSession();
		lvo=conn.selectOne("userNameSpace.selectOneLodging", lvo);

		return lvo;
	}

}
