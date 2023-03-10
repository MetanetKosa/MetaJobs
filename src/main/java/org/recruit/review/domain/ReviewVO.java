package org.recruit.review.domain;

import java.util.Date;

import lombok.Data;

@Data
public class ReviewVO {
	
	private int rno;
	private int cno;
	private String reJob;
	private Date reDate;
	private int pNum;
	private String reContent;
	private String reResult;
	private Date reWdate;
	private int mno;
}
