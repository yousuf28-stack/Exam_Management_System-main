package com.exam.model;

import java.time.LocalDate;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Exam {
	
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE)
	private int examid;
	private String examtitle;
	private LocalDate examdatetime;
	private String examduration;
	private String totalquestion;
	private String standard;
	private String rightanswer;
	private String wronganswer;
	public int getExamid() {
		return examid;
	}
	public void setExamid(int examid) {
		this.examid = examid;
	}
	public String getExamtitle() {
		return examtitle;
	}
	public void setExamtitle(String examtitle) {
		this.examtitle = examtitle;
	}
	public LocalDate getExamdatetime() {
		return examdatetime;
	}
	public void setExamdatetime(LocalDate examdatetime) {
		this.examdatetime = examdatetime;
	}
	public String getExamduration() {
		return examduration;
	}
	public void setExamduration(String examduration) {
		this.examduration = examduration;
	}
	public String getTotalquestion() {
		return totalquestion;
	}
	public void setTotalquestion(String totalquestion) {
		this.totalquestion = totalquestion;
	}
	public String getRightanswer() {
		return rightanswer;
	}
	public void setRightanswer(String rightanswer) {
		this.rightanswer = rightanswer;
	}
	public String getWronganswer() {
		return wronganswer;
	}
	public void setWronganswer(String wronganswer) {
		this.wronganswer = wronganswer;
	}
	public Exam(int examid, String examtitle, LocalDate examdatetime, String examduration, String totalquestion,
			String rightanswer, String wronganswer, String standard) {
		super();
		this.examid = examid;
		this.examtitle = examtitle;
		this.examdatetime = examdatetime;
		this.examduration = examduration;
		this.totalquestion = totalquestion;
		this.rightanswer = rightanswer;
		this.wronganswer = wronganswer;
		this.standard = standard;
	}
	public Exam() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	

	@Override
	public String toString() {
		return "Exam [examid=" + examid + ", examtitle=" + examtitle + ", examdatetime=" + examdatetime
				+ ", examduration=" + examduration + ", totalquestion=" + totalquestion + ", standard=" + standard
				+ ", rightanswer=" + rightanswer + ", wronganswer=" + wronganswer + "]";
	}
	public String getStandard() {
		return standard;
	}
	public void setStandard(String standard) {
		this.standard = standard;
	}
	
	

}
