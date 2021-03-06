package com.ym.board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ym.board.service.BoardService;
import com.ym.board.vo.BoardVO;

@Controller
public class BoardController {

	@Autowired
	BoardService boardService;

	@RequestMapping(value="/regView", method = RequestMethod.GET)
	public String regView(Model model) {
		System.out.println("111");
		return "board/contents";
	}
	
	@RequestMapping(value="/reg", method = RequestMethod.POST)
	public String reg(@ModelAttribute BoardVO boardVO) {
			boardService.regBoard(boardVO);
			
		return "redirect:/selectBoard";
	}
	
	@RequestMapping(value="/deleteinfo", method = {RequestMethod.GET, RequestMethod.POST})
	public String deleteInfo(Model model, @RequestParam String idx) {
		boardService.deleteInfo(idx);
		
		return "redirect:/selectBoard";
	}
	
	@RequestMapping(value="/updateview", method= {RequestMethod.GET, RequestMethod.POST})
	public String updateView(Model model, @RequestParam int idx) {
	List<BoardVO> list = boardService.detailView(idx);
	model.addAttribute("list", list);
	
	return "board/updateView";
	}
	
	@RequestMapping(value="/detailView", method = RequestMethod.GET)
	public String detail(Model model, @RequestParam int idx) {
		List<BoardVO> list = boardService.detailView(idx);
		model.addAttribute("list", list);
		model.addAttribute("num", idx);
		
		return "board/boardDetail";
	}

}
