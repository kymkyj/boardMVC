package com.ym.user.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ym.user.dao.UserDAO;
import com.ym.user.vo.UserVO;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	UserDAO userDAO;
	
	@Override
	public UserVO loginCheck(UserVO userVO) throws Exception {
		return userDAO.loginCheck(userVO);
		
	}

}
