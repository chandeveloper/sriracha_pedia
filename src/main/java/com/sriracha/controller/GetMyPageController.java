package com.sriracha.controller;

import java.util.ArrayList;
import java.util.List;

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
import com.sriracha.model.WishListDAO;
import com.sriracha.model.WishListDTO;

public class GetMyPageController implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		ActionForward forward = new ActionForward();
		
		UserDTO udto = new UserDTO();
		WishListDAO wdao = new WishListDAO();
		MovieDTO mdto = new MovieDTO();
		MovieDAO mdao = new MovieDAO();
		BoardDAO bdao = new BoardDAO();
		
		HttpSession session = req.getSession();
		
		udto.setUser_id(session.getAttribute("session_id").toString());
		udto.setUser_name(session.getAttribute("session_name").toString());
		udto.setUser_num(Integer.parseInt(session.getAttribute("session_usernum").toString()));

		List<WishListDTO> wishList = wdao.selectWishByUserNum(udto.getUser_num());
		List<MovieDTO> movieList = new ArrayList<>();
		List<BoardDTO> boardList = bdao.getBoardListByUserNum(udto.getUser_num());
		
		for(int i=0; i<wishList.size(); i++) {
			mdto = mdao.selectMovieById(wishList.get(i).getMovie_id());
			movieList.add(mdto);
		}

		req.setAttribute("user", udto);
		req.setAttribute("movieList", movieList);
		req.setAttribute("boardList", boardList);
		
		
		forward.setRedirect(false);
		forward.setPath(req.getContextPath()+"/view/mypage.jsp");
		
		return forward;
	}

}
