package org.recruit.login.controller;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.recruit.login.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration	
@ContextConfiguration({	//설정파일을 읽어와서 스프링 컨테이너 구현
	"file:src/main/webapp/WEB-INF/spring/root-context.xml",
	"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml"
})
@Log4j
public class MemberControllerTests {

	//spring container / context
	@Autowired
	private WebApplicationContext ctx;	//두 개 xml설정파일이 스프링 컨테이너 객체에 들어감
	
	private MockMvc mockMvc;	//톰캣 대용 서버
	
	private MemberService service;
	
	@Before
	//스프링 어노테이션 하기 전에 호출
	//목 객체(서버) 얻어오기
	public void setUp() {
		this.mockMvc = MockMvcBuilders.webAppContextSetup(ctx).build();	
	}
	
//	@Test
	//목록 리스트를 잘 출력하는지 단위테스트
//	public void testList() throws Exception{
//		log.info(mockMvc.perform(MockMvcRequestBuilders.get("/board/list"))
//				 .andReturn()
//				 .getModelAndView()
//				 .getModelMap()
//			);
//	}
	
	@Test
	//새글을 잘 등록하는지 단위테스트
	public void testJoin() throws Exception {
		String resultPage = mockMvc.perform(MockMvcRequestBuilders.post("/member/insert")
												.param("id", "member12")
												.param("pw", "pw12")
												.param("name", "정소희")
												.param("birth", "1998-12-21")
												.param("address", "노원구 중계로")
												.param("phone", "01026852139")
												.param("email", "jsohee98@naver.com")
											).andReturn().getModelAndView().getViewName();
		
		log.info(resultPage);
	}
}
