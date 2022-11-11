package com.sriracha.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.sriracha.mybatis.SqlMapConfig;

public class BoardDAO {
	SqlSessionFactory factory = SqlMapConfig.getFactory();
	SqlSession sqlSession;
	
	public BoardDAO() {
		sqlSession = factory.openSession(true);
	}
	
	public List<FullDTO> getBoardList(int movie_id) {
		
		List<FullDTO> boardList = sqlSession.selectList("Board.getBoardList", movie_id);
		
		return boardList;
		
	}

}
