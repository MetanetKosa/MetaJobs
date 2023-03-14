package org.recruit.resume.service;

import java.util.List;

import org.recruit.resume.domain.ResumeAttachVO;
import org.recruit.resume.domain.ResumeVO;
import org.recruit.resume.mapper.ResumeAttachMapper;
import org.recruit.resume.mapper.ResumeMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import lombok.Setter;

@Service
public class ResumeServiceImpl implements ResumeService {
	
	@Setter(onMethod_ = @Autowired)
	private ResumeMapper mapper;

	@Setter(onMethod_ = @Autowired)
	private ResumeAttachMapper attachMapper;

	
	@Transactional
	@Override
	public void insertResume(ResumeVO resume) {
		mapper.insertSelectKey(resume);
		if(resume.getAttachList() == null || resume.getAttachList().size() <= 0) {
			return ;
		}
		resume.getAttachList().forEach(attach -> {
			attach.setResume_no(resume.getResume_no());
			attachMapper.insert(attach);
		});

	}

	@Override
	public ResumeVO get(Long resume_no) {
		return mapper.get(resume_no);
	}

	@Override
	public boolean updateResume(ResumeVO resume) {
		
//		attachMapper.deleteAll(resume.getResume_no());
		boolean modifyResult =  mapper.resumeUpdate(resume) == 1;
		
//		if(modifyResult && resume.getAttachList().size() > 0) {
//			resume.getAttachList().forEach(attach -> {
//				attach.setResume_no(resume.getResume_no());
//				attachMapper.insert(attach);
//			});
//		}
		return modifyResult;
	}

	@Transactional
	@Override
	public boolean delete(Long resume_no) {
		
		attachMapper.deleteAll(resume_no);
		return mapper.resumeDelete(resume_no) == 1;
	}

	@Override
	public List<ResumeVO> getResumeList(Long resume_no) {
		return mapper.getList(resume_no);
	}

	@Override
	public List<ResumeAttachVO> getAttachList(Long resum_no) {
		// TODO Auto-generated method stub
		return attachMapper.findByRno(resum_no);
	}

	@Override
	public void removeAttach(Long resume_no) {
		// TODO Auto-generated method stub
		attachMapper.deleteAll(resume_no);
		
	}

}
