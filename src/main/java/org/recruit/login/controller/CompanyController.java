package org.recruit.login.controller;

import java.util.Date;

import org.recruit.login.domain.AuthVO;
import org.recruit.login.domain.CompanyVO;
import org.recruit.login.service.CompanyService;
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
		service.insert(company, auth);
		
		return "redirect:/";
	}
	
//	@PostMapping("/company/insert")
//	public String comJoinPOST(CompanyVO company) throws Exception {
//		
//		log.info("companyJoin : " + company);
//		service.insert(company);
//		
//		return "redirect:/";
//	}
	
	//로그인 페이지 이동 /login
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public void comLoginGET() {
		log.info("로그인 페이지 진입");
	}
	
}
