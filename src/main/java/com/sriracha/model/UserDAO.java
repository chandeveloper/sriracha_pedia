package com.sriracha.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.sriracha.mybatis.SqlMapConfig;

public class UserDAO {

	SqlSessionFactory factory = SqlMapConfig.getFactory();
	SqlSession sqlsession;
	public UserDAO() {
	      sqlsession = factory.openSession(true);
	      // true : auto commit
	   }
	
	public boolean join(UserDTO udto) {
		boolean result = false;
		
		if ( sqlsession.insert("User.join", udto) != 0 ) {
			result = true;
		}
		return result;
	}
	
	public boolean checkId( String userid ) {
		boolean result = false;
		int cnt = 0;
		System.out.println(userid);
		cnt = sqlsession.selectOne("User.checkId", userid);
		
		if( cnt >= 1 ) {
			result = true;
		}
		
		return result;
	}
	
}
