package org.recruit.login.controller;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.recruit.login.domain.AuthVO;
import org.recruit.login.domain.CompanyVO;
import org.recruit.login.service.CompanyService;
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
@SessionAttributes("login")	
public class CompanyController {

	@Autowired
	private CompanyService service;
	
	//회원가입 페이지 이동	/company/insert
	//@RequestMapping(value = "/company/insert", method = RequestMethod.GET)
	@GetMapping("/company/insert")
	public void comJoinGET() {
		log.info("회원가입 페이지 진입");
	}
	
	//회원가입 처리	/company/insert
	@PostMapping("/company/insert")
	public String comJoinPOST(CompanyVO company, AuthVO auth) throws Exception {
		
		log.info("companyJoin : " + company);
		service.insertCompany(company, auth);
		
		return "redirect:/";
	}
	
		//로그인 페이지 이동 /login
		@PostMapping("/company/login")
		public String loginPost(HttpServletRequest request, CompanyVO company, RedirectAttributes rttr) throws Exception {
			log.info("로그인 페이지 진입");
			
			HttpSession session = request.getSession();
			CompanyVO login = service.companyLogin(company);
			
			if (login == null) {
				int result = 0;
				rttr.addFlashAttribute("result", result);
				session.setAttribute("company", null);
				return "redirect:/";
			} else{
				int result = 1;
				rttr.addFlashAttribute("result", result);
				session.setAttribute("company", login);
				System.out.println("로그인 데이터: " +company);
				return "redirect:/";
			}
		}
		
		//로그아웃 버튼
		@GetMapping("/company/logout")
		public String logoutPost(HttpServletRequest request) {
			HttpSession session = request.getSession();
			
			session.invalidate();
			
			return "redirect:/";
		}
	
}
