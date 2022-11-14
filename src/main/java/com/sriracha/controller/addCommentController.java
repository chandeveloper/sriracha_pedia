package com.sriracha.controller;

import java.time.LocalDate;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sriracha.action.Action;
import com.sriracha.action.ActionForward;
import com.sriracha.model.BoardDAO;
import com.sriracha.model.BoardDTO;
import com.sriracha.model.FullDTO;
import com.sriracha.model.UserDTO;

public class addCommentController implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		ActionForward forward = new ActionForward();

		BoardDAO bdao = new BoardDAO();
		BoardDTO bdto = new BoardDTO();

		HttpSession session = req.getSession();
		int user_num = (int) session.getAttribute("session_usernum");
		System.out.println("내용 : " + req.getParameter("board_content"));
		System.out.println("user_num : " + user_num);
		System.out.println("movie_id : " +  req.getParameter("movie_id"));
		LocalDate now = LocalDate.now();
		
		System.out.println("date : "+now.toString());
		
		bdto.setBoard_content(req.getParameter("board_content"));
		bdto.setUser_num(user_num);
		bdto.setBoard_date(now.toString());
		bdto.setMovie_id(Integer.parseInt(req.getParameter("movie_id")));
		
		if (bdao.addComment(bdto)) {
			forward.setRedirect(false);
			forward.setPath(req.getContextPath() + "/sriracha/get_contents_page.do");
		}
		return forward;
	}

}
