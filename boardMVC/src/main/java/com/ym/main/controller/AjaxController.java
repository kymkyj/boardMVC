package com.ym.main.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AjaxController {
	@RequestMapping(value = "/ajax", method = RequestMethod.GET)
	public String home(Model model) {
		
		return "";
	}
}
