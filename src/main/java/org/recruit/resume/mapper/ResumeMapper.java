package org.recruit.resume.mapper;

import java.util.List;

import org.recruit.resume.domain.ResumeVO;

public interface ResumeMapper {
	
	//전체 목록
	public List<ResumeVO> getList();
	
	public ResumeVO get(Long resum_no);
	
	public void resumeInsert(ResumeVO resume);
	
	public int resumeUpdate(ResumeVO resume);
	
	public int resumeDelete(Long resum_no);
	
}
