package com.sriracha.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sriracha.action.Action;
import com.sriracha.action.ActionForward;
import com.sriracha.model.WishListDAO;
import com.sriracha.model.WishListDTO;

public class DeleteWishController implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		ActionForward forward = new ActionForward();
		
		WishListDTO wdto = new WishListDTO();
		WishListDAO wdao = new WishListDAO();
		
		wdto.setUser_num(Integer.parseInt(req.getSession().getAttribute("session_usernum").toString()));
		wdto.setMovie_id(Integer.parseInt(req.getParameter("movie_id")));
		
		wdao.deleteWish(wdto);
		
		forward.setRedirect(true);
		forward.setPath(req.getContextPath()+"/sriracha/get_contents_page.do?movie_id="+(req.getParameter("movie_id")));
		
		return forward;
	}
	
}
