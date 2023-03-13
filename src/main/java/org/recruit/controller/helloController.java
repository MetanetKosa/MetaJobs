package org.recruit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.AllArgsConstructor;

@Controller
@RequestMapping
@AllArgsConstructor
public class helloController {
	
	@GetMapping("/enroll")
	public String anotation(Model model) {
		
		model.addAttribute("hello", "hello");
		//
		return "/post/enroll";
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
		//return "home";
		//
	
	@GetMapping("/resumeList")
	public void anotations(Model model) {
		
		model.addAttribute("hello", "hello");
		//
		//return "home";
		//
	}

}
