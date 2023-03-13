package org.recruit.login.domain;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;

@Data
public class MemberVO {

	private Long mem_no;
	private String mem_id;
	private String mem_pw;
	private String mem_auth;
	private String mem_name;
	//날짜형 입력받을시 문자형으로 들어오므로 패턴 지정해서 Date객체 만들기 400error
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date mem_birth;
	private String mem_phone;
	private String mem_email;
	private String mem_address;
	private Date mem_joinDate;
	private Date mem_updateDate;
	private int mem_enabled;
	
	//한 멤버에 여러 auth를 가질 수 있으므로 list collection을 만들기
	//private List<AuthVO> authList;
}