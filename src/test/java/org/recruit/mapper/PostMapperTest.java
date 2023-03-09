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
//		post.setPost_title("��Ÿ���÷���");
//		post.setPost_job("�۰���");
//		post.setPost_career("���");
//		post.setPost_emptype("�����");
//		post.setPost_add("�������α�");
//		post.setPost_sdate("2023/02/03");
//		post.setPost_fdate("2023/03/15");
//		post.setPost_sal("45000000");
//		post.setPost_edu("�ʴ���");
//		post.setPost_age("30��");
//		post.setPost_how("Ȩ����������");
//		post.setPost_url("http://www.metanetdigital.co.kr/");
//		post.setCom_cno(2);
//		post.setMem_no(1);
//	}
}
