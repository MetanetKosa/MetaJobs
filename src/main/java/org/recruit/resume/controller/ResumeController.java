package org.recruit.resume.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.tomcat.util.http.fileupload.FileUtils;
import org.recruit.login.domain.MemberVO;
import org.recruit.resume.domain.ResumeAttachVO;
import org.recruit.resume.domain.ResumeVO;
import org.recruit.resume.service.ResumeService;
import org.springframework.core.io.FileSystemResource;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/resume/*")
@AllArgsConstructor
public class ResumeController {
	
	private ResumeService service;
	
	@GetMapping("/resumeList")
	public void list(@RequestParam Long mem_no, Model model) {
		model.addAttribute("list", service.getResumeList(mem_no));
	}
	

	@PostMapping("/resumeInsert")
	public String insert(ResumeVO resume, RedirectAttributes rttr, HttpServletRequest request,HttpSession session, Model model) {
		log.info("이미지 등록 처리");
		MemberVO member = (MemberVO)session.getAttribute("member");
		if(member != null) {
			resume.setMem_no(member.getMem_no());
			model.addAttribute("member",member);
			service.insertResume(resume);
		}
		
		if(resume.getAttachList() != null) {
			resume.getAttachList().forEach(attach -> log.info(attach));
		}
		//이미지 파일명을 찾아서 넣어 주는 것이 필요하다 - 중복이 되지 않는다.
		//resume.setResume_image(FileUtil("/upload/image", resume.getImageFile(), request));
		
		
		rttr.addFlashAttribute("result",resume.getResume_no());
		rttr.addAttribute("mem_no", resume.getMem_no());
		return "redirect:/resume/resumeList";
	}
	
	@GetMapping("/resumeInsert")
	public void insert() {
		
	}
	@GetMapping({"/resumeGet","/resumeModify"})
	public void get(@RequestParam Long resume_no, Model model,HttpSession session) {
		model.addAttribute("resume", service.get(resume_no));
		model.addAttribute("member",session.getAttribute("member"));
	}
	
	
	@RequestMapping(value = "/resumeModify", method=RequestMethod.POST)
	public String modify(ResumeVO resume,@RequestParam("resume_no") Long resume_no, RedirectAttributes rttr) {
		log.info("resume_no" + resume_no);
		if(service.updateResume(resume)) {
			rttr.addAttribute("mem_no", resume.getMem_no());
		}
		
		return "redirect:/resume/resumeList";
	}
	
	@PostMapping("/resumeDelete")
	public String remove(@RequestParam Long resume_no, RedirectAttributes rttr) {
		
		List<ResumeAttachVO> attachList = service.getAttachList(resume_no);
		
		ResumeVO resume = service.get(resume_no);
		if(service.delete(resume_no)) {
			deleteFiles(attachList);
			rttr.addAttribute("mem_no",resume.getMem_no());
		}
		return "redirect:/resume/resumeList";
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
	@GetMapping(value = "/download", produces = MediaType.APPLICATION_OCTET_STREAM_VALUE)
	@ResponseBody
	public ResponseEntity<Resource> downloadFile(@RequestHeader("User-Agent") String userAgent, String fileName) {

		Resource resource = new FileSystemResource("c:\\upload\\" + fileName);

		if (resource.exists() == false) {
			return new ResponseEntity<>(HttpStatus.NOT_FOUND);
		}

		String resourceName = resource.getFilename();

		// remove UUID
		String resourceOriginalName = resourceName.substring(resourceName.indexOf("_") + 1);

		HttpHeaders headers = new HttpHeaders();
		try {

			boolean checkIE = (userAgent.indexOf("MSIE") > -1 || userAgent.indexOf("Trident") > -1);

			String downloadName = null;

			if (checkIE) {
				downloadName = URLEncoder.encode(resourceOriginalName, "UTF8").replaceAll("\\+", " ");
			} else {
				downloadName = new String(resourceOriginalName.getBytes("UTF-8"), "ISO-8859-1");
			}

			headers.add("Content-Disposition", "attachment; filename=" + downloadName);

		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}

		return new ResponseEntity<Resource>(resource, headers, HttpStatus.OK);
	}
	
}
