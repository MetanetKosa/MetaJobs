package org.recruit.login.mapper;

import java.util.List;

import org.recruit.login.domain.CompanyVO;

public interface CompanyMapper {
	//회원가입
	public void insert(CompanyVO company);

	//회원 한명 정보 조회
	public CompanyVO read(String id);
	
	//로그인 pw 조회
	public String readPw(String id);

	public List<CompanyVO> getList();
	
	//회원 정보 변경
	public int update(CompanyVO company);
	
	//회원 탈퇴
	public int delete(String id);
}
