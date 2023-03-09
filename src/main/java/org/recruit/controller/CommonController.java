package org.recruit.controller;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class CommonController {

	@GetMapping("/accessError")
	public void accessDenied(Authentication auth, Model model) {
		model.addAttribute("msg", "Access Denied");
	}
	
	@GetMapping("/customLogin")
	public void loginInput(String error, String logout, Model model) {
		if(error != null) {	//?óê?ü¨Í∞? ?ÇòÎ©?
			model.addAttribute("error", "Login Error Check");
		}
		
		if(logout != null) { //Î°úÍ∑∏?ïÑ?õÉ ?ïòÎ©?
			model.addAttribute("logout", "LogOut");
		}
	}
	
	@GetMapping("/customLogout")
	public void logoutGet() {
		log.info("custom LogOut!");
	}
}
