package com.sriracha.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sriracha.action.Action;
import com.sriracha.action.ActionForward;
import com.sriracha.model.MypageDAO;

public class MypageMovieController implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		MypageDAO mdao = new MypageDAO();
		ActionForward forward = new ActionForward();
		
		int user_num = Integer.parseInt(req.getParameter("user_num"));
		
		req.setAttribute("mypageList", mdao.getMypageList(user_num));

		forward.setRedirect(false);
		forward.setPath("/view/mypage.jsp");
		
		return forward;

	}

}
