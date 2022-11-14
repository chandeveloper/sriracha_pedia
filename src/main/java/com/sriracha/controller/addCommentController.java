package com.sriracha.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sriracha.action.Action;
import com.sriracha.action.ActionForward;
import com.sriracha.model.BoardDAO;
import com.sriracha.model.BoardDTO;
import com.sriracha.model.FullDTO;

public class addCommentController implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		ActionForward forward = new ActionForward();
		
		BoardDAO bdao = new BoardDAO();
		BoardDTO bdto = new BoardDTO();		
		HttpSession session = req.getSession();
		//board_num : board_num_seq.nextval, board_date(sysdate), board_like(default x), board_presence(디폴트 x)
		//board_content, user_num, movie_id(파라미터 값) 
		//무비 아이디 , 유저 num, 보드 코멘트
		bdto.setBoard_content(req.getParameter("board_content"));
		bdto.setUser_num((int) req.getAttribute("user_num"));
//		bdto.setUser_num(Integer.parseInt(req.getParameter("user_num")));
		bdto.setMovie_id(Integer.parseInt(req.getParameter("movie_id")));
		
		if(bdao.addComment(bdto)) {
			forward.setRedirect(false);
			forward.setPath(req.getContextPath()+ "view/contents.jsp");
		}
		return forward;
	}

}
