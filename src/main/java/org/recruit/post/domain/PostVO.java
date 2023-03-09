package org.recruit.post.domain;

import java.util.Date;

import lombok.Data;

@Data
public class PostVO {
	private int post_no;
	private String post_title;
	private String post_job;
	private String post_career;
	private String post_emptype;
	private String post_add;
	private String post_sdate;
	private String post_fdate;
	private String post_sal;
	private String post_edu;
	private String post_age;
	private String post_how;
	private String post_url;
	private int com_cno;
	private int mem_no;
}
