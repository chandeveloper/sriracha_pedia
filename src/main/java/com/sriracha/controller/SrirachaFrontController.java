package com.sriracha.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sriracha.action.ActionForward;

@WebServlet("*.do")
public class SrirachaFrontController extends HttpServlet{
	
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
		HttpSession session = req.getSession();
		
		switch(requestURI) {
			case "/sriracha/get_main_page.do" :
				forward = new GetMainPageController().execute(req, resp);
				break;
			case "/sriracha/get_contents_page.do" :
				forward = new GetContentsPageController().execute(req, resp);
				break;
	
			case "/sriracha/logout.do" :	
				forward = new LogoutController().execute(req, resp);
				break;
			case "/sriracha/modiif.do" :
				
				forward = new modiifController().execute(req, resp);
				break;
						
			case "/sriracha/login.do" :
				
				forward = new LoginController().execute(req, resp);		
				break;

			case "/sriracha/join.do" : 
				forward = new JoinController().execute(req, resp);
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
