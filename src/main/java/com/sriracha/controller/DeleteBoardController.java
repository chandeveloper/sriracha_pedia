package com.sriracha.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDate;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;

import com.sriracha.action.Action;
import com.sriracha.action.ActionForward;
import com.sriracha.model.BoardDAO;
import com.sriracha.model.BoardDTO;
import com.sriracha.model.MovieDAO;
import com.sriracha.model.MovieDTO;
import com.sriracha.model.UserDTO;

@WebServlet("/sriracha/deleteBoard.do")
public class DeleteBoardController extends HttpServlet {

		
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
		MovieDAO mdao = new MovieDAO();
		MovieDTO mdto = new MovieDTO();
		
		int board_num = bdao.getLastBoardNumByUserNum(Integer.parseInt(req.getSession().getAttribute("session_usernum").toString()));
		
		bdao.deleteBoard(bdao.getLastBoardNumByUserNum(Integer.parseInt(req.getSession().getAttribute("session_usernum").toString())));
		
		
		mdto = mdao.selectMovieById(Integer.parseInt(req.getParameter("movie_id")));
		double result = ((mdto.getMovie_vote_average()  * mdto.getMovie_vote_count()) - (Double.parseDouble((req.getParameter("star_value")))*2))/(mdto.getMovie_vote_count()-1);
		mdto.setMovie_vote_average(result);
		mdto.setMovie_vote_count(mdto.getMovie_vote_count()-1);
		mdao.updateMovieVote(mdto);
		
		String mva = String.format("%.1f", (mdto.getMovie_vote_average()/2));
		
		JSONObject obj = new JSONObject();
		obj.put("movie_vote_average", mva);
		obj.put("movie_vote_count", mdto.getMovie_vote_count());
		obj.put("board_count", bdao.getBoardCnt(Integer.parseInt(req.getParameter("movie_id"))));
		obj.put("board_num", board_num);
		
		resp.setContentType("application/json");
		resp.setCharacterEncoding("UTF-8");
		
		PrintWriter out = resp.getWriter();
		out.write(obj.toString());
		out.flush();
		
	}
	
	
		

}
