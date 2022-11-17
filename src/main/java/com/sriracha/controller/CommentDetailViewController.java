package com.sriracha.controller;

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
import com.sriracha.model.MovieDAO;
import com.sriracha.model.MovieDTO;
import com.sriracha.model.UserDTO;

public class CommentDetailViewController implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		ActionForward forward = new ActionForward();
		HttpSession session = req.getSession();
//		System.out.println(Integer.parseInt(session.getAttribute("session_usernum").toString()));
		
		
		
		
		BoardDAO bdao = new BoardDAO();
		CommentDAO cdao = new CommentDAO();
		MovieDAO mdao = new MovieDAO();
		MovieDTO mdto = new MovieDTO();
		mdto = mdao.selectMovieById(Integer.parseInt(req.getParameter("movie_id")));
		
		//---------------------------------------------------------
		 int user_num = Integer.parseInt(req.getParameter("user_num"));
//		 System.out.println(user_num);
//		    HttpSession session =req.getSession();
//	      session.setAttribute("board_usernum", user_num);

	      
	      boolean is_same = false;
	      int sess_user_num = (Integer)session.getAttribute("session_usernum"); 
	      
	      if(user_num == sess_user_num) {
	         is_same = true;
	      }
//	      System.out.println(is_same);
	      //-------------------------------------------------------

		
		
		//board_num으로 쿼리문 두 개 comment_detail.jsp의 원래 댓글의 movie테이블, board테이블
		int board_num = Integer.parseInt(req.getParameter("board_num"));
//		int user_num = Integer.parseInt(req.getParameter("user_num"));
		
		//코멘트디테일 페이지의 원래 댓글 board 관련 부분
//		BoardDTO bdto = new BoardDTO();
//		bdto.setBoard_num(board_num);
//		bdto.setUser_num(user_num);
		//commentList
		req.setAttribute("BoardComment", bdao.getBoardComment(board_num));
		req.setAttribute("BoardComment_Movie", bdao.getBoardComment_Movie(board_num));
		req.setAttribute("getCommentCnt", bdao.getCommentCnt(board_num));
		req.setAttribute("movie", mdto);
		
		req.setAttribute("same_user", is_same);
//		System.out.println("bdto.getBoard_nCum() : " + bdto.getBoard_num());
//		System.out.println("bdto.getUser_num() : " + bdto.getUser_num());
		
		
		
//		cdto.setUser_num(user_num);
		
		//코멘트디테일 페이지의 대댓글 부분
//		CommentDTO cdto = new CommentDTO();
//		UserDTO udto = new UserDTO();
//		udto.setUser_num(Integer.parseInt(session.getAttribute("session_usernum").toString()));
//		cdto.setUser_num(udto.getUser_num());
//		cdto.setBoard_num(board_num);
//		System.out.println("cdto.getUser_num() : " +  cdto.getUser_num());
//		System.out.println("cdto.getBoard_num() : " + cdto.getBoard_num());
		
		
		//대댓글 select
		req.setAttribute("CommentList", cdao.getCommentList(board_num));
		

		forward.setRedirect(false);
		forward.setPath(req.getContextPath()+"/view/comment_detail.jsp");
		
		return forward;
	}
	
}
