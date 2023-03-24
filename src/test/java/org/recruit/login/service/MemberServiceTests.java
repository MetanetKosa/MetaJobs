package org.recruit.login.service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.recruit.login.domain.MemberVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class MemberServiceTests {

	@Autowired
	private MemberService service;
	
//	@Test
//	public void testInsert() throws Exception {
//		//글이 새롭게 입력되는지, 생성된 게시물번호 출력과 함께 단위테스트
//		String birthFormat = "19950505";
//		SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMdd");
//		Date birth = formatter.parse(birthFormat);
//		
//		MemberVO member = new MemberVO();
//		member.setId("admin25");
//		member.setPw("pw25");
//		member.setName("관리자n");
//		member.setBirth(birth);
//		member.setPhone("010-7683-3578");
//		member.setAddress("서울시 강남구 18");
//		member.setEmail("sdafw90@gmail.com");
//		
//		service.insert(member);
//		
//		log.info("생성된 회원 아이디: " +member.getId());
//	}
}
