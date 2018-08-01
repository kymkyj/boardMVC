package com.ym.user.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.ym.board.service.BoardService;
import com.ym.board.vo.BoardVO;
import com.ym.user.service.UserService;
import com.ym.user.vo.UserVO;

@SessionAttributes("id")
@Controller
public class UserController {

	@Autowired
	BoardService boardService;
	
	@Autowired
	UserService userService;
	
	@ResponseBody
	@RequestMapping(value="/logincheck")
	public String loginCheck(Model model, @ModelAttribute UserVO userVO) {
//		System.out.println("userid test : "+id);
		String msg = "";
		try {
			UserVO vo = userService.loginCheck(userVO);
			if(vo.equals("") || vo.equals("null")) {
				msg="fail";
			}
			msg="success";
			System.out.println("msg 값 :"+msg);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return msg;
	}
	
	@RequestMapping(value="/login")
	public String login(Model model, @RequestParam String id) {
		
		List<BoardVO> list = boardService.selectBoard();
		
		model.addAttribute("list", list);
		model.addAttribute("userid", id);
		
		return "home";
	}
	
	@RequestMapping(value="/logout")
	public String logout(Model model, SessionStatus sessionStatus) {
			sessionStatus.setComplete();
		
		return "index";
	}
}
