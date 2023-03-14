package org.recruit.resume.controller;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import org.recruit.resume.service.ResumeService;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
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
		log.info("register" + resume);
		System.out.println(resume);
		if(resume.getAttachList() != null) {
			resume.getAttachList().forEach(attach -> System.out.println(attach));
		}
		
		service.insertResume(resume);
		
		rttr.addFlashAttribute("result",resume.getResume_no());
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
	
	
	@RequestMapping(value = "/modify", method=RequestMethod.POST)
	public String modify(ResumeVO resume,@RequestParam("resume_no") Long resume_no, RedirectAttributes rttr) {
		log.info("resume_no" + resume_no);
		if(service.updateResume(resume)) {
			rttr.addAttribute("mem_no", resume.getMem_no());
		}
		
		return "redirect:/resume/list";
	}
	
	@PostMapping("/delete")
	public String remove(@RequestParam Long resume_no, RedirectAttributes rttr) {
		
		List<ResumeAttachVO> attachList = service.getAttachList(resume_no);
		
		ResumeVO resume = service.get(resume_no);
		if(service.delete(resume_no)) {
			deleteFiles(attachList);
			rttr.addAttribute("mem_no",resume.getMem_no());
		}
		return "redirect:/resume/list";
	}
	
	private void deleteFiles(List<ResumeAttachVO> attachList) {
	    
	    if(attachList == null || attachList.size() == 0) {
	      return;
	    }
	    
	    log.info("delete attach files...................");
	    log.info(attachList);
	    
	    attachList.forEach(attach -> {
	      try {        
	        Path file  = Paths.get("C:\\upload\\"+attach.getUploadPath()+"\\" + attach.getUuid()+"_"+ attach.getFileName());
	        
	        Files.deleteIfExists(file);
	        
	        if(Files.probeContentType(file).startsWith("image")) {
	        
	          Path thumbNail = Paths.get("C:\\upload\\"+attach.getUploadPath()+"\\s_" + attach.getUuid()+"_"+ attach.getFileName());
	          
	          Files.delete(thumbNail);
	        }
	
	      }catch(Exception e) {
	        log.error("delete file error" + e.getMessage());
	      }
	    });
	  }
	
	@GetMapping(value = "/getAttachList",
		    produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@ResponseBody
	public ResponseEntity<List<ResumeAttachVO>> getAttachList(Long resume_no) {


	return new ResponseEntity<>(service.getAttachList(resume_no), HttpStatus.OK);

}


}
