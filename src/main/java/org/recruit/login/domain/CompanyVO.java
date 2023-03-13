package org.recruit.login.domain;
import java.util.Date;
import java.util.List;

import lombok.Data;

@Data
public class CompanyVO {

	private String id;
	private String pw;
	private String auth;
	private String cno;
	private String name;
	private String phone;
	private String address;
	private String type;
	private String manager;
	private Date joinDate;
	private Date updateDate;
	private int enabled;
	
	//한 멤버에 여러 auth를 가질 수 있으므로 list collection을 만들기
	//private List<AuthVO> authList;
}