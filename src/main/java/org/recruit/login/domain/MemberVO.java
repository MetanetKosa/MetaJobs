package org.recruit.login.domain;

import java.util.Date;
import java.util.List;

import lombok.Data;

@Data
public class MemberVO {
	
	private Long mem_no;
	private String mem_id;
	private String mem_pw;
	private String mem_name;
	private Date mem_birth;
	private String mem_phone;
	private String mem_addr;
	private String mem_email;
	private Date mem_regdate;
	private Date mem_update;
	private boolean mem_enabled;
	
	//한 멤버에 여러 auth를 가질 수 있으므로 list collection을 만들기
	//private List<AuthVO> authList;
}
