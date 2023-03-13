package org.recruit.login.controller;

import java.util.Date;

import org.recruit.login.domain.AuthVO;
import org.recruit.login.domain.MemberVO;
import org.recruit.login.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@AllArgsConstructor
public class MemberController {

	@Autowired
	private MemberService service;
	
	//회원가입 페이지 이동 /member/insert
	//@RequestMapping(value = "/member/insert", method = RequestMethod.GET)
	@GetMapping("/member/insert")
	public void joinGET() {
		log.info("회원가입 페이지 진입");
	}
	
	//회원가입 처리 /member/insert	
	@PostMapping("/member/insert")
	public String joinPOST(MemberVO member, AuthVO auth) throws Exception {
		
		log.info("memberJoin : " + member);
		service.insert(member, auth);
		
		return "redirect:/";
	}
	
	//로그인 페이지 이동 /login
	@PostMapping("/login")
	public void loginGET() {
		log.info("로그인 페이지 진입");
	}
	
}
