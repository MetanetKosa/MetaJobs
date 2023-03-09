package org.recruit.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.recruit.login.domain.*;
import org.recruit.login.mapper.*;

import lombok.extern.log4j.Log4j;

@Log4j
public class CustomUserDetailsService implements UserDetailsService {

	@Autowired
	private MemberMapper mapper;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {

		log.warn("UserName: " +username);
		
		//밑의 username은 userId
		MemberVO vo = mapper.read(username);
		
		//Member객체 vo가 null이면 null로, 아니면 CustomUser타입으로 리턴
		return vo == null ? null : new CustomUser(vo);	
	}

}
