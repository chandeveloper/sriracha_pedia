package com.sriracha.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sriracha.action.Action;
import com.sriracha.action.ActionForward;
import com.sriracha.model.BoardDAO;
import com.sriracha.model.MovieDAO;

public class CommentListController implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		BoardDAO bdao = new BoardDAO();
		ActionForward forward = new ActionForward();
		
		//
//		int board_num = Integer.parseInt(req.getParameter("board_num"));
//		System.out.println(board_num);
		
		int movie_id = Integer.parseInt(req.getParameter("movie_id"));
		
		req.setAttribute("boardList", bdao.getBoardList(movie_id));
//		req.setAttribute("getCommentCnt", bdao.getCommentCnt(board_num));
		
		forward.setRedirect(false);
		forward.setPath(req.getContextPath()+"/view/commentPage.jsp");
		
		return forward;
		
	}

}
