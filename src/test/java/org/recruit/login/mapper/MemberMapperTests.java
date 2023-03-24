package org.recruit.login.mapper;


import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;
import org.recruit.login.domain.MemberVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringRunner.class)
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
@Log4j
public class MemberMapperTests {
	@Autowired
	private MemberMapper mapper;
	

	
//	@Test
//	public void testInsertSelectKey() {
//		//MemberVO 객체를 임의로 생성하고 값 넣어 mno값이 잘 들어가는지 단위테스트
//		MemberVO member = new MemberVO();
//		member.setId("sdfsadg90");
//		member.setPw("156783");
//		member.setName("user00");
//		member.setAddress("서울시 노원구 상계로 78");
//		member.setPhone("010-7868-4838");
//		member.setEmail("asdff@gmail.com");
//		
//		mapper.insertSelectKey(member);
//		
//		log.info(member);
//	}
	
//	@Test
//	public void testReadList() {
//		//Mapper에서 list객체 가져오고 전체목록이 잘 출력되는지 단위테스트
//		List<MemberVO> list = mapper.getList();
//		list.forEach(member -> log.info(member));
//	}


//  @Test
//  public void testRead() {
//	//mno로 글이 잘 출력되는지 단위테스트
//    MemberVO vo = mapper.read(8L);
//    log.info(vo);
//  }

//  @Test
//  public void testReadPw() {
//	//mno로 글이 잘 출력되는지 단위테스트
//    String pw = mapper.readPw("member01");
//    log.info(pw);
//  }
	
//	@Test
//	public void testDelete() {
//		//5번 글번호 글이 잘 삭제되는지 단위테스트
//		log.info("DELETE count: " +mapper.delete(5L));
//		//count에는 delete 된 row 개수 
//	}
//	
//	@Test
//	public void testUpdate() {
//		//1번 글번호 글이 잘 수정되는지 단위테스트
//		MemberVO member = mapper.read(8L);
//		
//		member.setBirth(member.getBirth());
//		member.setPhone("010-7683-3578");
//		member.setAddress("서울시 강남구 18");
//		member.setEmail("BigPotato@gmail.com");
//		
//		
//		log.info("UPDATE count: " +mapper.update(member));
//	}
	
//  @Test
//  public void testRead() {
//	//mno로 글이 잘 출력되는지 단위테스트
//	  LoginVO login = new LoginVO();
//	  login.setId("member11");
//	  login.setPw("pw11");
//	  MemberVO vo = mapper.read2(login);
//	  log.info(vo);
//  }	

//	  @Test
//	  public void testJoin() {
//		  //회원가입
//		  MemberVO member = new MemberVO();
//		  member.setMem_id("member12");
//		  member.setMem_pw("pw12");
//		  member.setMem_name("김영희");
//		  member.setMem_birth("1985-12-27");
//		  member.setMem_phone("01059873498");
//		  member.setMem_address("서울시 강남구 신사동");
//		  member.setMem_email("yg85@gmail.com");
//		  
//		  mapper.insertMember(member);
//		  log.info(member);
//	  }	
	
//	  @Test
//	  public void testLogin() {
//		  //맞는 id, pw 입력시 member DB에서 잘 select
//		  MemberVO member = new MemberVO();
//		  member.setMem_id("member12");
//		  member.setMem_pw("pw11");
//		  
//		  log.info(mapper.loginMember(member));
//	  }	
}


