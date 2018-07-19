package com.ym.board.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ym.board.service.BoardService;
import com.ym.board.vo.BoardVO;

@Controller
public class regController {
	
	@Autowired
	BoardService boardService;
	
	@RequestMapping(value="/regView", method = RequestMethod.GET)
	public String regView(Model model) {
		
		return "insert/contents";
	}
	
	@RequestMapping(value="/reg", method = RequestMethod.POST)
	public String reg(@ModelAttribute BoardVO boardVO) {
			boardService.regBoard(boardVO);
			
		return "redirect:/selectBoard";
	}

}
