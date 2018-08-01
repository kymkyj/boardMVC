package com.ym.user.service;

import com.ym.user.vo.UserVO;

public interface UserService {

	UserVO loginCheck(UserVO userVO) throws Exception;

}
