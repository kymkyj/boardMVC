package com.ym.user.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ym.user.vo.UserVO;

@Repository
public class UserDAOImpl implements UserDAO{

	@Autowired
	private SqlSession template;
	
	@Override
	public UserVO loginCheck(UserVO userVO) throws Exception {
		return template.selectOne("User.loginCheck", userVO);
	}

	
}
