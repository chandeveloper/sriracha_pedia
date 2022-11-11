package com.sriracha.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sriracha.action.Action;
import com.sriracha.action.ActionForward;
import com.sriracha.model.MovieDAO;
import com.sriracha.model.MovieDTO;

public class GetMainPageController implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		ActionForward forward = new ActionForward();
		MovieDAO mdao = new MovieDAO();
		
		// 모든 영화 리스트
		List<MovieDTO> movieList = mdao.selectAllMovies();
		List<MovieDTO> nowPlayingMovieList = mdao.selectAllNowPlayingMovies();
		List<MovieDTO> popularMovieList = mdao.selectAllPopularMovies();
		List<MovieDTO> topRatedMovieList = mdao.selectAllTopRatedMovies();
		List<MovieDTO> upComingMovieList = mdao.selectAllUpComingMovies();
		
		req.setAttribute("movieList", movieList);
		req.setAttribute("nowPlayingMovieList", nowPlayingMovieList);
		req.setAttribute("popularMovieList", popularMovieList);
		req.setAttribute("topRatedMovieList", topRatedMovieList);
		req.setAttribute("upComingMovieList", upComingMovieList);
		
		forward.setRedirect(false);
		forward.setPath(req.getContextPath()+"/view/main.jsp");
		return forward;
	}
	
	
}
