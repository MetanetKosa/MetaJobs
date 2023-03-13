package org.recruit.resume.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

import java.nio.file.Files;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

//import javax.annotation.Resource;

import org.recruit.resume.domain.ResumeAttachVO;
import org.springframework.core.io.FileSystemResource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import lombok.extern.log4j.Log4j;
import net.coobird.thumbnailator.Thumbnailator;

@Controller
@Log4j
public class UploadController {
	
	//���� ��¥�� ��θ� ���ڿ��� ����
	//���� ��η� �����ڿ� ��ȯ
	private String getFolder() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		
		Date date = new Date();
		
		String str = sdf.format(date);
		
		return str.replace("-", File.separator);
	}
	
	//�̹��� ������ �Ǵ�
	private boolean checkImageType(File file) {
		
		try {
			String contentType = Files.probeContentType(file.toPath());
			
			return contentType.startsWith("image");
		} catch(IOException e) {
			e.printStackTrace();
		}
		
		return false;
	}
	
	
	@GetMapping("/uploadAjax")
	public void uploadForm() {
		
		log.info("upload ajax");
	}
	
	@GetMapping("display")
	@ResponseBody
	public ResponseEntity<byte[]> getFile(String fileName){
		
		log.info(fileName);
		
		File file = new File("c:\\upload\\"+ fileName);
		
		log.info(file);
		
		ResponseEntity<byte[]> result = null;
		
		try {
			HttpHeaders header = new HttpHeaders();
			
			header.add("Content-Type", Files.probeContentType(file.toPath()));
			result = new ResponseEntity<>(FileCopyUtils.copyToByteArray(file), header, HttpStatus.OK);
		}catch(IOException e) {
			e.printStackTrace();
		}
		return result;
	}
	
//	@GetMapping(value="/download", produces=MediaType.APPLICATION_OCTET_STREAM_VALUE)
//	@ResponseBody
//	public ResponseEntity<Resource> downloadFile(String fileName){
//		
//		log.info(fileName);
//		
//		FileSystemResource resource = new FileSystemResource("C:\\upload\\" + fileName);
//		
//		
//		return null;
//	}

	
	
	@PostMapping(value="/uploadAjaxAction", produces=MediaType.APPLICATION_JSON_UTF8_VALUE)
	@ResponseBody
	 public ResponseEntity<List<ResumeAttachVO>> uploadAjaxPost(MultipartFile[] uploadFile) {
		
		List<ResumeAttachVO> list = new ArrayList<>();
		String uploadFolder = "C:\\upload";
		
		String uploadFolderPath = getFolder();
	
		File uploadPath = new File(uploadFolder, uploadFolderPath);
	 
		 //�ش� ��ΰ� �ִ��� �˻��ϰ� ������ ����
		 //yyyy/mm/dd
		 if(uploadPath.exists() == false) {
			 uploadPath.mkdirs();
		 }

	
		 for (MultipartFile multipartFile : uploadFile) {
	
			 ResumeAttachVO vo = new ResumeAttachVO();
			 
			 String uploadFileName = multipartFile.getOriginalFilename();
			 
			 uploadFileName = uploadFileName.substring(uploadFileName.lastIndexOf("\\") + 1);
	
			 log.info("only file name" +uploadFileName);
			 vo.setFileName(uploadFileName);
			 
			 //�ߺ������� ���� uuid ����
			 UUID uuid = UUID.randomUUID();
	
			 uploadFileName = uuid.toString() +"_" + uploadFileName;
	
	 
	 
	 
			 //���� ����
			 try {
				 File saveFile = new File(uploadPath, uploadFileName);
				 multipartFile.transferTo(saveFile);
				 
				 vo.setUuid(uuid.toString());
				 vo.setUploadPath(uploadFolderPath);
				 
				 
				 //check  image type file
				 if(checkImageType(saveFile)) {
					 
					 vo.setFileType(true);
					 
					 FileOutputStream thumbnail = new FileOutputStream(new File(uploadPath, "s_" + uploadFileName));
					 
					 Thumbnailator.createThumbnail(multipartFile.getInputStream(), thumbnail, 100, 100);
					 
					 thumbnail.close();
				 }
				 list.add(vo);
				 
			 }catch(Exception e) {
				 e.printStackTrace();
			 }
			}
		 return new ResponseEntity<>(list,HttpStatus.OK);
	}
}
