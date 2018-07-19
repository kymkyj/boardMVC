package com.ym.board.controller;

import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ym.board.service.BoardService;
import com.ym.board.vo.BoardVO;

@Controller
public class MainController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	@Autowired
	private BoardService boardService;

	@RequestMapping(value = "/selectBoard", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		List<BoardVO> list = boardService.selectBoard();
		logger.info("Welcome home! The client locale is {}.", locale);
		if (list.size() != 0)

			model.addAttribute("list", list);

		return "home";
	}
}
