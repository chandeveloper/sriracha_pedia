package com.sriracha.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sriracha.action.Action;
import com.sriracha.action.ActionForward;
import com.sriracha.model.MovieDAO;
import com.sriracha.model.UserDAO;
import com.sriracha.model.UserDTO;

public class LoginController implements Action{
@Override
public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
	ActionForward forward = new ActionForward();
	UserDAO udao = new UserDAO();
	
	String user_pw = req.getParameter("user_pw");
	String user_id = req.getParameter("user_id");
	
	String real_pw = udao.login(user_id);
	
	req.setAttribute("user_pw", user_pw);
	req.setAttribute("real_pw", real_pw);
	
	HttpSession session =req.getSession();
	
	
	if(user_pw.equals(real_pw)) {

		session.setAttribute("session_id", user_id);
		session.setAttribute("session_pw", real_pw);
		
		forward.setRedirect(false);
		forward.setPath("/sriracha/get_main_page.do" );
		
		
	}
	else {
		
		 forward.setRedirect(false); forward.setPath("/view/login.jsp" );
		 
	}
	return forward;
}
}
