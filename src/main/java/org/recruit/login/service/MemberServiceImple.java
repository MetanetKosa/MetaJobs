package org.recruit.login.service;

import org.recruit.login.domain.AuthVO;
import org.recruit.login.domain.MemberVO;
import org.recruit.login.mapper.AuthMapper;
import org.recruit.login.mapper.MemberMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class MemberServiceImple implements MemberService {

	@Autowired
	MemberMapper membermapper;
	
	@Autowired
	AuthMapper authmapper;
	
	@Override
	public void insert(MemberVO member, AuthVO auth) throws Exception {
		// TODO Auto-generated method stub
		membermapper.insert(member);
		authmapper.insertMem();
		System.out.println("결과");
	}
}
