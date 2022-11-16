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

	public boolean addBoard(BoardDTO bdto) {
		boolean result = false;
		
		if(sqlSession.insert("Board.addBoard", bdto)== 1) {
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
	
		public List<BoardDTO> getBoardComment(BoardDTO bdto) {
			List<BoardDTO> boardComment = sqlSession.selectList("Board.getBoardComment", bdto);
			
			return boardComment;
		}

		public List<MovieDTO> getBoardComment_Movie(int board_num) {
			List<MovieDTO> boardMovie = sqlSession.selectList("Board.getBoardComment_Movie", board_num);
			return boardMovie;
		}
	public List<BoardDTO> getBoardListByUserNum(int user_num){
		return sqlSession.selectList("Board.getBoardListByUserNum", user_num);
	}

}
