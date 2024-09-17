package com.springmvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springmvc.dao.StudentDao;
import com.springmvc.dto.Student;

@Service
public class StudentServiceImpl implements StudentService
{
	@Autowired
	private StudentDao dao;

	@Override
	public int createStudent(Student student) 
	{
		return dao.save(student)?1:0;
	}
	
}
