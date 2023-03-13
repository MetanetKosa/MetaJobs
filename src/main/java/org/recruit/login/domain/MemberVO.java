package org.recruit.login.domain;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;

@Data
public class MemberVO {

	private Long mno;
	private String id;
	private String pw;
	private String auth;
	private String name;
	//날짜형 입력받을시 문자형으로 들어오므로 패턴 지정해서 Date객체 만들기 400error
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date birth;
	private String phone;
	private String email;
	private String address;
	private Date joinDate;
	private Date updateDate;
	private int enabled;
	
	//한 멤버에 여러 auth를 가질 수 있으므로 list collection을 만들기
	//private List<AuthVO> authList;
}