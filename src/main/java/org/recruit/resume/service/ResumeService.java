package org.recruit.resume.service;

import java.util.List;

import org.recruit.resume.domain.ResumeAttachVO;
import org.recruit.resume.domain.ResumeVO;

public interface ResumeService {
	
	public void insertResume(ResumeVO resume);
	public ResumeVO get(Long resume_no);
	public boolean updateResume(ResumeVO resume);
	public boolean delete(Long resume_no);
	public List<ResumeVO> getResumeList(Long mem_no);
	//imageChange 처리
	public int imageChange(ResumeVO resume);
	public List<ResumeAttachVO> getAttachList(Long resum_no);
	public void removeAttach(Long resume_no);

}
