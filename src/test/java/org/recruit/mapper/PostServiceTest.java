package org.recruit.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.recruit.post.domain.PostVO;
import org.recruit.post.service.PostService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class PostServiceTest {
	
	@Autowired
	private PostService service;
	
	@Test
	public void postlistTest() {
		List<PostVO> postlist = service.postList();
		postlist.forEach(post -> log.info(post));
	}

}
