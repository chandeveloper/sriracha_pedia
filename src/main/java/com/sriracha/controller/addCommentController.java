package com.sriracha.controller;

import java.time.LocalDate;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sriracha.action.Action;
import com.sriracha.action.ActionForward;
import com.sriracha.model.BoardDAO;
import com.sriracha.model.BoardDTO;
import com.sriracha.model.CommentDAO;
import com.sriracha.model.CommentDTO;
import com.sriracha.model.FullDTO;
import com.sriracha.model.UserDTO;

public class addCommentController implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		ActionForward forward = new ActionForward();

		BoardDAO bdao = new BoardDAO();
		CommentDAO cdao = new CommentDAO();
		
		BoardDTO bdto = new BoardDTO();
		UserDTO udto = new UserDTO();
		FullDTO fdto = new FullDTO();

		HttpSession session = req.getSession();
		
		udto.setUser_id(session.getAttribute("session_id").toString());
		udto.setUser_name(session.getAttribute("session_name").toString());
		udto.setUser_pw(session.getAttribute("session_pw").toString());
		udto.setUser_num(Integer.parseInt(session.getAttribute("session_usernum").toString()));
		
		System.out.println("내용 : " + req.getParameter("board_content"));
		System.out.println("user_num : " + udto.getUser_num());
		System.out.println("movie_id : " +  req.getParameter("movie_id"));
		LocalDate now = LocalDate.now();
		
		System.out.println("date : "+now.toString());
		
		bdto.setBoard_content(req.getParameter("board_content"));
		bdto.setUser_num(udto.getUser_num());
		bdto.setBoard_date(now.toString());
		bdto.setMovie_id(Integer.parseInt(req.getParameter("movie_id")));
		
		
		
		req.setAttribute("board", bdto);
		req.setAttribute("user", udto);
		req.setAttribute("boardList", bdao.getBoardList(Integer.parseInt(req.getParameter("movie_id"))));
		req.setAttribute("comment_count", bdao.getCommentCnt(bdto.getBoard_num()));
		
		if (bdao.addComment(bdto)) {
			forward.setRedirect(false);
			forward.setPath(req.getContextPath() + "/sriracha/get_contents_page.do");
		}
		return forward;
	}

}
