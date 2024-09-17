package com.springmvc.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.springmvc.dto.Student;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.transaction.Transactional;

@Repository
public class StudentDaoImpl implements StudentDao {
	@Autowired
	@PersistenceContext
	private EntityManager entityManager;

	@Override
	@Transactional
	public boolean save(Student student) {
		entityManager.persist(student);
		return true;
	}

}
