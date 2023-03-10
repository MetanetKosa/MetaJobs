package org.recruit.login.service;

import java.util.List;

import org.recruit.login.domain.AuthVO;
import org.recruit.login.domain.MemberVO;
import org.springframework.stereotype.Service;

@Service
public interface MemberService {

	//회원가입
	//public void insert(MemberVO member) throws Exception;
	public void insertMember(MemberVO member, AuthVO auth) throws Exception;
	
	//로그인
	public MemberVO memberLogin(MemberVO member) throws Exception;
	
	//회원정보 수정
	public void updateMember(MemberVO member);
}
