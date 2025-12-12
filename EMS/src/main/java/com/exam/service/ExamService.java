package com.exam.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.exam.model.Exam;
import com.exam.repo.ExamBo;

@Service
public class ExamService {
   
	@Autowired
	ExamBo eb;
	public boolean insertExam(Exam ex) {
		boolean b = false;
		try {
			eb.save(ex);
		} catch (Exception e) {
			// TODO: handle exception
			b = true;
		}
		return b;
	}
	
	public List<Exam> getAllExam(){
		return eb.findAll();
	}
	
	public Exam getExamById(int id){
		return eb.getById(id);
	}
	
	public boolean updateExam(Exam ex) {
		boolean b = false;
		try {
			eb.save(ex);
		} catch (Exception e) {
			// TODO: handle exception
			b = true;
		}
		return b;
	}
	
	public boolean deleteExam(int examid) {
		boolean b = false;
		try {
			eb.deleteById(examid);
		} catch (Exception e) {
			// TODO: handle exception
			b = true;
		}
		return b;
	}
}
