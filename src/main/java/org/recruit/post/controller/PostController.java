package org.recruit.post.controller;


import org.recruit.post.domain.Criteria;
import org.recruit.post.domain.PageDTO;
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
//post
	@RequestMapping(value = "/postGet", method = RequestMethod.GET)
	public String register(Model model) {
		log.info("확인");
		return "/post/postInsert";
	}
	
	//페이징 처리
	//@RequestMapping(value = "/postList", method = RequestMethod.GET)
	@GetMapping("/postList")
	public void list(Criteria cri, Model model) {
		log.info("list:" + cri);
//		model.addAttribute("postList",service.getPostList());
		int total = service.getTotalCount(cri);
		log.info("postList: " + cri );
		model.addAttribute("postList", service.getListWithPaging(cri,total));
		model.addAttribute("pageMaker",new PageDTO(cri, total));
	}
	
	//페이징 처리
		@GetMapping("/getListWithPaging")
		public void getListWithPaging(Criteria cri, Model model) {
			log.info("getListWithPaging:" + cri);
			int total = service.getTotalCount(cri);
			log.info(total);
			model.addAttribute("getList", service.getListWithPaging(cri,total));
			model.addAttribute("pageMaker",new PageDTO(cri, 200));
		}
	
	@PostMapping("/postInsert")
	public String postList(@ModelAttribute PostVO post) {
		log.info("getPostSdate결과:"+post.getPostSdate());
		log.info("getPostFdate결과:"+post.getPostFdate());
		service.insertPost(post);
		return "redirect:/post/postList";
	}
	

	@GetMapping(value = "/postDetail")
	public String postDetail(Model model, @RequestParam Long post_no ) {
		log.info("post_no 결과확인: "+ post_no);
		model.addAttribute("post", service.getPost(post_no));
		log.info("postDetail 결과확인: "+ service.getPost(post_no));
		return "/post/postDetail";
	}
	
	@GetMapping(value = "/postModify")
	public String postModify(Model model, @RequestParam Long postNo) {
		log.info("postModify결과확인: "+ postNo);
		model.addAttribute("post", service.getPost(postNo));
		return "/post/postModify";
	}
	
	@RequestMapping(value = "/postModify", method = RequestMethod.POST)
	public String modify(@ModelAttribute PostVO post, RedirectAttributes rttr, @RequestParam("postNo") Long postNo) {
		log.info("getPostSdate확인 : " + post.getPostSdate());
		log.info("getPostFdate확인 : " + post.getPostFdate());
		if(service.updatePost(post) == 1) {
			rttr.addFlashAttribute("result", "success");
		}
		return "redirect:/post/postList";
	}
	

	@RequestMapping(value = "/postDelete", method = RequestMethod.GET)
	public String delete(@RequestParam Long postNo, RedirectAttributes rttr) {
		log.info("DeleteMapping결과확인: "+ postNo);
		if(service.deletePost(postNo) == 1) {
			rttr.addFlashAttribute("result", "success");
		}
		return "redirect:/post/postList";
	}
	
}
