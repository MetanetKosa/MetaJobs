package org.recruit.post.controller;

import org.recruit.post.service.PostService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/post/*")
@AllArgsConstructor
public class PostController {
	
	private PostService service;

	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String register(Model model) {
		log.info(service.postList());
		model.addAttribute("postlist",service.postList());
		return "/post/postDetail";
	}
	
	@RequestMapping(value = "/d", method = RequestMethod.GET)
	public String d(Model model) {
		//log.info(service.postList());
		//model.addAttribute("postlist",service.postList());
		return "/post/postDetail";
	}
	
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list(Model model) {
		//log.info(service.postList());
		//model.addAttribute("postlist",service.postList());
		return "/post/postList";
	}
}
