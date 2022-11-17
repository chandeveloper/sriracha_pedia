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

@WebServlet("/sriracha/updateBoard.do")
public class UpdateBoardController extends HttpServlet {

		
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
		int board_num = bdao.getLastBoardNumByUserNum(Integer.parseInt(req.getSession().getAttribute("session_usernum").toString()));
		BoardDTO bdto = bdao.getBoardByBoardNum(board_num);
		
		bdto.setBoard_content(req.getParameter("board_content"));
		bdao.updateBoardContent(board_num, req.getParameter("board_content"));
		
		JSONObject obj = new JSONObject();
		obj.put("board_content", bdto.getBoard_content());
		obj.put("board_num", board_num);
		
		resp.setContentType("application/json");
		resp.setCharacterEncoding("UTF-8");
		
		PrintWriter out = resp.getWriter();
		out.write(obj.toString());
		out.flush();
		
	}

}
