package org.recruit.login.mapper;


import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;
import org.recruit.login.domain.CompanyVO;

import lombok.extern.log4j.Log4j;

@RunWith(SpringRunner.class)
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
@Log4j
public class CompanyMapperTests {
	@Autowired
	private CompanyMapper mapper;
	
//	@Test
//	public void testInsert() {
//		//MemberVO 객체를 임의로 생성하고 값 넣어 insert가 잘 되는지 단위테스트
//		
//		CompanyVO company = new CompanyVO();
//		company.setCno("1592");
//		company.setId("company25");
//		company.setPw("pw25");
//		company.setName("(주)코사그룹");
//		company.setPhone("02-4817-6485");
//		company.setAddress("서울시 강남구 18");
//		company.setType("대기업");
//		company.setManager("박감자");
//		
//		mapper.insert(company);
//		
//		log.info(company);
//	}
//	
	
//	@Test
//	public void testReadList() {
//		//Mapper에서 list객체 가져오고 전체목록이 잘 출력되는지 단위테스트
//		List<CompanyVO> list = mapper.getList();
//		list.forEach(company -> log.info(company));
//	}


//  @Test
//  public void testRead() {
//	//mno로 글이 잘 출력되는지 단위테스트
//    CompanyVO vo = mapper.read(8L);
//    log.info(vo);
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
//		CompanyVO company = mapper.read("1592");
//		
//		company.setPhone("010-7683-3578");
//		company.setAddress("서울시 강남구 18");
//		company.setType("중견기업");
//		company.setManager("왕감자");
//		
//		
//		log.info("UPDATE count: " +mapper.update(company));
//	}
  
}


