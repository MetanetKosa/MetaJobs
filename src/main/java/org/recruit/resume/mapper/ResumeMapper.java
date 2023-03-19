package org.recruit.resume.mapper;

import java.util.List;

import org.recruit.resume.domain.ResumeAttachVO;
import org.recruit.resume.domain.ResumeVO;

public interface ResumeMapper {
	
	public List<ResumeVO> getList(Long mem_no);
	
	public ResumeVO get(Long resume_no);
	
	public void resumeInsert(ResumeVO resume);
	
	public void insertSelectKey(ResumeVO resume);
	
	public int resumeUpdate(ResumeVO resume);
	
	public int resumeDelete(Long resume_no);
	
	public int imageChange(ResumeVO resume);
	
	public List<ResumeAttachVO> findByBno(Long resume_no);

}
