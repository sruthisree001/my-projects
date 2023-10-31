package org.simplilearn.dao;

import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.simplilearn.config.HibConfig;
import org.simplilearn.entities.Customer;
import org.simplilearn.util.HibUtil;

public class CustomerDaoImpl implements CustomerDao {

	@Override
	public void insert(Customer customer) {
		SessionFactory factory = null;
		factory = HibConfig.getSessionFactory();
		Session session = factory.openSession();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			session.save(customer);
			tx.commit();
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void delete(int cid) {
		SessionFactory factory=HibConfig.getSessionFactory();
		Session session=factory.openSession();
		Transaction tx=null;
		try {
			tx=session.beginTransaction();
			Customer customer=session.get(Customer.class, cid);
			session.delete(customer);
			tx.commit();
		} catch (Exception e) {
			e.printStackTrace();
			tx.rollback();
		}
	}

	@Override
	public List<Customer> getAll() {
		SessionFactory factory=HibConfig.getSessionFactory();
		Session session=factory.openSession();
		//Query<Customer> query=session.createQuery("select c from org.simplilearn.entities.Customer c");
		TypedQuery<Customer> query=session.createQuery("select c from org.simplilearn.entities.Customer c");
		List<Customer> customers=query.getResultList();
		return customers;
	}

	@Override
	public Customer get(int cid) {
		SessionFactory factory=HibConfig.getSessionFactory();
		Session session=factory.openSession();
		//Customer customer=session.get(Customer.class, cid);
		TypedQuery<Customer> query=session.createQuery("select c from org.simplilearn.entities.Customer c where c.cid=?");
		query.setParameter(1, cid);
		Customer customer=query.getSingleResult();
		return customer;
	}

}
