package org.recruit.resume.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.recruit.resume.domain.ResumeVO;
import org.recruit.resume.mapper.ResumeMapperTests;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class ResumeServiceTests {
	
	@Autowired
	private ResumeService service;
	
//	@Test
//	public void insert() {
//		
//		ResumeVO resume = new ResumeVO();
//		resume.setResume_title("seyun의 이력서 입니다");
//		resume.setResume_career("경력");
//		resume.setResume_cv("seyun의 자기소개서 입니다.");
//		resume.setMem_no(3L);
//		resume.setResume_gender("여");
//		resume.setResume_image("이미지");
//		resume.setResume_technology("파이썬");
//		
//		service.insertResume(resume);
//		
//		log.info(resume.getResume_no());
//	}

	
//	@Test
//	public void update() {
//		
//		ResumeVO resume = service.get(18L);
//		
//		if(resume == null) {
//			return ;
//		}
//		
//		
//		resume.setResume_title("seyun의 이력서 수정");
//		resume.setResume_career(resume.getResume_career());
//		resume.setResume_cv("seyun의 자기소개서 수정.");
//		resume.setMem_no(resume.getResume_no());
//		resume.setResume_gender(resume.getResume_gender());
//		resume.setResume_image("이미지");
//		resume.setResume_technology("파이썬");
//		
//		log.info(service.updateResume(resume));
//	}
	
//	@Test
//	public void get() {
//		
//		
//		log.info(service.get(18L));
//	}
	
//	@Test
//	public void delete() {
//		
//		log.info(service.delete(17L));
//	}
	
	
	@Test
	public void getList() {
		
		service.getResumeList(2L).forEach(resume -> log.info(resume));
	}
}
