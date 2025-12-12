package com.exam.repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.exam.model.Exam;

@Repository
public interface ExamBo extends JpaRepository<Exam, Integer>{
   
	@Query(value="select * from exam where standard = :standard",nativeQuery=true)
	List<Exam> getByStandard(@Param("standard") String standard);
	
}    
