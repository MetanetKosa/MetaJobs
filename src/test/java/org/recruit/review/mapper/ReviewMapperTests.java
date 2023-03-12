package org.recruit.review.mapper;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.recruit.review.domain.ReviewVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class ReviewMapperTests {
	
	@Autowired
	ReviewMapper mapper;
	
//	@Test
//	public void testGetList() {
//		mapper.getList().forEach(review -> log.info(review));
//	}
	
	// insert Test
	@Test
	public void testReviewInsert() throws ParseException {
		ReviewVO review = new ReviewVO();

		// String -> Date 변환
		
		String dateStr = "2022-11-11";
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		Date date = formatter.parse(dateStr);
		 
 
//        System.out.println(date);
		review.setCno(1L);
		review.setReJob("새로운내용");
		review.setReDate(date);
		review.setPNum("집단면접");
		review.setReContent("새로운 면접 후기 내용");
		review.setReResult("합격");
		//review.setReWdate(date); // default = sysdate
		review.setMno(2L);
		
		mapper.reviewInsert(review);
		log.info(review);
	}
	
//	@Test
//	public void getTest() {
//		log.info(mapper.get(1L));
//	}
}
