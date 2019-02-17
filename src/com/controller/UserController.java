package com.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.ObjectUtils.Null;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.entity.User;
import com.mapper.UserMapper;


@Controller
public class UserController {
	@Autowired
	private UserMapper userMapper;


	@RequestMapping("view/loginCheckServlet.do")
	public String getstrCourseInfo(HttpServletRequest request, HttpServletResponse response) {
		User yin = new User();
		yin.setUser_id(request.getParameter("name"));
		yin.setPassword(request.getParameter("pwd"));
		User user = userMapper.getUser(yin);
		
		if(user != null &&!"".equals(user)){
			request.setAttribute("u", user);
			return "LoginSuccess";
		} else{
			return "error";
		}
		
		
	}

}
