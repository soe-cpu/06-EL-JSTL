package com.mmit.controller;

import java.io.File;
import java.io.IOException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.mmit.entity.Student;
@WebServlet({"/addstudent"})
@MultipartConfig
public class StudentController extends HttpServlet {

	private static final long serialVersionUID = 1L;
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setAttribute("title", "addstudent");
		getServletContext().getRequestDispatcher("/student-add.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// get parameter data
				String name = req.getParameter("name");
				String email = req.getParameter("email");
				String age = req.getParameter("age");
				String year = req.getParameter("year");
				String address = req.getParameter("address");
				String dateOfBirth = req.getParameter("dateOfBirth");
				Part imgPart=req.getPart("photo");// file data
				
				String imgFileName=imgPart.getSubmittedFileName();// user.jpg
				//System.out.println("imgFileName: "+imgFileName);
				String currentName=imgFileName.substring(0,imgFileName.lastIndexOf("."));//user
				//System.out.println("currentName: "+currentName);
				String newName=""+System.currentTimeMillis();//user123456787654
				//System.out.println("newName: "+newName);
				imgFileName=imgFileName.replace(currentName,newName);// user.jpg=>user123456787654.jpg
				//create obj
				Student c= new Student();
				c.setName(name);
				c.setEmail(email);
				c.setYear(year);
				c.setAge(Integer.parseInt(age));
				c.setAddress(address);
				c.setDateOfBirth(LocalDate.parse(dateOfBirth));
				c.setProfile(imgFileName);
				
				//get session object
				HttpSession session=req.getSession(true);
				List<Student> list=(ArrayList<Student>)session.getAttribute("studentlist");
				if(list==null)
					list = new ArrayList<Student>();
				//add new course obj to list
				list.add(c);
				//add list obj to session
				session.setAttribute("studentlist", list);
				String rootPath=getServletContext().getRealPath("");
				String dirPath=rootPath+File.separator+"imgUploads";
				File rootDir=new File(dirPath);
				if(!rootDir.exists())// check already exist imgUploads folder
					rootDir.mkdirs();
				imgPart.write(rootDir+File.separator+imgFileName);
				//invoke other web page
				resp.sendRedirect("student.jsp");
	}
}
