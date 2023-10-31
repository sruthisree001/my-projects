package org.simplilearn.dao;

import java.util.List;

import org.simplilearn.entities.Customer;

public interface CustomerDao {
	void insert(Customer customer);
	void delete(int cid);
	List<Customer> getAll();
	Customer get(int cid);
}
