package com.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.entity.St;
import com.mapper.StMapper;


@Controller
public class StController {
	@Autowired
	private StMapper stMapper;
	@RequestMapping("view/selectst.do")
	public String getstrCourseInfo(HttpServletRequest request, HttpServletResponse response) {
		St yin = new St();
		
		yin.setSt_name(request.getParameter("stname"));

		System.out.println(yin.getSt_name());

		St student = stMapper.getSt(yin);
		
		
		System.out.println(student.getSt_name());
		//System.out.println(student.getSt_age());

		
		request.setAttribute("studentresult",student);
		return "studentresult";
}
}
