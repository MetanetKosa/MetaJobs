package org.recruit.post.mapper;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.recruit.post.domain.Criteria;
import org.recruit.post.domain.PostVO;
import org.recruit.post.mapper.PostMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class PostMapperTest {
	
	@Autowired
	PostMapper mapper;
	
//	@Test
//	public void postList() {
//		List<PostVO> list = mapper.postList();
//		list.forEach(post -> log.info(post));
//	}
//	
//	@Test
//	public void postInsert() throws ParseException {
//		String sdate = "2023-05-05";
//		String fdate = "2023-06-06";
//		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
//		Date sdata = formatter.parse(sdate);
//		Date fdata = formatter.parse(fdate);
//
//		PostVO post = new PostVO();
//		post.setPostTitle("메타넷글로채용");
//		post.setPostJob("IOS개발");
//		post.setPostCareer("경력");
//		post.setPostEmptype("정규직");
//		post.setPostAdd("서울상암동");
//		post.setPostSdate(sdata);
//		post.setPostFdate(fdata);
//		post.setPostSal("75000000");
//		post.setPostEdu("초대졸");
//		post.setPostAge("35세");
//		post.setPostHow("홈페이지지원");
//		post.setPostUrl("http://www.metanetdigital.co.kr/");
//		post.setComCno(1237);
//		post.setMemNo(1);
//		
//		int result = mapper.postInsert(post);
//		log.info("postInsert 값 확인: " + result);
//	}
	// @Test
	// public void postUpdate() throws ParseException {
	// 	String sdate = "2023-05-05";
	// 	String fdate = "2023-06-06";
	// 	SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
	// 	Date sdata = formatter.parse(sdate);
	// 	Date fdata = formatter.parse(fdate);

	// 	PostVO post = new PostVO();
	// 	post.setPostTitle("메타넷글로채용");
	// 	post.setPostJob("IOS개발");
	// 	post.setPostCareer("신입");
	// 	post.setPostEmptype("정규직");
	// 	post.setPostAdd("서울상암동");
	// 	post.setPostSdate(sdata);
	// 	post.setPostFdate(fdata);
	// 	post.setPostSal("75000000");
	// 	post.setPostEdu("초대졸");
	// 	post.setPostAge("35세");
	// 	post.setPostHow("홈페이지지원");
	// 	post.setPostUrl("http://www.metanetdigital.co.kr/");
	// 	post.setPostNo(2L);
	// 	post.setComCno(1237L);
	// 	post.setMemNo(2L);
		
	// 	int result = mapper.postUpdate(post);
	// 	log.info(result);
	// }
//	
//	@Test
//	public void postDelete() {
//		int result = mapper.postDelete(1L);
//		log.info("post 삭제 결과 : " + result);
//	}
//		
//	@Test
//	public void postGet() {
//		PostVO post = mapper.getPost(4L);
//		log.info("vo결과" + post);
//		
//	}
	@Test
	public void getListWithPaging() {
		Criteria cri = new Criteria();
		List<PostVO> list = mapper.getListWithPaging(cri);
		list.forEach(post -> log.info(post));
	}
	
}
