package org.recruit.post.domain;

import java.util.Date;

import lombok.Data;

@Data
public class PostVO {
	private int postNum;
	private String postTitle;
	private String postJob;
	private String postCareer;
	private String postEmptype;
	private String postAdd;
	private Date postSdate;
	private Date postFdate;
	private String postSal;
	private String postEdu;
	private String postAge;
	private String postHow;
	private String postUrl;
	private int comCno;
	private int memNo;
}
