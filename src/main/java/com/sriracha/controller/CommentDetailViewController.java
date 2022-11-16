package com.sriracha.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sriracha.action.Action;
import com.sriracha.action.ActionForward;
import com.sriracha.model.BoardDAO;
import com.sriracha.model.BoardDTO;
import com.sriracha.model.CommentDAO;
import com.sriracha.model.FullDTO;

public class CommentDetailViewController implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		BoardDAO bdao = new BoardDAO();
		CommentDAO cdao = new CommentDAO();
		ActionForward forward = new ActionForward();
		
		//board_num으로 쿼리문 두 개 comment_detail.jsp의 원래 댓글의 movie테이블, board테이블
		int board_num = Integer.parseInt(req.getParameter("board_num"));
		int user_num = Integer.parseInt(req.getParameter("user_num"));
		
		//코멘트디테일 페이지의 원래 댓글 board 관련 부분
		BoardDTO bdto = new BoardDTO();
		bdto.setBoard_num(board_num);
		bdto.setUser_num(user_num);
		
		//코멘트디테일 페이지의 대댓글 부분
		
		
		//commentList
		req.setAttribute("BoardComment", bdao.getBoardComment(bdto));
		req.setAttribute("BoardComment_Movie", bdao.getBoardComment_Movie(board_num));
		req.setAttribute("getCommentCnt", bdao.getCommentCnt(board_num));
		
		//대댓글 select
		req.setAttribute("CommentList", cdao.getCommentList(bdto));
		

		forward.setRedirect(false);
		forward.setPath(req.getContextPath()+"/view/comment_detail.jsp");
		
		return forward;
	}
	
}
