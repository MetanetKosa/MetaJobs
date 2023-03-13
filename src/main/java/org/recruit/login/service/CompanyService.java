package org.recruit.login.service;

import java.util.List;

import org.recruit.login.domain.AuthVO;
import org.recruit.login.domain.CompanyVO;
import org.springframework.stereotype.Service;

@Service
public interface CompanyService {
	//회원가입
	public void insert(CompanyVO company, AuthVO auth) throws Exception;
	//public void insert(CompanyVO company) throws Exception;
}
