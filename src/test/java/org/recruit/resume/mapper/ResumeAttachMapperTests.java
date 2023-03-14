package org.recruit.resume.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.recruit.resume.domain.ResumeAttachVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class ResumeAttachMapperTests {


	@Autowired
	private ResumeAttachMapper mapper;

	@Test
	public void insert() {
		ResumeAttachVO vo = new ResumeAttachVO();
		vo.setFileName("ㄴㅇㄹ.txt");
		vo.setFileType(false);
		vo.setUploadPath("2023\\03\\14");
		vo.setUuid("13ec30b9-0619-4697-a9ce-178b4ea08e9c");
		vo.setResume_no(55L);

	mapper.insert(vo);
	log.info(vo);
	
	
	}



}
