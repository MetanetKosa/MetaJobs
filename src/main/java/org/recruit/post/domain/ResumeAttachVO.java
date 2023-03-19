package org.recruit.post.domain;

import lombok.Data;

@Data
public class ResumeAttachVO {
	
	private String uuid;
	private String uploadPath;
	private String fileName;
	private boolean fileType;
	private Long resume_no;

}
