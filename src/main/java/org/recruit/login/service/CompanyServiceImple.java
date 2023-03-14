package org.recruit.login.service;

import org.recruit.login.domain.AuthVO;
import org.recruit.login.domain.CompanyVO;
import org.recruit.login.domain.MemberVO;
import org.recruit.login.mapper.AuthMapper;
import org.recruit.login.mapper.CompanyMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class CompanyServiceImple implements CompanyService {

	@Autowired
	CompanyMapper companymapper;
	
	@Autowired
	AuthMapper authmapper;
	
	@Override
	public void insertCompany(CompanyVO company, AuthVO auth) throws Exception {
		// TODO Auto-generated method stub
		companymapper.insertCompany(company);
		authmapper.insertCom();
		System.out.println("결과");
	}
	
//	@Override
//	public void insert(CompanyVO company) throws Exception {
//		// TODO Auto-generated method stub
//		companymapper.insert(company);
//		//authmapper.insertCom();
//		//System.out.println("결과");
//	}
}
