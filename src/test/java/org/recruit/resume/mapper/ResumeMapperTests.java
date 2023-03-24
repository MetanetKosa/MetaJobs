package org.recruit.resume.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.recruit.resume.domain.ResumeVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class ResumeMapperTests {
	
	
	@Autowired
	private ResumeMapper mapper;
	
//	@Test
//	public void insert() {
//		ResumeVO vo = new ResumeVO();
//		vo.setResume_title("�̷¼�1");
//		vo.setResume_technology("java,spring");
//		vo.setResume_cv("�ڱ�Ұ���1");
//		vo.setResume_career("����");
//		vo.setResume_gender("��");
//		vo.setMem_no(4L);
//	mapper.resumeInsert(vo);
//	
//	log.info(vo);
//	}
	
	@Test
	public void update() {
		ResumeVO vo = mapper.get(13L);
		
		vo.setResume_title("ju�� �̷¼� �Դϴ�.");
		vo.setResume_image("image");
		vo.setResume_technology(vo.getResume_technology());
		vo.setResume_cv("�ڱ�Ұ��� �����Դϴ�.");
		vo.setResume_career("����");
		vo.setResume_gender("��");
		vo.setMem_no(vo.getMem_no());

		
		log.info(mapper.resumeUpdate(vo));
		
		
	}
	
//	@Test
//	public void get() {
//		ResumeVO vo = mapper.get(13L);
//		
//		log.info(vo);
//		
//		
//	}

}
