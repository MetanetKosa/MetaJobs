package org.recruit.review.domain;

import java.util.Date;

import lombok.Data;

@Data
public class ReviewVO {
	
	private long rno;
	private long cno;
	private String reJob;
	private Date reDate;
	private String pNum;
	private String reContent;
	private String reResult;
	private Date reWdate;
	private long mno;
}
