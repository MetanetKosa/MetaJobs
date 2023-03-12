package org.recruit.post.controller;

import java.util.Date;

import org.recruit.post.domain.PostVO;
import org.recruit.post.service.PostService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/post/*")
@AllArgsConstructor
public class PostController {
	
	private PostService service;

	@RequestMapping(value = "/postRegister", method = RequestMethod.GET)
	public String register(Model model) {
		return "/post/postInsert";
	}
	
	@RequestMapping(value = "/postList", method = RequestMethod.GET)
	public String list(Model model) {
		log.info(service.postList());
		model.addAttribute("postList",service.postList());
		return "/post/postList";
	}
	
	@PostMapping("/postInsert")
	public String postList(PostVO post,RedirectAttributes rttr) {
		log.info(post);
//		service.postInsert(post);
//		rttr.addFlashAttribute("result",post.getPostNo());
		return "redirect:/post/postList";
	}
	
	@RequestMapping(value = "/postDetail", method = RequestMethod.GET)
	public String postDetail(Model model) {
		return "/post/postDetail";
	}
}
