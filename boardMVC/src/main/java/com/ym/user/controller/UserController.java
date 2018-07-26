package com.ym.user.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.ym.board.service.BoardService;
import com.ym.board.vo.BoardVO;
import com.ym.user.service.UserService;

@SessionAttributes("userid")
@Controller
public class UserController {

	@Autowired
	BoardService boardService;
	
	@Autowired
	UserService userService;
	
	@RequestMapping(value="/loginCheck")
	public String loginCheck(Model model, @RequestParam String userid, String password) {
		try {
			userService.loginCheck(userid);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		List<BoardVO> list = boardService.selectBoard();
		if (list.size() != 0)

		model.addAttribute("list", list);
		model.addAttribute("userid", userid);
		
		return "home";
	}
	
	@RequestMapping(value="/logout")
	public String logout(Model model, SessionStatus sessionStatus) {
		sessionStatus.setComplete();
	
		return "home";
	}
}
