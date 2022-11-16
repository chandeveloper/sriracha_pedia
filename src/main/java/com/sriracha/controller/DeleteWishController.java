package com.sriracha.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sriracha.model.WishListDAO;
import com.sriracha.model.WishListDTO;

@WebServlet("/sriracha/deleteWish.do")
public class DeleteWishController extends HttpServlet{

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


		wdao.deleteWish(wdto);
		
	}
	
	
}
