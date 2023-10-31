package org.simplilearn.lms.dao;

import java.util.List;

import javax.transaction.SystemException;
import javax.transaction.Transaction;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
//import org.hibernate.SessionFactory;
import org.simplilearn.lms.config.HibConfig;
import org.simplilearn.lms.entities.AcadamicClass;
import org.simplilearn.lms.entities.Student; 

public class AcadamicClassDaoImpl implements AcadamicClassDao {
	 
public void insert(AcadamicClass acadamiclass) {
		
		SessionFactory factory=HibConfig.getSessionFactory();
		Session session=factory.openSession();
		org.hibernate.Transaction tx=null;
		try {
			tx=session.beginTransaction();
			session.save(acadamiclass);
			tx.commit();
		}catch (Exception e) {
			tx.rollback();
			e.printStackTrace();
		}
	}

	@Override
	public List<AcadamicClass> getAll() {

		SessionFactory factory= HibConfig.getSessionFactory();
		Session session=factory.openSession();
		Query<AcadamicClass> query=session.createQuery("select t from org.simplilearn.lms.entities.Student t ");
		
		return query.list();
		
	}

	@Override
	public void delete(AcadamicClass acadamicclass) {
		SessionFactory factory=HibConfig.getSessionFactory();
		Session session=factory.openSession();
		org.hibernate.Transaction tx=null;
		try {
			tx=session.beginTransaction();
			session.delete(acadamicclass);
			tx.commit();
		}catch (Exception e) {
			tx.rollback();
			e.printStackTrace();
		}
		
	}

	
	@Override
	public AcadamicClass get(int cid) {
		SessionFactory factory=HibConfig.getSessionFactory();
		Session session=factory.openSession();
		AcadamicClass acadamicclass=session.get(AcadamicClass.class,cid);
		return acadamicclass;
		
	}

	@Override
	public void update(AcadamicClass acadamicClass) {
		SessionFactory factory=HibConfig.getSessionFactory();
		Session session=factory.openSession();
		Transaction tx=null;
		try {
			tx=(Transaction) session.beginTransaction();
			session.save(acadamicClass);
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
	

}
