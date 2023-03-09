package org.recruit.login.domain;

import java.util.Date;
import java.util.List;

import lombok.Data;

@Data
public class MemberVO {
	
	private String userid;
	private String userpw;
	private String userName;
	private Date userBirth;
	private String userPhone;
	private String userAddress;
	private String userEmail;
	private Date regDate;
	private Date updateDate;
	private boolean enabled;
	
	//한 멤버에 여러 auth를 가질 수 있으므로 list collection을 만들기
	//private List<AuthVO> authList;
}
