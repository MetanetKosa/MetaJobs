package org.recruit.resume.service;

import java.util.List;

import org.recruit.resume.domain.ResumeVO;
import org.recruit.resume.mapper.ResumeMapper;
import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;


@Service
@AllArgsConstructor
public class ResumeServiceImpl implements ResumeService {
	
	private ResumeMapper mapper;

	@Override
	public void insertResume(ResumeVO resume) {
		mapper.resumeInsert(resume);

	}

	@Override
	public ResumeVO get(Long resume_no) {
		return mapper.get(14L);
	}

	@Override
	public boolean updateResume(ResumeVO resume) {
		
		return mapper.resumeUpdate(resume)==1;
	}

	@Override
	public boolean delete(Long resume_no) {
		
		return mapper.resumeDelete(13L) == 1;
	}

	@Override
	public List<ResumeVO> getResumeList() {
		
		return mapper.getList();
	}

}
