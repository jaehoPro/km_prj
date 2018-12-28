package com.km.users;

import org.apache.ibatis.session.SqlSession;

import com.km.common.MyBatisFactory;

public class UsersDAO {

	
	
	
	
	public UsersVO login(UsersVO mvo) {
		SqlSession conn =null;
		try { 
			conn = MyBatisFactory.getFactory().openSession();
			mvo = conn.selectOne("usersNameSpace.login", mvo);
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
	
	public int delcheck1(String usercode) {
		SqlSession conn =null;
		int res = 0;
		try { 
			conn = MyBatisFactory.getFactory().openSession();
			res = conn.selectOne("usersNameSpace.delcheck1", usercode);
		} finally {
			conn.close();
		}
		return res; 
		
	}
	
	public int delcheck2(String usercode) {
		SqlSession conn =null;
		int res = 0;
		try { 
			conn = MyBatisFactory.getFactory().openSession();
			res = conn.selectOne("usersNameSpace.delcheck2", usercode);
		} finally {
			conn.close();
		}
		return res; 
		
	}

	public void withdraw(String usercode) {
		// TODO Auto-generated method stub
		SqlSession conn =null;
		try { 
			conn = MyBatisFactory.getFactory().openSession();
			conn.update("usersNameSpace.withdraw", usercode);
			conn.commit();
		} finally {
			conn.close();
		}
		return; 
	}
	
	public int emailcheck(String email) {
		SqlSession conn =null;
		int res = 0;
		try { 
			conn = MyBatisFactory.getFactory().openSession();
			res = conn.selectOne("usersNameSpace.emailcheck", email);
			conn.commit();
		} finally {
			conn.close();
		}
		return res; 
	}
	
	public void temppsw(UsersVO uvo) {
		SqlSession conn =null;
		try { 
			conn = MyBatisFactory.getFactory().openSession();
			conn.update("usersNameSpace.temppassword", uvo);
			conn.commit();
		} finally {
			conn.close();
		}
		return;
	}
	
	public int upPropic(IdentifyVO ivo) {
		System.out.println("업픽");
		SqlSession conn =null;
		int res = 0;
		try { 
			conn = MyBatisFactory.getFactory().openSession();
			res = conn.update("usersNameSpace.updatepropic", ivo);
			conn.update("usersNameSpace.updatepropic2", ivo);
			conn.commit();
		} finally {
			conn.close();
		}
		return res;
	}
	
	public IdentifyVO identy(String usercode) {
		SqlSession conn =null;
		IdentifyVO ivo = new IdentifyVO();
		IdentifyVO ivo2 = new IdentifyVO();
		try { 
			conn = MyBatisFactory.getFactory().openSession();
			ivo = conn.selectOne("usersNameSpace.identy", usercode);
			ivo2 = conn.selectOne("usersNameSpace.identy2", usercode);
			ivo.setConfirm(ivo2.getConfirm());
		} finally {
			conn.close();
		}
		return ivo; 
		
	}
	
}
