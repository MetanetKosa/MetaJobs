package org.recruit.login.domain;

import lombok.Data;

@Data
public class AuthVO {

	private String id;
	private String pw;
	private String auth;
	private int enabled;
	
	//한 멤버에 여러 auth를 가질 수 있으므로 list collection을 만들기
	//private List<AuthVO> authList;
}