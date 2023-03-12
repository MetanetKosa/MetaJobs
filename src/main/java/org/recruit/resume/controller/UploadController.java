package org.recruit.resume.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class UploadController {
	
	//오늘 날짜의 경로를 문자열로 생성
	//폴더 경로로 수정뒤에 반환
	private String getFolder() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		
		Date date = new Date();
		
		String str = sdf.format(date);
		
		return str.replace("-", File.separator);
	}
	
	
	@GetMapping("/uploadAjax")
	public void uploadForm() {
		
		log.info("upload ajax");
	}
	
	@PostMapping("/uploadAjaxAction")
	 public void uploadFormPost(MultipartFile[] uploadFile) {
		
	 String uploadFolder = "C:\\upload";
		
	 File uploadPath = new File(uploadFolder, getFolder());
	 log.info(uploadPath);
	 
	 //해당 경로가 있는지 검사하고 폴더를 생성
	 if(uploadPath.exists() == false) {
		 uploadPath.mkdirs();
	 }
	
	 for (MultipartFile multipartFile : uploadFile) {
	
	 log.info("-------------------------------------");
	 log.info("Upload File Name: " +multipartFile.getOriginalFilename());
	 log.info("Upload File Size: " +multipartFile.getSize());
	 
	 String uploadFileName = multipartFile.getOriginalFilename();
	 
	 uploadFileName = uploadFileName.substring(uploadFileName.lastIndexOf("\\") + 1);
	 log.info(uploadFileName);
	 //파일 저장
	 File saveFile = new File(uploadPath, uploadFileName);
	
	 try {
		 multipartFile.transferTo(saveFile);
	 }catch(Exception e) {
		 log.error(e.getMessage());
	 }
	}
	}
}
