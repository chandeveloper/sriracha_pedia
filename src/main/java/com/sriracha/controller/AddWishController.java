package com.sriracha.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sriracha.model.WishListDAO;
import com.sriracha.model.WishListDTO;

@WebServlet("/sriracha/addWish.do")
public class AddWishController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	
	protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		WishListDTO wdto = new WishListDTO();
		WishListDAO wdao = new WishListDAO();
		
		wdto.setUser_num(Integer.parseInt(req.getSession().getAttribute("session_usernum").toString()));
		wdto.setMovie_id(Integer.parseInt(req.getParameter("movie_id")));
		
		if(!wdao.insertWish(wdto)) {
			// 이 if문이 통과되면
			// 해당 user로 검색한 같은 movie값이 있어서 insert 안했다는 뜻
			// 같은 영화가 있다고 유저에게 alert창으로 알려줘야함
			
//			req.setAttribute("msg", "찜한 목록에 같은 영화가 있습니다.");
//			req.setAttribute("url", req.getContextPath()+"/sriracha/get_contents_page.do?movie_id="+(req.getParameter("movie_id")));
			
		}else {
			// 정상적으로 insert 됐다는 뜻
			
		}
		
	}
}	
