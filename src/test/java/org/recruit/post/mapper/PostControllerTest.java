package org.recruit.post.mapper;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mock.web.MockRequestDispatcher;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.MockMvcBuilder;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml",
	"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml" })
@Log4j
public class PostControllerTest {
	
	@Autowired
	private WebApplicationContext ctx;
	
	private MockMvc mvc;
	
	@Before
	public void setup() {
		this.mvc = MockMvcBuilders.webAppContextSetup(ctx).build();
	}
//	
//	@Test
//	public void postList() throws Exception {
//		log.info(mvc.perform(MockMvcRequestBuilders.get("/post/postList"))
//				.andReturn()
//				.getModelAndView()
//				.getModelMap());
//	}
//	
//	
//	@Test
//	public void postUpdate() throws Exception{
//		String result = mvc
//						.perform(MockMvcRequestBuilders
//						.post("/post/postUpdate")
//						.param("postTitle", "메타넷글로채용")
//						.param("postJob", "웹개발")
//						.param("postCareer", "경력")
//						.param("postEmptype", "정규직")
//						.param("postAdd", "서울 상암동")
//						.param("postSdate", "sdata")
//						.param("postFdate", "fdata")
//						.param("postSal", "75000000")
//						.param("postEdu", "초대졸")
//						.param("postAge", "32세")
//						.param("postHow", "일반지원")
//						.param("postUrl", "http://www.metanetdigital.co.kr/")
//						.param("postNo", "8"))
//				.andReturn()
//				.getModelAndView()
//				.getViewName();
//		log.info(result);
//	}
//	
//	@Test
//	public void postDelete() throws Exception {
//		String result = mvc
//				.perform(MockMvcRequestBuilders.post("/post/delete").param("postNo","4"))
//				.andReturn()
//				.getModelAndView()
//				.getViewName();
//		
//		log.info(result);
//	}
//	
//	@Test
//	public void getPost() throws Exception{
//		String result = mvc
//				.perform(MockMvcRequestBuilders.post("/post/get").param("postNo", "4L"))
//				.andReturn()
//				.getModelAndView()
//				.getViewName();
//		
//		log.info(result);
//	}
	
}
