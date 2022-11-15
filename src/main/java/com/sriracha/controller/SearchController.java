package com.sriracha.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sriracha.action.Action;
import com.sriracha.action.ActionForward;
import com.sriracha.model.MovieDAO;

public class SearchController implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		ActionForward forward = new ActionForward();
		MovieDAO mdao = new MovieDAO();
		
		String search_content = req.getParameter("search_content");
		
		req.setAttribute("search_content", search_content);
		req.setAttribute("searchedList", mdao.getMoviesByTitle(search_content));
		
		
		forward.setRedirect(false);
		forward.setPath(req.getContextPath()+"/view/search.jsp");
		
		return forward;
	}
	
}
