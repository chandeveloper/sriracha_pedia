package com.sriracha.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sriracha.action.Action;
import com.sriracha.action.ActionForward;
import com.sriracha.model.UserDAO;

public class modiifController implements Action{
@Override
public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
	ActionForward forward = new ActionForward();
	UserDAO udao = new UserDAO();
	
	HttpSession session = req.getSession();
	String user_id = (String) session.getAttribute("session_id");
	String real_pw = (String)session.getAttribute("session_pw");
	
	String user_name = req.getParameter("user_name");
	String user_pw = req.getParameter("user_pw");
	
	
	if(udao.updateUser(user_id, user_name, user_pw)) {
		forward.setRedirect(true);
		forward.setPath("/view/main.jsp");
		
	}
	
	
	return forward;
}
}
