package org.simplilearn;

import java.util.List;
import java.util.Scanner;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.simplilearn.dao.CustomerDao;
import org.simplilearn.dao.CustomerDaoImpl;
import org.simplilearn.entities.Customer;

public class Test {

	public static void main(String[] args) {
		CustomerDao dao=new CustomerDaoImpl();
		String customerName;
		String loc;
		Scanner sc=new Scanner(System.in);
		for(int i=0;i<5;i++)
		{
			System.out.println("Enter the customer "+(i+1)+" details");
			customerName=sc.next();
			loc=sc.next();
			Customer customer=new Customer();
			customer.setCname(customerName);
			customer.setLoc(loc);
			dao.insert(customer);
		}
		
	}

}
