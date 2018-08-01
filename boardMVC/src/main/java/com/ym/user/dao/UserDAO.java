package com.ym.user.dao;

import com.ym.user.vo.UserVO;

public interface UserDAO {

	UserVO loginCheck(UserVO userVO) throws Exception;

}
