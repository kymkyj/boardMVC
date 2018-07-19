package com.ym.board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ym.board.service.BoardService;
import com.ym.board.vo.BoardVO;

@Controller
public class UpdateViewController {

	@Autowired
	BoardService boardService;
	
	@RequestMapping(value="/updateview", method= {RequestMethod.GET, RequestMethod.POST})
		public String updateView(Model model, @RequestParam int idx) {
		List<BoardVO> list = boardService.detailView(idx);
		model.addAttribute("list", list);
		
		return "update/updateView";
	
	}
}
