package org.recruit.review.domain;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;

@Data
public class ReviewVO {
	
	private long rno;
	private long cno;
	private String reJob;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date reDate;
	private String pNum;
	private String reContent;
	private String reResult;
	private Date reWdate;
	private long mno;
}
