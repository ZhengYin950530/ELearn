package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.entity.St;
import com.mapper.StMapper;

@Controller
public class StAjaxController {
	@Autowired
	private StMapper stMapper;
	@RequestMapping("view/selectstudent.do")
	public void getstrCourseInfo(HttpServletRequest request, HttpServletResponse response) throws IOException {
		St yin = new St();
		HttpSession session = request.getSession();
		yin.setSt_name(request.getParameter("stname"));
		yin.setSt_age(request.getParameter("stage"));
		
		St student = stMapper.getSt(yin);
		
		System.out.println(student.getSt_name());
		System.out.println(student.getSt_age());
		
		//request.setAttribute("studentresult", student);
		session.setAttribute("studentresult", student);
		
		PrintWriter out = response.getWriter();;
		
		out.print(student.getSt_name());
	}

}
