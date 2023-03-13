package org.recruit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class helloController {
	
	@RequestMapping(value = "/hello", method = RequestMethod.GET)
	public String anotation(Model model) {
		
		model.addAttribute("hello", "hello");
		//
		return "/post/enroll";
		//
	}
	
	@RequestMapping(value = "/d", method = RequestMethod.GET)
	public String postDetail(Model model) {
		
		model.addAttribute("hello", "hello");
		//
		return "/post/postDetail";
		//
	}
	
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String postList(Model model) {
		
		model.addAttribute("hello", "hello");
		//
		return "/post/postList";
		//
	}
}
