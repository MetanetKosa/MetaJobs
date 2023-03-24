package org.recruit.login.mapper;

import java.util.List;

import org.recruit.login.domain.AuthVO;

public interface AuthMapper {
	//회원가입시 정보 추가
	public void insertMem();
	public void insertCom();
	
	//회원탈퇴시 정보 삭제
	//public void delete(AuthVO auth);
}
