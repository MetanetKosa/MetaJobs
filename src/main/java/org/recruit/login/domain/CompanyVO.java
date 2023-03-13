package org.recruit.login.domain;
import java.util.Date;
import java.util.List;

import lombok.Data;

@Data
public class CompanyVO {

	private String com_id;
	private String com_pw;
	private String com_auth;
	private String com_cno;
	private String com_name;
	private String com_phone;
	private String com_address;
	private String com_type;
	private String com_ceo;
	private Date com_joinDate;
	private Date com_updateDate;
	private int com_enabled;
	
	//한 멤버에 여러 auth를 가질 수 있으므로 list collection을 만들기
	//private List<AuthVO> authList;
}