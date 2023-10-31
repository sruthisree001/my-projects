package org.simplilearn.lms.dao;

import java.util.List;

import javax.transaction.SystemException;
import javax.transaction.Transaction;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.simplilearn.lms.config.HibConfig;
import org.simplilearn.lms.entities.Student;
import org.simplilearn.lms.entities.Subject;
import org.simplilearn.lms.entities.Teacher;

public class StudentDaoImpl implements StudentDao{
   public void insert(Student student) {
		
		SessionFactory factory=HibConfig.getSessionFactory();
		Session session=factory.openSession();
		org.hibernate.Transaction tx=null;
		try {
			tx=session.beginTransaction();
			session.save(student);
			tx.commit();
		}catch (Exception e) {
			tx.rollback();
			e.printStackTrace();
		}
	}

	@Override
	public List<Student> getAll() {

		SessionFactory factory=(org.hibernate.SessionFactory) HibConfig.getSessionFactory();
		Session session=factory.openSession();
		Query<Student> query=session.createQuery("select t from org.simplilearn.lms.entities.Student t ");
		
		return query.list();
		
	}

	@Override
	public void delete(Student student) {
		SessionFactory factory=HibConfig.getSessionFactory();
		Session session=factory.openSession();
		org.hibernate.Transaction tx=null;
		try {
			tx=session.beginTransaction();
			session.delete(student);
			tx.commit();
		}catch (Exception e) {
			tx.rollback();
			e.printStackTrace();
		}
		
	}

	@Override
	public void update(Student student) {
		SessionFactory factory=HibConfig.getSessionFactory();
		Session session=factory.openSession();
		Transaction tx=null;
		try {
			tx=(Transaction) session.beginTransaction();
			session.save(student);
			tx.commit();
		}catch (Exception e) {
			try {
				tx.rollback();
			} catch (IllegalStateException | SystemException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			e.printStackTrace();
		}
		
	}
	@Override
	public Student get(int sid) {
		SessionFactory factory=HibConfig.getSessionFactory();
		Session session=factory.openSession();
		Student student=session.get(Student.class,sid);
		return student;
		
	}
	
	
}
