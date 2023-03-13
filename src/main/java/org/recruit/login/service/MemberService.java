package org.recruit.login.service;

import java.util.List;

import org.recruit.login.domain.AuthVO;
import org.recruit.login.domain.MemberVO;
import org.springframework.stereotype.Service;

@Service
public interface MemberService {
	//회원가입
	//public void insert(MemberVO member) throws Exception;

	public void insert(MemberVO member, AuthVO auth) throws Exception;
	
}
