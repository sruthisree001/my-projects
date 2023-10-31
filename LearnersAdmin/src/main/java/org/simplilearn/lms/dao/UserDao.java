package org.simplilearn.lms.dao;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import org.simplilearn.lms.entities.User;

public interface UserDao{
	
		void insert(User user);
		User get(String username,String password);
		void update(User user);
		
		User checkLogin(String email, String password) throws SQLException, ClassNotFoundException;
}