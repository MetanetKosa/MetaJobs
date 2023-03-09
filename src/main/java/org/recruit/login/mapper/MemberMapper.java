package org.recruit.login.mapper;

import java.util.List;

import org.recruit.login.domain.MemberVO;

public interface MemberMapper {
	public List<MemberVO> getList();
	
	public void insert(MemberVO member);
	
	public void insertSelectKey(MemberVO member);
	
	public MemberVO read(Long mno);
	
	public int delete(Long mno);
	
	public int update(MemberVO member);
}
