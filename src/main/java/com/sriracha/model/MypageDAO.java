package com.sriracha.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.sriracha.mybatis.SqlMapConfig;

public class MypageDAO {
	SqlSessionFactory factory = SqlMapConfig.getFactory();
	SqlSession sqlSession;
	
	public MypageDAO() {
		sqlSession = factory.openSession(true);
	}
	
	public List<MypageDTO> getMypageList(int user_num) {
		
		List<MypageDTO> mypageList = sqlSession.selectList("Mypage.getMypageList", user_num);
		
		return mypageList;
		
	}

}
