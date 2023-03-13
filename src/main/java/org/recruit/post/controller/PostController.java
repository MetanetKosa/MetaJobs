package org.recruit.post.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import org.recruit.post.domain.PostVO;
import org.recruit.post.service.PostService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
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
		model.addAttribute("postList",service.getPostList());
		return "/post/postList";
	}
	
	@PostMapping("/postInsert")
	public String postList(@ModelAttribute PostVO post) {
		log.info("result삽입결과:"+post);
		log.info("result삽입결과:"+post.getPostSdate());
		log.info("result삽입결과:"+post.getPostFdate());
		service.insertPost(post);
		return "redirect:/post/postList";
	}
	

	@GetMapping(value = "/postGet")
	public String postDetail(Model model, @RequestParam Long post_no ) {
		log.info("결과확인: "+ post_no);
		model.addAttribute("post", service.getPost(post_no));
		return "/post/postDetail";
	}
	
	@GetMapping(value = "/postModify")
	public String postModify(Model model, @RequestParam Long postNo) {
		log.info("postModify결과확인: "+ postNo);
		model.addAttribute("post", service.getPost(postNo));
		return "/post/postModify";
	}
	
//	@PatchMapping("/postModify")
//	@PostMapping("/postModify")
	@RequestMapping(value = "/postModify", method = RequestMethod.POST)
	public String modify(@ModelAttribute PostVO post, RedirectAttributes rttr, @RequestParam("postNo") Long postNo) {
		if(service.updatePost(post) == 1) {
			rttr.addFlashAttribute("result", "success");
			rttr.addAttribute("post_no", post.getPostNo());
		}
		return "redirect:/post/postList";
	}
	

//	@DeleteMapping("/postDelete")
//	@PostMapping("/postDelete")
	@RequestMapping(value = "/postDelete", method = RequestMethod.GET)
	public String delete(@RequestParam Long postNo, RedirectAttributes rttr) {
		log.info("@DeleteMapping결과확인: "+ postNo);
		if(service.deletePost(postNo) == 1) {
			rttr.addFlashAttribute("result", "success");
		}
		return "redirect:/post/postList";
	}
}
