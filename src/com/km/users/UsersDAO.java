package com.km.users;

import org.apache.ibatis.session.SqlSession;

import com.km.common.MyBatisFactory;


public class UsersDAO {

	
	
	
	
	
	public UsersVO login(UsersVO mvo) {
		SqlSession conn =null;
		try { 
			conn = MyBatisFactory.getFactory().openSession();
			mvo = conn.selectOne("usersNameSpace.login", mvo);
		}catch(Exception e){
			e.printStackTrace();
		} finally {
			conn.close();
		}
		return mvo;
	}
	
	
	
	
	
	
	public void logdate(String email) {
		SqlSession conn =null;
		try { 
			conn = MyBatisFactory.getFactory().openSession();
			conn.update("usersNameSpace.logdate", email);
			conn.commit();
		} finally {
			conn.close();
		}
		return;
	}
	
	
	public int register(UsersVO uvo) {
		SqlSession conn =null;
		int res = 0;
		try { 
			conn = MyBatisFactory.getFactory().openSession();
			res = conn.insert("usersNameSpace.register", uvo);
			conn.commit();
		} finally {
			conn.close();
		}
		return res; 
	}
	
}
