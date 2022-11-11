package com.sriracha.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sriracha.action.Action;
import com.sriracha.action.ActionForward;
import com.sriracha.model.UserDAO;
import com.sriracha.model.UserDTO;

public class JoinController implements Action {

	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		
		ActionForward forward = new ActionForward();
		
		String user_id = req.getParameter("user_id");
		String user_name = req.getParameter("user_name");
		String user_pw = req.getParameter("user_pw");
		
		System.out.println("user_id : " + user_id);
		System.out.println("user_name : " + user_name);
		System.out.println("user_pw : " + user_pw);
		
		UserDAO userDao = new UserDAO();
		UserDTO userDto = new UserDTO();
		
		userDto.setUser_id(user_id);
		userDto.setUser_name(user_name);
		userDto.setUser_pw(user_pw);
		
		if(userDao.join(userDto)) {
			System.out.println("회원가입 성공");
			forward.setRedirect(true);
			forward.setPath("/view/login.jsp");
		} else {
			System.out.println("회원가입 실패");
			forward.setRedirect(true);
			forward.setPath("/view/join.jsp");
		}
		
		return forward;
	}
}
