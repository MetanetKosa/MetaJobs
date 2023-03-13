package org.recruit.resume.service;

import java.util.List;

import org.recruit.resume.domain.ResumeVO;
import org.recruit.resume.mapper.ResumeAttachMapper;
import org.recruit.resume.mapper.ResumeMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.AllArgsConstructor;
import lombok.Setter;

@Service
@AllArgsConstructor
public class ResumeServiceImpl implements ResumeService {
	
	
	private ResumeMapper mapper;

	
	private ResumeAttachMapper resumeattch;

	
	@Transactional
	@Override
	public void insertResume(ResumeVO resume) {
		mapper.insertSelectKey(resume);
		if(resume.getAttachList() == null || resume.getAttachList().size() <= 0) {
			return ;
		}
		resume.getAttachList().forEach(attach -> {
			attach.setResume_no(resume.getResume_no());
			resumeattch.insert(attach);
		});

	}

	@Override
	public ResumeVO get(Long resume_no) {
		return mapper.get(resume_no);
	}

	@Override
	public boolean updateResume(ResumeVO resume) {
		return mapper.resumeUpdate(resume) == 1;
	}

	@Override
	public boolean delete(Long resume_no) {
		return mapper.resumeDelete(resume_no) == 1;
	}

	@Override
	public List<ResumeVO> getResumeList(Long resume_no) {
		return mapper.getList(resume_no);
	}

}
