package com.sriracha.controller;

import java.io.IOException;
import java.time.LocalDate;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sriracha.action.Action;
import com.sriracha.action.ActionForward;
import com.sriracha.model.BoardDAO;
import com.sriracha.model.BoardDTO;
import com.sriracha.model.MovieDAO;
import com.sriracha.model.MovieDTO;
import com.sriracha.model.UserDTO;

@WebServlet("/sriracha/addBoard.do")
public class AddBoardController extends HttpServlet {

		
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	
	protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		BoardDAO bdao = new BoardDAO();
		
		BoardDTO bdto = new BoardDTO();
		UserDTO udto = new UserDTO();

		HttpSession session = req.getSession();
		
		udto.setUser_id(session.getAttribute("session_id").toString());
		udto.setUser_name(session.getAttribute("session_name").toString());
		udto.setUser_pw(session.getAttribute("session_pw").toString());
		udto.setUser_num(Integer.parseInt(session.getAttribute("session_usernum").toString()));
		LocalDate now = LocalDate.now();
		
		bdto.setBoard_content(req.getParameter("board_content"));
		bdto.setUser_num(udto.getUser_num());
		bdto.setBoard_date(now.toString());
		bdto.setMovie_id(Integer.parseInt(req.getParameter("movie_id")));
		bdto.setUser_id(udto.getUser_id());
		bdto.setStar(Double.parseDouble(req.getParameter("star_value")));
		
		if (bdao.addBoard(bdto)) {
			
			// 댓글이 입력되면 영화 정보 수정 ( 평점 , 참여자 수 )
			MovieDAO mdao = new MovieDAO();
			MovieDTO mdto = new MovieDTO();
			
			mdto = mdao.selectMovieById(Integer.parseInt(req.getParameter("movie_id")));
			int prev_vote_count = mdto.getMovie_vote_count();
			double prev_vote_average = mdto.getMovie_vote_average(); 
			mdto.setMovie_vote_count(prev_vote_count+1);
			
			double result = ((prev_vote_count * prev_vote_average)+(Double.parseDouble(req.getParameter("star_value"))*2))/(prev_vote_count+1);
			mdto.setMovie_vote_average(result);
			
			mdao.updateMovieVote(mdto);
			
		}
		
	}
	
	
		

}
