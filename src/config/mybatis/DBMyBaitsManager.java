package config.mybatis;

import java.io.Reader;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.km.users.UsersVO;




public class DBMyBaitsManager {
	
   public SqlSession mybatisConn() {
      String path2 = "config/mybatis/config-mybatis.xml";
      Reader reader;
      SqlSessionFactory factory = null;
      SqlSession conn = null;
      
      try {
         reader = Resources.getResourceAsReader(path2);
         factory = new SqlSessionFactoryBuilder().build(reader);
         if(factory == null)
            System.out.println("factory err");
         else
            System.out.println("factory ok");
         conn = factory.openSession();
         

      } catch(Exception e) {
         e.printStackTrace();
      }
      return conn;
   }

   public void mybatisClose(SqlSession conn) {
      System.out.println("close");
      if(conn != null) conn.close();
   }

   
   
   
   
   
   
   
   public static void main(String[] args) {
      DBMyBaitsManager db = new DBMyBaitsManager();
      SqlSession conn =db.mybatisConn();
      
      UsersVO vo = new UsersVO();
      int res = 0;
      vo.setEmail("grz");
      vo.setPassword("0000");
//      vo.setUserName("오알엠");
    System.out.println("yessssss");
      
      vo = conn.selectOne("usersNameSpace.login", vo);
      
      	System.out.println(vo.getUsercode());
		System.out.println(vo.getGrade());
		System.out.println(vo.getConfirm());
		System.out.println(vo.getF_name());
		System.out.println(vo.getL_name());
		System.out.println(vo.getUser_pic_path());
		System.out.println(vo.getUser_pic_oriname());
		System.out.println(vo.getUser_pic_rename());
		System.out.println("2014");
		
		res = conn.selectOne("usersNameSpace.delcheck1", "jjh12112123");
		
		System.out.println(res + "실화냐");
		
		res = conn.selectOne("usersNameSpace.delcheck2", "hst1216678");
		
		System.out.println(res + "진짜냐");
		
		List<UsersVO> ulist = null;
		
		ulist = conn.selectList("usersNameSpace.userlist");
		
		 System.out.println(ulist);
		 
		 System.out.println(ulist.size());
		 
		 for(int i = 0; ulist.size() > i; i++) {
		 System.out.println(ulist.get(i).getF_name());
		 }
		 
		 
//		 Iterator it = ulist.iterator();
//		 while(it.hasNext()){
//		 System.out.println(it.next());
//		 System.out.println(ulist.get(0).getF_name());
//		 }
    
       
      
//      conn.rollback();
     
//
//
//      MemberVO lvo = new MemberVO();
//      lvo.setSearchGubun("USERID");
//      lvo.setSearchStr("pdh");
//      ArrayList<MemberVO> list = (ArrayList)conn.selectList("userNameSpace.member_list");
//      System.out.println(list.size()+"건");
//      System.out.println(list.get(0).getPpath());

      
   
      
//      conn.selectOne(arg0, obj)
//      conn.selectList(arg0, arg1);
//      conn.insert(arg0, arg1);
//      conn.update(arg0, arg1);
//      conn.delete(arg0, arg1);
//      conn.commit();
//      conn.rollback();
      
      
      db.mybatisClose(conn);
      
      //DI Call Test
//      GenericXmlApplicationContext ctx
//       = new GenericXmlApplicationContext("classpath:test.xml");
//      TestDAO dao = (TestDAO)ctx.getBean("aaaa");
//      ArrayList<BoardVO> list = dao.boardList(1, 10);
//      System.out.println(list.size() + "건 출력");
   }

}