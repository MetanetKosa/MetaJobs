package org.recruit.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
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
	
	@Test
	public void postList() {
		List<PostVO> list = mapper.postList();
		list.forEach(post -> log.info(post));
	}
	
//	@Test
//	public void postInsert() {
//		PostVO post = new PostVO();
//		post.setPost_title("메타넷플랫폼");
//		post.setPost_job("앱개발");
//		post.setPost_career("경력");
//		post.setPost_emptype("계약직");
//		post.setPost_add("서울종로구");
//		post.setPost_sdate("2023/02/03");
//		post.setPost_fdate("2023/03/15");
//		post.setPost_sal("45000000");
//		post.setPost_edu("초대졸");
//		post.setPost_age("30세");
//		post.setPost_how("홈페이지지원");
//		post.setPost_url("http://www.metanetdigital.co.kr/");
//		post.setCom_cno(2);
//		post.setMem_no(1);
//	}
}
