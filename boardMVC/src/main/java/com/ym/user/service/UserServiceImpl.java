package com.ym.user.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ym.user.dao.UserDAO;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	UserDAO userDAO;
	
	@Override
	public void loginCheck(String userid) throws Exception {
		userDAO.loginCheck(userid);
		
	}

}
