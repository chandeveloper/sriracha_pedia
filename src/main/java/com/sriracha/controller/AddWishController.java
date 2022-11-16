package com.sriracha.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sriracha.action.Action;
import com.sriracha.action.ActionForward;
import com.sriracha.model.WishListDAO;
import com.sriracha.model.WishListDTO;

public class AddWishController implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		ActionForward forward = new ActionForward();
		
		WishListDTO wdto = new WishListDTO();
		WishListDAO wdao = new WishListDAO();
		
		wdto.setUser_num(Integer.parseInt(req.getSession().getAttribute("session_usernum").toString()));
		wdto.setMovie_id(Integer.parseInt(req.getParameter("movie_id")));
		
		if(!wdao.insertWish(wdto)) {
			// 이 if문이 통과되면
			// 해당 user로 검색한 같은 movie값이 있어서 insert 안했다는 뜻
			// 같은 영화가 있다고 유저에게 alert창으로 알려줘야함
			
			req.setAttribute("msg", "찜한 목록에 같은 영화가 있습니다.");
			req.setAttribute("url", req.getContextPath()+"/sriracha/get_contents_page.do?movie_id="+(req.getParameter("movie_id")));
			
			forward.setRedirect(false);
			forward.setPath("/view/common/alert.jsp");
			
		}else {
			// 정상적으로 insert 됐다는 뜻
			
			forward.setRedirect(true);
			forward.setPath(req.getContextPath()+"/sriracha/get_contents_page.do?movie_id="+(req.getParameter("movie_id")));
		}
		
		return forward;
	}
	
}
