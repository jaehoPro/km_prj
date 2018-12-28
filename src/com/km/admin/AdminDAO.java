package com.km.admin;

import java.util.*;
import org.apache.ibatis.session.SqlSession;

import com.km.common.MyBatisFactory;
import com.km.users.UsersVO;

public class AdminDAO {
	public List<UsersVO> userlist() {
		SqlSession conn =null;
		List<UsersVO> ulist = null;
		try { 
			conn = MyBatisFactory.getFactory().openSession();
			ulist = conn.selectList("usersNameSpace.login");
		} finally {
			conn.close();
		}
		return ulist;
	}
	
}
