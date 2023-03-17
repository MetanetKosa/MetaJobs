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
import org.springframework.web.bind.annotation.ResponseBody;
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
	@GetMapping("/member/insert")
	public void joinGET() {
		log.info("회원가입 페이지 진입");
	}
	
	//회원가입 처리 /member/insert	
	@ResponseBody
	@PostMapping("/member/insert")
	public String joinPOST(MemberVO member, AuthVO auth) throws Exception {
		
		log.info("memberJoin : " + member);
		service.insertMember(member, auth);
		
		String message = "";
		message="<script>alert('SignUp Success :)'); location.href='/'; </script>";
		return message;
	}
	
	//로그인 페이지 이동 /login
	@ResponseBody
	@PostMapping("/member/login")
	public String loginPost(HttpServletRequest request, MemberVO member, RedirectAttributes rttr) throws Exception {
		log.info("로그인 페이지 진입");
		
		HttpSession session = request.getSession();
		MemberVO login = service.memberLogin(member);
		
		if (login == null) {
			int result = 0;
			rttr.addFlashAttribute("result", result);
			session.setAttribute("member", null);
			String message = "";
			message="<script>alert('LogIn Failed :('); location.href='/'; </script>";
			return message;
		} else{
			int result = 1;
			rttr.addFlashAttribute("result", result);
			session.setAttribute("member", login);
			System.out.println("로그인 데이터: " +member);
			String message = "";
			message="<script>alert('LogIn Success :)'); location.href='/'; </script>";
			return message;
		}
	}
	
	//로그아웃 버튼
	@ResponseBody
	@GetMapping("/logout")
	public String logoutPost(HttpServletRequest request) {
		HttpSession session = request.getSession();
		
		session.invalidate();
		
		String message = "";
		message="<script>alert('LogOut Successs :)'); location.href='/'; </script>";
		return message;
	}
	
	//회원정보 수정 /member/update
	@ResponseBody
	@PostMapping("/member/update")
	public String updatePOST(MemberVO member) throws Exception {
		
		log.info("memberUpdate : " + member);
		service.updateMember(member);

		String message = "";
		message="<script>alert('Modify Your Info :)'); location.href='/'; </script>";
		return message;
	}
}
