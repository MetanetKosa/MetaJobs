package org.recruit.resume.mapper;

import java.util.List;

import org.recruit.resume.domain.ResumeVO;

public interface ResumeMapper {
	
	public List<ResumeVO> getList();
	
	public ResumeVO get(Long resume_no);
	
	public void resumeInsert(ResumeVO resume);
	
	public int resumeUpdate(ResumeVO resume);
	
	public int resumeDelete(Long resume_no);

}