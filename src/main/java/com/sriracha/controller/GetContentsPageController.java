package com.sriracha.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sriracha.action.Action;
import com.sriracha.action.ActionForward;
import com.sriracha.model.BoardDAO;
import com.sriracha.model.MovieDAO;
import com.sriracha.model.MovieDTO;
import com.sriracha.model.WishListDAO;
import com.sriracha.model.WishListDTO;
import com.sriracha.util.Util;

public class GetContentsPageController implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		ActionForward forward = new ActionForward();
		MovieDAO mdao = new MovieDAO();
		MovieDTO mdto = new MovieDTO();
		BoardDAO bdao = new BoardDAO();
		WishListDTO wdto = new WishListDTO();
		WishListDAO wdao = new WishListDAO();
		
		mdto = mdao.selectMovieById(Integer.parseInt(req.getParameter("movie_id")));
		
		wdto = wdao.selectWishByUserNumMovieId(Integer.parseInt(req.getSession().getAttribute("session_usernum").toString()), Integer.parseInt(req.getParameter("movie_id")));
		
		req.setAttribute("movie", mdto);
		req.setAttribute("creditList", Util.getInstance().getCreditList(mdto.getMovie_id()));
		req.setAttribute("key", Util.getInstance().getVideoKey(mdto.getMovie_id()));
		
		req.setAttribute("boardList", bdao.getBoardList(Integer.parseInt(req.getParameter("movie_id"))));
		req.setAttribute("boardCnt", bdao.getBoardCnt(Integer.parseInt(req.getParameter("movie_id"))));
		
		req.setAttribute("wish", wdto);
		
		forward.setRedirect(false);
		forward.setPath(req.getContextPath()+"/view/contents.jsp");
		
		return forward;
	}

}
