package org.recruit.resume.controller;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.recruit.resume.mapper.ResumeMapperTests;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml", "file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml" })
@Log4j
public class ResumeControllerTests {
	
	@Autowired
	private WebApplicationContext ctx;
	
	private MockMvc mvc;
	
	@Before
	public void setup() {
		this.mvc = MockMvcBuilders.webAppContextSetup(ctx).build();
	}
	
//	@Test
//	public void testList() throws Exception {
//		log.info(mvc.perform(MockMvcRequestBuilders.get("/resume/list"))
//				.andReturn()
//				.getModelAndView()
//				.getModelMap());
//	}
	
//	@Test
//	public void testInsert() throws Exception {
//		
//		log.info(mvc.perform(MockMvcRequestBuilders.post("/resume/insert")
//				.param("resume_title", "이력서 제목1")
//				.param("resume_cv", "자기소개서 입니다1")
//				.param("resume_gender", "남")
//				.param("resume_image", "image1")
//				.param("resume_technology", "스프링")
//				.param("resume_career", "경력")
//				.param("mem_no","6")
//				).andReturn().getModelAndView().getViewName());
//		
//	}
	
	@Test
	public void testUpdate() throws Exception {
		
		log.info(mvc.perform(MockMvcRequestBuilders.patch("/resume/modify")
				.param("resume_no", "14")
				.param("resume_title", "이력서 제목1")
				.param("resume_cv", "자기소개서 입니다1")
				.param("resume_gender", "여")
				.param("resume_image", "image2")
				.param("resume_technology", "스프링,java,c")
				.param("resume_career", "경력")
				.param("mem_no","6")
				).andReturn().getModelAndView().getViewName());
		
	}
	
	
//	@Test
//	public void testDelete() throws Exception {
//		
//		log.info(mvc.perform(MockMvcRequestBuilders.delete("/resume/delete")
//				.param("resume_no", "18")
//				).andReturn().getModelAndView().getViewName());
//		
//	}
	
	
//	@Test
//	public void testGet() throws Exception {
//		
//		log.info(mvc.perform(MockMvcRequestBuilders.get("/resume/get")
//				.param("resume_no", "13")
//				).andReturn().getModelAndView().getModelMap());
//		
//	}

}
