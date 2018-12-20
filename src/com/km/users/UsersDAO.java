package com.km.users;

import org.apache.ibatis.session.SqlSession;

import com.km.common.MyBatisFactory;

public class UsersDAO {

	
	
	
	
	public UsersVO login(UsersVO mvo) {
		SqlSession conn =null;
		try { 
			conn = MyBatisFactory.getFactory().openSession();
			mvo = conn.selectOne("usersNameSpace.login");
		} finally {
			conn.close();
		}
		return mvo;
	}
}
