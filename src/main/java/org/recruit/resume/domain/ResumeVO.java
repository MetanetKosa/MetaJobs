package org.recruit.resume.domain;

import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;

@Data
public class ResumeVO {
	
	private Long resume_no;
	private String resume_image;
	private String resume_title;
	private String resume_gender;
	private String resume_technology;
	private String resume_career;
	private Long mem_no;
	private String resume_cv;
	private Date regDate;
	private Date updateDate;
	
	private List<ResumeAttachVO> attachList;

}
