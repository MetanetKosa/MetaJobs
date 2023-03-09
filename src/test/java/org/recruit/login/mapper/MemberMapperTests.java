package org.recruit.login.mapper;


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
//	public void testInsert() {
//		//MemberVO 객체를 임의로 생성하고 값 넣어 insert가 잘 되는지 단위테스트
//		MemberVO member = new MemberVO();
//		member.setMem_id("dkssudg90");
//		member.setMem_pw("asguhsl646");
//		member.setMem_name("usernn");
//		member.setMem_birth("19991111");
//		member.setMem_addr("서울시 강남구 18");
//		member.setMem_phone("010-7683-3578");
//		member.setMem_email("sdafw90@gmail.com");
//		
//		mapper.insert(member);
//		
//		log.info(member);
//	}
	
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
//	
//	@Test
//	public void testRead() {
//		//1번 글번호 글이 잘 출력되는지 단위테스트
//		MemberVO member = mapper.read(1L);
//		log.info(member);
//	}
	
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
//		MemberVO member = mapper.read(2L);
//		
//		//member.setMem_no(2L);
//		
//		member.setMem_id(member.getMem_id());
//		member.setMem_pw(member.getMem_pw());
//		member.setMem_name("왕감자");
//		member.setMem_birth(member.getMem_birth());
//		member.setMem_addr(member.getMem_addr());
//		member.setMem_phone(member.getMem_phone());
//		member.setMem_email("BigPotato@gmail.com");
//		
//		
//		log.info("UPDATE count: " +mapper.update(member));
//	}
	
	
//	@Test
//	public void testPaging() {
//		//Paging처리가 잘 되는지 단위테스트
//		Criteria cri = new Criteria();
//		
//		List<MemberVO> list = mapper.getListWithPaging(cri);
//		
//		list.forEach(member -> log.info(member));
//	}
	
//	@Test
//	public void testSearch() {
//		//Search처리가 잘 되는지 단위테스트
//		Criteria cri = new Criteria();
//		
//		//검색정보를 전달 (TC / 새로 검색)
//		cri.setType("TC");
//		cri.setKeyword("새로");
//		
//		List<MemberVO> list = mapper.getListWithPaging(cri);
//		
//		list.forEach(member -> log.info(member));
//	}
	
//  @Test
//  public void testRead() {
//    
//    MemberVO vo = mapper.read(2L);
//    
//    log.info(vo);
//    
//    //vo.getAuthList().forEach(authVO -> log.info(authVO));
//    
//  }
  
}


