package com.sriracha.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sriracha.action.Action;
import com.sriracha.action.ActionForward;
import com.sriracha.model.BoardDAO;
import com.sriracha.model.CommentDAO;
import com.sriracha.model.FullDTO;

public class CommentDetailViewController implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		CommentDAO cdao = new CommentDAO();
		ActionForward forward = new ActionForward();
		
		int board_num = Integer.parseInt(req.getParameter("board_num"));
		int movie_id = Integer.parseInt(req.getParameter("movie_id"));
		
		req.setAttribute("commentList", cdao.getComment(board_num, movie_id));

		forward.setRedirect(false);
		forward.setPath("/view/comment_detail.jsp");
		
		return forward;
	}
	
}
