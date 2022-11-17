package com.sriracha.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sriracha.action.Action;
import com.sriracha.action.ActionForward;
import com.sriracha.model.BoardDAO;
import com.sriracha.model.CommentDTO;

//보드 수정이었는데 코멘트 수정으로 바꾸기
public class GetModifyCommentController implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		ActionForward forward = new ActionForward();
		BoardDAO bdao = new BoardDAO();
		CommentDTO cdto = new CommentDTO();
		
		int board_num = Integer.parseInt(req.getParameter("board_num"));
		String comment_content = req.getParameter("comment_content");
		
		cdto.setBoard_num(board_num);
		cdto.setComment_content(comment_content);
		
		req.setAttribute("modifyComment", bdao.getModifyComment(cdto)); 
		
		forward.setRedirect(false);
		forward.setPath(req.getContextPath() + "/view/comment_detail.jsp");
		
		return null;
	}

}
