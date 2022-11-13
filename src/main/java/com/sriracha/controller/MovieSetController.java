package com.sriracha.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sriracha.action.Action;
import com.sriracha.action.ActionForward;
import com.sriracha.model.MovieDAO;
import com.sriracha.model.MovieDTO;
import com.sriracha.model.TestDAO;
import com.sriracha.model.TestDTO;
import com.sriracha.util.Util;

public class MovieSetController implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		ActionForward forward = new ActionForward();
		
		// 영화 1페이지 입력
		setMovieInDBperPage(1);
		System.out.println("1페이지 입력 완료");
		setMovieInDBperPage(2);
		System.out.println("2페이지 입력 완료");
		setMovieInDBperPage(3);
		System.out.println("3페이지 입력 완료");
		
		forward.setRedirect(true);
		forward.setPath(req.getContextPath()+"/view/admin/admin.jsp");
		return forward;
	}
	
	// 영화정보 불러와서 db에 넣는걸 따로 메서드로 뺐다
	public void setMovieInDBperPage(int pagenum) {
		MovieDAO mdao = new MovieDAO();
		
		String[] subjects = {"now_playing", "popular", "top_rated", "upcoming"};

		for(int a=0; a<subjects.length; a++) {
			// 영화 리스트 받아온거 담는 리스트
			List<HashMap<String, Object>> movieList = Util.getInstance().getMovieList(subjects[a], pagenum+"");
			
			// 리스트에 담긴 수 만큼 반복문 돌려 dto 생성 -> 값 대입 -> db에 인서트
			for (int i=0; i<movieList.size(); i++) {
				MovieDTO mdto = new MovieDTO();
				mdto.setMovie_id(Integer.parseInt(movieList.get(i).get("movie_id").toString()));
				mdto.setMovie_title(movieList.get(i).get("movie_title").toString());
				mdto.setMovie_overview(movieList.get(i).get("movie_overview").toString());
				mdto.setMovie_popularity(Double.parseDouble(movieList.get(i).get("movie_popularity").toString()));
				mdto.setMovie_vote_average(Double.parseDouble(movieList.get(i).get("movie_vote_average").toString()));
				mdto.setMovie_vote_count(Integer.parseInt(movieList.get(i).get("movie_vote_count").toString()));
				mdto.setMovie_poster_path(movieList.get(i).get("movie_poster_path").toString());
				mdto.setMovie_backdrop_path(movieList.get(i).get("movie_backdrop_path").toString());
				mdto.setMovie_adult(movieList.get(i).get("movie_adult").toString());
				mdto.setMovie_date(movieList.get(i).get("movie_date").toString());
				mdto.setMovie_subject(movieList.get(i).get("movie_subject").toString());
				
				// 영화가 있나 확인하고 없으면 영화정보 입력
				if(mdao.selectMovieById(mdto.getMovie_id())==null) {
					mdao.movieInsert(mdto);
				}
			}
		}
	}

}
