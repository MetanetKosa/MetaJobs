package org.recruit.resume.mapper;

import java.util.List;

import org.recruit.resume.domain.ResumeAttachVO;

public interface ResumeAttachMapper {
	
	public void insert(ResumeAttachVO vo);
	public void delete(String uuid);
	public List<ResumeAttachVO> findByRno(Long resume_no);

}
