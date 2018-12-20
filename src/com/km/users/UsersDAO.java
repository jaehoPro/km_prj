package com.km.users;

import org.apache.ibatis.session.SqlSession;

import com.km.common.MyBatisFactory;

public class UsersDAO {

	
	
	
	
	public int login() {
		int res = 0;
		SqlSession conn =null;
		try { 
			conn = MyBatisFactory.getFactory().openSession();
			res = conn.selectOne("shopNameSpace.selectCount");
		} finally {
			conn.close();
		}
		return res;
	}
}
