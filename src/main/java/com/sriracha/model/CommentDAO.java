package com.sriracha.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.sriracha.mybatis.SqlMapConfig;

public class CommentDAO {
	SqlSessionFactory factory = SqlMapConfig.getFactory();
	SqlSession sqlsession;
	
	public CommentDAO() {
		sqlsession = factory.openSession(true);
	}

	public boolean addComment(CommentDTO cdto) {
		boolean result = false;
		
		if(sqlsession.insert("Comment.addComment", cdto) == 1) {
			result = true;
		}
		return result;
	}

	
	
	

}
