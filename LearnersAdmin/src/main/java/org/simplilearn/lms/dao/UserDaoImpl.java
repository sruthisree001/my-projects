package org.simplilearn.lms.dao;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.FilterChain;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.simplilearn.lms.config.HibConfig;
import org.simplilearn.lms.entities.User;

public class UserDaoImpl implements UserDao {

	@Override
	public void insert(User user) {
		SessionFactory factory=HibConfig.getSessionFactory();
		Session session=factory.openSession();
		org.hibernate.Transaction tx=null;
		try {
			tx=session.beginTransaction();
			session.save(user);
			tx.commit();
		}catch (Exception e) {
			tx.rollback();
			e.printStackTrace();
		}
		
	}

	@Override
	public User get(String username, String password) {
		SessionFactory factory=HibConfig.getSessionFactory();
		Session session=factory.openSession();
		
		Query<User> query=session.createQuery("select u from /LearnersAdmin/src/main/java/org/simplilearn/lms/entities/User u where u.username=?1 and u.password=?2");
		query.setParameter(1,username);
		query.setParameter(2,password);
		
		return query.getSingleResult();
	}

	@Override
	public void update(User user) {
		SessionFactory factory=HibConfig.getSessionFactory();
		Session session=factory.openSession();
		org.hibernate.Transaction tx=null;
		try {
			tx=session.beginTransaction();
			session.save(user);
			tx.commit();
		}catch (Exception e) {
			tx.rollback();
			e.printStackTrace();
		}
		
	}

	

	@Override
	public User checkLogin(String username, String password) throws SQLException, 
	ClassNotFoundException {
String jdbcURL = "jdbc:mysql://localhost:3306/AdminDB";
String dbUser = "root";
String dbPassword = "Sruthi@1990";

Class.forName("com.mysql.jdbc.Driver");
Connection connection = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);
String sql = "SELECT * FROM users WHERE email = ? and password = ?";
PreparedStatement statement = connection.prepareStatement(sql);
statement.setString(1, username);
statement.setString(2, password);

ResultSet result = statement.executeQuery();

User user = null;

if (result.next()) {
	user = new User();
	user.setUsername(result.getString("fullname"));
	user.setPassword(password);
}

connection.close();

return user;
}

}
