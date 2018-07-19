package com.ym.board.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ym.board.service.BoardService;

@Controller
public class DeleteController {

	@Autowired
	BoardService boardService;
	
	@RequestMapping(value="/deleteinfo", method = {RequestMethod.GET, RequestMethod.POST})
	public String deleteInfo(Model model, @RequestParam String idx) {
		boardService.deleteInfo(idx);
		
		return "redirect:/selectBoard";
	}
}
