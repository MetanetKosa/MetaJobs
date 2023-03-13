package org.recruit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.AllArgsConstructor;

@Controller
@RequestMapping("/resume/*")
@AllArgsConstructor
public class helloController {
	
	@GetMapping("/enroll")
	public void anotation(Model model) {
		
		model.addAttribute("hello", "hello");
		//
		//return "home";
		//
	}
	
	@GetMapping("/resumeList")
	public void anotations(Model model) {
		
		model.addAttribute("hello", "hello");
		//
		//return "home";
		//
	}

	


}
