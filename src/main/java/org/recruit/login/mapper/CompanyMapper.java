package org.recruit.login.mapper;

import java.util.List;

import org.recruit.login.domain.CompanyVO;
import org.recruit.login.domain.MemberVO;

public interface CompanyMapper {
	//회원가입
	public void insertCompany(CompanyVO company);

	//로그인
	public CompanyVO loginCompany(CompanyVO company);
	
	//로그인 pw 조회
	public String readPw(String com_id);

	public List<CompanyVO> getList();
	
	//회원 정보 변경
	public int update(CompanyVO company);
	
	//회원 탈퇴
	public int delete(String com_id);
}
