package com.sriracha.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sriracha.action.ActionForward;

@WebServlet("*.mo")
public class AdminFrontController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	
	protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String requestURI = req.getRequestURI();
		ActionForward forward = null;
		
		switch(requestURI) {
			case "/admin/movie_set.mo" :
				forward = new MovieSetController().execute(req, resp);
				break;
				
		}
		
		if(forward!=null) {
			if(forward.isRedirect()) {
				resp.sendRedirect(forward.getPath());
			}else {
				req.getRequestDispatcher(forward.getPath()).forward(req, resp);
			}
		}
		
	}
}
