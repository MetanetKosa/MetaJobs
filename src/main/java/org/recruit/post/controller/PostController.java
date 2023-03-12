package org.recruit.post.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
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
	public String postList(PostVO post,RedirectAttributes rttr) {
		log.info(post);
//		service.postInsert(post);
		rttr.addFlashAttribute("result",post.getPostNo());
		return "redirect:/post/postList";
	}
	

	@GetMapping(value = "/postGet")
	public String postDetail(Model model, @RequestParam Long post_no ) {
		log.info("결과확인: "+ post_no);
		model.addAttribute("post", service.getPost(post_no));
		return "/post/postDetail";
	}
	
	@PatchMapping("/postModify")
	@PostMapping("/postModify")
	public String modify(PostVO post, RedirectAttributes rttr) {
		if(service.updatePost(post) == 1) {
			rttr.addFlashAttribute("result", "success");
			rttr.addAttribute("mem_no", post.getPostNo());
		}

		return "redirect:/post/postList";
	}

	@DeleteMapping("/postDelete")
	@PostMapping("/delete")
	public String delete(@RequestParam Long post_no, RedirectAttributes rttr) {
		if(service.deletePost(post_no) == 1) {
			rttr.addFlashAttribute("result", "success");
		}
		return "redirect:/post/postList";
	}
}
