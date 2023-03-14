package org.recruit.login.service;

import java.util.List;

import org.recruit.login.domain.AuthVO;
import org.recruit.login.domain.CompanyVO;
import org.recruit.login.domain.MemberVO;
import org.springframework.stereotype.Service;

@Service
public interface CompanyService {
	//회원가입
	//public void insert(CompanyVO company) throws Exception;
	public void insertCompany(CompanyVO company, AuthVO auth) throws Exception;
	
	//로그인
	public CompanyVO companyLogin(CompanyVO company) throws Exception;
}
