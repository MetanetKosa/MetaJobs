package org.recruit.login.mapper;

import java.util.List;

import org.recruit.login.domain.MemberVO;

public interface MemberMapper {
	
	//회원가입
	public void insertMember(MemberVO member);

	//로그인
	public MemberVO loginMember(MemberVO member);
	
	//로그인 pw 조회
	public String readPw(String mem_id);
	
	//회원정보 변경
	public void updateMember(MemberVO member);
	
	//회원 탈퇴
	public int delete(String mem_id);
	
	//
	//public MemberVO read2(LoginVO vo);
	
	//public MemberVO login(String mem_id, String mem_pw);
}
