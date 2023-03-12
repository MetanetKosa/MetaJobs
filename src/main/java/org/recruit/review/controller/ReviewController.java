package org.recruit.review.controller;

import org.recruit.review.domain.Criteria;
import org.recruit.review.domain.PageDTO;
import org.recruit.review.domain.ReviewVO;
import org.recruit.review.service.ReviewService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/review/*")
@AllArgsConstructor
public class ReviewController {
	
	private ReviewService service;
	
	@GetMapping("/reviewList")
	public void getReviewList(Criteria cri, Model model) {
		log.info("list : " + cri);
		model.addAttribute("list", service.getReviewList(cri));
		model.addAttribute("pageMaker", new PageDTO(cri, 10));
	}
	
	
	@PostMapping("/insert")
	public String insertReview(ReviewVO review, RedirectAttributes rttr) {
		
		log.info("register : " + review);
		service.insertReview(review);
		rttr.addFlashAttribute("result", review.getRno());
		
		return "redirect:/review/reviewList";
	}

	@GetMapping("/get")
	public void get(@RequestParam("rno")Long rno, Model model) {
		log.info("/get");
		model.addAttribute("review", service.getReview(rno));
	}
}
