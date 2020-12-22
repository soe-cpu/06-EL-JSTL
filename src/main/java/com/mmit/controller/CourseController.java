package com.mmit.controller;

import java.io.IOException;
import java.time.LocalDate;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mmit.entity.Course;
import java.util.List;
@WebServlet({"/addcourse"})
public class CourseController extends HttpServlet{

	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setAttribute("title", "addcourse");
		getServletContext().getRequestDispatcher("/course-add.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// get parameter data
		String name = req.getParameter("coursename");
		String price = req.getParameter("price");
		String level = req.getParameter("level");
		String duration = req.getParameter("duration");
		String startdate = req.getParameter("startdate");
		//create obj
		Course c=new Course();
		c.setDuration(Integer.parseInt(duration));
		c.setLevel(level);
		c.setName(name);
		c.setPrice(Integer.parseInt(price));
		c.setStartDate(LocalDate.parse(startdate));
		
		//get session object
		HttpSession session=req.getSession(true);
		List<Course> list=(ArrayList<Course>)session.getAttribute("courseList");
		if(list==null)
			list = new ArrayList<Course>();
		//add new course obj to list
		list.add(c);
		//add list obj to session
		session.setAttribute("courseList", list);
		//invoke other web page
		resp.sendRedirect(req.getContextPath());
	}
}
