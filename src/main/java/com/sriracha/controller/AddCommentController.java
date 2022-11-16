package com.sriracha.controller;

import java.time.LocalDate;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sriracha.action.Action;
import com.sriracha.action.ActionForward;
import com.sriracha.model.BoardCommentDTO;
import com.sriracha.model.BoardDAO;
import com.sriracha.model.BoardDTO;
import com.sriracha.model.CommentDAO;
import com.sriracha.model.CommentDTO;
import com.sriracha.model.UserDTO;

public class AddCommentController implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		ActionForward forward = new ActionForward();

		CommentDAO cdao = new CommentDAO();
		CommentDTO cdto = new CommentDTO();
		UserDTO udto = new UserDTO();
		HttpSession session = req.getSession();

		udto.setUser_id(session.getAttribute("session_id").toString());
		udto.setUser_name(session.getAttribute("session_name").toString());
		udto.setUser_pw(session.getAttribute("session_pw").toString());
		udto.setUser_num(Integer.parseInt(session.getAttribute("session_usernum").toString()));
		LocalDate now = LocalDate.now();
		
		cdto.setComment_content(req.getParameter("comment_content"));
		cdto.setComment_date(now.toString());
		cdto.setUser_num(udto.getUser_num());
		cdto.setBoard_num(Integer.parseInt(req.getParameter("board_num")));
		
		
		if (cdao.addComment(cdto)) {
			forward.setRedirect(true);
			forward.setPath(req.getContextPath() + "/sriracha/commentDetailView.do?board_num="+(Integer.parseInt(req.getParameter("board_num"))) + "&user_num=" + (Integer.parseInt(req.getParameter("user_num"))));
		}
		return forward;
	}

}
