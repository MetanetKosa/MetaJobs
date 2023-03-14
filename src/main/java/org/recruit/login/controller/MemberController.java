package org.recruit.login.controller;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@AllArgsConstructor
@SessionAttributes("login")	
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
		service.insertMember(member, auth);
		
		return "redirect:/";
	}
	
	//로그인 페이지 이동 /login
	@PostMapping("/login")
	public String loginPost(HttpServletRequest request, MemberVO member, RedirectAttributes rttr) throws Exception {
		log.info("로그인 페이지 진입");
		
		HttpSession session = request.getSession();
		MemberVO login = service.memberLogin(member);
		
		if (login == null) {
			int result = 0;
			rttr.addFlashAttribute("result", result);
			session.setAttribute("member", null);
			return "redirect:/";
		} else{
			int result = 1;
			rttr.addFlashAttribute("result", result);
			session.setAttribute("member", login);
			System.out.println("로그인 데이터: " +member);
			return "redirect:/";
		}
	}
	
	//로그아웃 버튼
	@GetMapping("/logout")
	public String logoutPost(HttpServletRequest request) {
		HttpSession session = request.getSession();
		
		session.invalidate();
		
		return "redirect:/";
	}
}
