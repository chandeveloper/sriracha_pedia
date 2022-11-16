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
	
	public List<BoardDTO> getBoardList(int movie_id) {
		
		List<BoardDTO> boardList = sqlSession.selectList("Board.getBoardList", movie_id);
		
		return boardList;
		
	}

	public boolean addComment(BoardDTO bdto) {
		boolean result = false;
		
		if(sqlSession.insert("Board.addComment", bdto)== 1) {
			result = true;
		}
		
		return result;
	}
	
	public int getCommentCnt(int board_num) {
		return sqlSession.selectOne("Board.getCommentCnt", board_num);
	}
	
	public String getUserNameFromBoard(int board_num) {
		return sqlSession.selectOne("Board.getUserNameFromBoard", board_num);
	}
	
	public int getBoardCnt(int movie_id) {
		return sqlSession.selectOne("Board.getBoardCnt", movie_id);
	}
	
	public List<BoardDTO> getBoardListByUserNum(int user_num){
		return sqlSession.selectList("Board.getBoardListByUserNum", user_num);
	}

}
