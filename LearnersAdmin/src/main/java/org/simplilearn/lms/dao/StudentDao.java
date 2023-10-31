package org.simplilearn.lms.dao;

import java.util.List;

import org.simplilearn.lms.entities.Student;
import org.simplilearn.lms.entities.Subject;

public interface StudentDao {
	void insert(Student student);
	List<Student> getAll();
	Student get(int sid);
	void delete(Student student);
	void update(Student student);
}
