package org.recruit.login.mapper;

import java.util.List;

import org.recruit.login.domain.MemberVO;

public interface MemberMapper {
	
	//회원가입
	public void insert(MemberVO member);

	//회원 한명 정보 조회
	public MemberVO read(String mem_id);
	
	//로그인 pw 조회
	public String readPw(String mem_id);

	public List<MemberVO> getList();
	
	//회원 정보 변경
	public int update(MemberVO member);
	
	//회원 탈퇴
	public int delete(String mem_id);
	
}
