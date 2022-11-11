package com.sriracha.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sriracha.action.Action;
import com.sriracha.action.ActionForward;

public class LogoutController implements Action{
@Override
public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
	ActionForward forward = new ActionForward();
	
	HttpSession session =req.getSession();
	session.removeAttribute("session_id");
	session.removeAttribute("session_pw");
	session.invalidate();
	
	forward.setRedirect(false); 
	forward.setPath("/view/login.jsp" );
	
	
	
	return forward;
}
}
