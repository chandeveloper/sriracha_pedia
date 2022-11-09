package com.sriracha.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.sriracha.mybatis.SqlMapConfig;

public class MovieDAO {
	SqlSessionFactory factory = SqlMapConfig.getFactory();
	SqlSession sqlSession;
	
	public MovieDAO() {
		sqlSession = factory.openSession(true);
	}

	// 영화 id로 영화 검색
	public MovieDTO selectMovieById(int movie_id) {
		return sqlSession.selectOne("Movie.selectMovieById", movie_id);
	}
	
	public boolean movieInsert(MovieDTO mdto) {
		boolean result = false;
		if(sqlSession.insert("Movie.movieInsert", mdto)>0) {
			result = true;
		}
		
		return result;
	}

	public List<MovieDTO> selectAllMovies() {
		List<MovieDTO> movieList = sqlSession.selectList("Movie.selectAllMovies");
		return movieList;
	}
	
	
	
}
