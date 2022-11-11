package com.sriracha.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sriracha.action.Action;
import com.sriracha.action.ActionForward;
import com.sriracha.model.MovieDAO;
import com.sriracha.model.MovieDTO;
import com.sriracha.util.Util;

public class GetContentsPageController implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		ActionForward forward = new ActionForward();
		MovieDAO mdao = new MovieDAO();
		MovieDTO mdto = new MovieDTO();
		
		mdto = mdao.selectMovieById(Integer.parseInt(req.getParameter("movie_id")));
		req.setAttribute("movie", mdto);
		req.setAttribute("creditList", Util.getInstance().getCreditList(mdto.getMovie_id()));
		
		forward.setRedirect(false);
		forward.setPath(req.getContextPath()+"/view/contents.jsp");
		
		return forward;
	}

}
