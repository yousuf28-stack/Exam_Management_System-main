package com.exam.controller;

import java.io.InputStream;
import java.time.LocalDate;

import java.util.*;

import org.apache.tomcat.util.http.fileupload.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.http.codec.multipart.Part;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.exam.model.Exam;
import com.exam.model.Teacher;
import com.exam.model.User;
import com.exam.repo.ExamBo;
import com.exam.repo.UserBo;
import com.exam.service.ExamService;
import com.fasterxml.jackson.annotation.JsonCreator.Mode;

import ch.qos.logback.core.model.Model;
import jakarta.servlet.http.HttpServletRequest;



@RestController
public class EMSController {
    @Autowired
//    ExamBo eb;
    ExamService es;
    
    @Autowired
    ExamBo eb;
    
    @Autowired
    UserBo ub;
    
	@RequestMapping("/")
	public ModelAndView m1() {
		return new ModelAndView("index");
	}
	
//	@RequestMapping("/studentLogin")
//	public ModelAndView m2() {
//		return new ModelAndView("studentLogin");
//	}
//	
//	@RequestMapping("/teacherLogin")
//	public ModelAndView m3() {
//		return new ModelAndView("teacherLogin");
//	}
	
	@RequestMapping(value="insertexam", method=RequestMethod.POST)
	public ModelAndView m4(HttpServletRequest req) {
		ModelAndView mv = null;
		System.out.println(req.getParameter("examtitle"));
		String exam_title=req.getParameter("examtitle");
		LocalDate ld = LocalDate.parse(req.getParameter("examdatetime"));
		String exam_duration=req.getParameter("examduration");
		String total_quest=req.getParameter("totalquestion");
		String rightanswer=req.getParameter("rightanswer");
		String wronganswer=req.getParameter("wronganswer");
		String standard=req.getParameter("standard");
		
		Exam ex = new Exam(0,exam_title,ld,exam_duration,total_quest,rightanswer,wronganswer,standard);
		try {
//			eb.save(ex);
			es.insertExam(ex);
		    mv= new ModelAndView("success");
		    mv.addObject("msg","Exam Added Successfully");
		}
		catch(Exception e) {
			mv= new ModelAndView("error");
		}
		return mv;
		
	}
	
	@RequestMapping("/addExam")
	public ModelAndView m4() {
		return new ModelAndView("addExam");
	}
	
	@RequestMapping("/teacherdashboard")
	public ModelAndView m5() {
		return new ModelAndView("teacherdashboard");
	}
	
	
	@RequestMapping("/viewexam")
	public ModelAndView getAllExam() {
		ModelAndView mv = new ModelAndView("viewexam");
		List<Exam> li = es.getAllExam();
		mv.addObject("exams",li);
		return mv;
	}
	
	@RequestMapping("/updateexam")
	public ModelAndView updateMovie(HttpServletRequest req) {
		ModelAndView mv = new ModelAndView("updateexam");
		int id = Integer.parseInt(req.getParameter("id"));
		Exam e = es.getExamById(id);
		mv.addObject("exams", e);
		return mv;
	}
	
	@RequestMapping(value="updateexamdetails", method=RequestMethod.POST)
	public ModelAndView updateexams(HttpServletRequest req) {
		ModelAndView mv = null;
		System.out.println(req.getParameter("examtitle"));
		String exam_title=req.getParameter("examtitle");
		LocalDate ld = LocalDate.parse(req.getParameter("examdatetime"));
		String exam_duration=req.getParameter("examduration");
		String total_quest=req.getParameter("totalquestion");
		String rightanswer=req.getParameter("rightanswer");
		String wronganswer=req.getParameter("wronganswer");
		String standard=req.getParameter("standard");
		
		Exam ex = new Exam(Integer.parseInt(req.getParameter("mid")),exam_title,ld,exam_duration,total_quest,rightanswer,wronganswer,standard);
		System.out.println(ex);
		try {
//			eb.save(ex);
			es.updateExam(ex);
			
		    mv= new ModelAndView("success");
		    mv.addObject("msg","Exam Updated Successfully");
//		    mv.addObject("mess","Value updated successfully...");
		}
		catch(Exception e) {
			mv= new ModelAndView("error");
		}
		return mv;
	}
	
	@RequestMapping("deleteExam")
	public ModelAndView deleteExam(HttpServletRequest req) {
		ModelAndView mv = new ModelAndView("success");
		es.deleteExam(Integer.parseInt(req.getParameter("id")));
		mv.addObject("msg","Exam Deleted Successfully");
		return mv;
	}
	
	@RequestMapping("/registerStudent")
	public ModelAndView doReg() {
		return new ModelAndView("register");
	}
	
	
	
	@RequestMapping("/insertUser")
	public ModelAndView insertUser(HttpServletRequest req) {
		ModelAndView mv = null;
		
		String email = req.getParameter("email");
		String name = req.getParameter("name");
		String standard=req.getParameter("standard");
		String gender=req.getParameter("gender");
		String location = req.getParameter("location");
		String password = req.getParameter("password");
//		byte[] file= Files(req.getParameter("image"));
		
//		Part filePart = req.getPart("image");
//	    byte[] file;
//
//	    try (InputStream input = filePart.getInputStream()) {
//	        file = IOUtils.toByteArray(input);
//	    }

		
		User u1 = new User(email,name,standard,gender,location,password);
		
		try {
			ub.save(u1);
		    mv= new ModelAndView("studentLogin");
//		    mv.addObject("msg","User Registered Successfully");
		}
		catch(Exception e) {
			mv= new ModelAndView("error");
		}
		return mv;
		
	}
	
	@RequestMapping("/studentLogin")
	public ModelAndView sLogin() {
		return new ModelAndView("studentLogin");
	}
	
	
	@RequestMapping("/teacherLogin")
	public ModelAndView tLogin() {
		return new ModelAndView("teacherLogin");
	}
	
	@RequestMapping("checkteacher")
	public ModelAndView checkTeacher(HttpServletRequest req) {
		ModelAndView mv = null;
		String email =req.getParameter("username");
		
		String password =req.getParameter("password");
		
		if(email.equals("admin")&& password.equals("admin")) {
			mv= new ModelAndView("teacherdashboard");
		}
		else {
			mv = new ModelAndView("teacherLogin");
		}
		
		return mv;
	}
	
	@RequestMapping("checkstudent")
	public ModelAndView checkUser(HttpServletRequest req){
		ModelAndView mv=new ModelAndView("studentLogin");
		String email1=req.getParameter("username");
		String password = req.getParameter("password");
		User u1=ub.getById(email1);
		System.out.println(u1.getEmail()+"  "+email1+" "+password+" "+u1.getPassword());
		if(email1.equals(u1.getEmail())) {
			if(password.equals(u1.getPassword())) {
				mv = new ModelAndView("welcomeuser");
				mv.addObject("name",u1.getName());
				mv.addObject("standard",u1.getStandard());
				System.out.println(u1.getStandard());
			}
			else {
				mv= new ModelAndView("studentLogin");
			}
		}
		else {
			mv= new ModelAndView("studentLogin");
		}
		return mv;
	}
	

	
	
	@RequestMapping("/viewstudentexam")
	public ModelAndView viewstudentExam(HttpServletRequest req) {
		ModelAndView mv = new ModelAndView("viewstudentexam");
		List<Exam> exam = eb.getByStandard(req.getParameter("standard"));
		System.out.println(req.getParameter("standard")+" "+exam);
		mv.addObject("exams",exam);
		return mv;
	}
	
	
	

}



