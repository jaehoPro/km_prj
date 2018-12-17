package config.mybatis;

import java.io.Reader;
import java.util.ArrayList;

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
      vo.setEmail("admin@kareamate");
      vo.setPassword("444");
//      vo.setUserName("오알엠");
   
      
      UsersVO res = conn.selectOne("userNameSpace.login", vo);
      System.out.println(res.getF_name());
      
      UsersVO svo = new UsersVO();
      svo.setEmail("abc");
      svo.setPassword("111");
      int ires= conn.insert("userNameSpace.member_register", svo);
      System.out.println(ires+"건 입력");
      
      UsersVO uvo = new UsersVO();
      uvo.setEmail("hong");
      uvo.setPassword("555");
      int ures = conn.update("userNameSpace.member_update", uvo);
      System.out.println(ures+ "건 수정");
      
      String stringID="hong";
      int dres = conn.update("userNameSpace.member_delete", stringID);
      System.out.println(dres + "건 탈퇴");
      
      String idname = "sohee123";
      UsersVO detailVO = conn.selectOne("userNameSpace.member_detail",idname);
      System.out.println(detailVO.getF_name());
       
      
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