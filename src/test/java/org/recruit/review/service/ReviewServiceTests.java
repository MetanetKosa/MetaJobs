package org.recruit.review.service;

import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.log;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.recruit.review.domain.Criteria;
import org.recruit.review.domain.ReviewVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class ReviewServiceTests {
	
	@Autowired
	private ReviewService service;
	
//	@Test
//	public void testExist() {
//		log.info(service);
//	}
	
//	@Test
//	public void getReviewList(){
//		List<ReviewVO> reviewList = service.getReviewList();
//		reviewList.forEach(review -> log.info(review));
//	}
	
	@Test
	public void getReviewList(){
		List<ReviewVO> reviewList = service.getReviewList(new Criteria(2, 5));
		reviewList.forEach(review -> log.info(review));
	}
	
//	@Test
//	public void insertReview() throws ParseException {
//		// String -> Date ��ȯ
//		
//		String dateStr = "2022-11-11";
//		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
//		Date date = formatter.parse(dateStr);
//		 
//		ReviewVO review = new ReviewVO();
////        System.out.println(date);
//		review.setCno(2L);
//		review.setReJob("���ο�� �����׽�Ʈ");
//		review.setReDate(date);
//		review.setPNum(3);
//		review.setReContent("���ο� ���� �ı� ����");
//		review.setReResult("�հ�");
//		//review.setReWdate(date); // default = sysdate
//		review.setMno(2L);
//		
//		service.insertReview(review);
//		log.info(review);
//		if(service.insertReview(review))
//			log.info("����!!!");
//	}
	
//	@Test
//	public void getReviewTest() {
//		ReviewVO review = service.getReview(3);
//		log.info(review);
//	}
}
