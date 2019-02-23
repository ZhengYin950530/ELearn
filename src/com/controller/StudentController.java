package com.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.entity.Student;
import com.entity.User;
import com.mapper.StudentMapper;


@Controller
public class StudentController {
	@Autowired
	private StudentMapper studentMapper;

	@RequestMapping("view/Student.do")
	public String getstrCourseInfo(HttpServletRequest request, HttpServletResponse response) {
		Student yin = new Student();
		yin.setStudent_id(request.getParameter("student_id"));
		
		System.out.println(yin.getStudent_id());

		Student student = studentMapper.getStudent(yin);
		System.out.println(student.getStudent_id());
		
		request.setAttribute("student",student);
		return "student";
		
		
	}

}
