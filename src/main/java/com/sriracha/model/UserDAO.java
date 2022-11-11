package com.sriracha.model;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.sriracha.mybatis.SqlMapConfig;

public class UserDAO {
	SqlSessionFactory factory = SqlMapConfig.getFactory();
	SqlSession sqlSession;
	
	public UserDAO() {
		sqlSession = factory.openSession(true);
	}

	public String login(String user_id) {
		
		return sqlSession.selectOne("User.login",user_id);
	}
	
	public boolean updateUser(String user_id, String user_name, String user_pw) {
		boolean result = false;
		HashMap<String, String> datas = new HashMap<>();
		datas.put("user_id", user_id);
		datas.put("user_name", user_name);
		datas.put("user_pw", user_pw);

		if(sqlSession.update("User.updateUser", datas) != 0) {
			result = true;
		}
		return result;
	}

	public boolean join(UserDTO udto) {
		boolean result = false;
		
		if ( sqlSession.insert("User.join", udto) != 0 ) {
			result = true;
		}
		return result;
	}
	
	public boolean checkId( String userid ) {
		boolean result = false;
		int cnt = 0;
		System.out.println(userid);
		cnt = sqlSession.selectOne("User.checkId", userid);
		
		if( cnt >= 1 ) {
			result = true;
		}
		
		return result;
	}
	
}
