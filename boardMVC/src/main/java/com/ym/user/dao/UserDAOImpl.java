package com.ym.user.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserDAOImpl implements UserDAO{

	@Autowired
	private SqlSession template;
	
	@Override
	public void loginCheck(String userid) throws Exception {
		template.selectOne("UserDAO.loginCheck", userid);
	}

	
}
