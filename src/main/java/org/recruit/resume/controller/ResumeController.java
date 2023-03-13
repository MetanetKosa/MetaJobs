package org.recruit.resume.controller;

import org.recruit.resume.domain.ResumeVO;
import org.recruit.resume.service.ResumeService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/resume/*")
@AllArgsConstructor
public class ResumeController {
	
	private ResumeService service;
	
	@GetMapping("/list")
	public void list(@RequestParam Long mem_no, Model model) {
		model.addAttribute("list", service.getResumeList(mem_no));
	}
	
	@PostMapping("/insert")
	public String insert(ResumeVO resume, RedirectAttributes rttr) {
	
		service.insertResume(resume);
		rttr.addAttribute("mem_no", resume.getMem_no());
		return "redirect:/resume/list";
	}
	
	@GetMapping("/insert")
	public void insert() {
		
	}
	@GetMapping({"/get","/modify"})
	public void get(@RequestParam Long resume_no, Model model) {
		model.addAttribute("resume", service.get(resume_no));
	}
	
	@PostMapping("/modify")	
	public String modify(ResumeVO resume, RedirectAttributes rttr) {
		if(service.updateResume(resume)) {
			rttr.addAttribute("mem_no", resume.getMem_no());
		}
		
		return "redirect:/resume/list";
	}
	
	@PostMapping("/delete")
	public String remove(@RequestParam Long resume_no, RedirectAttributes rttr) {
		if(service.delete(resume_no)) {
			rttr.addFlashAttribute("result", "success");
		}
		return "redirect:/resume/list";
	}

}
