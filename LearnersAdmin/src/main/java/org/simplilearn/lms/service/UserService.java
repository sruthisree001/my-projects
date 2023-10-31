package org.simplilearn.lms.service;

import org.simplilearn.lms.entities.User;

public interface UserService {
	void insert(User user);
	User get(String unaername,String password);
	void updatePassword(String useername,String password,String newpassword);
}
