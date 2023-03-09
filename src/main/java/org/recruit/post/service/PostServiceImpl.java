package org.recruit.post.service;

import java.util.List;

import org.recruit.post.domain.PostVO;
import org.recruit.post.mapper.PostMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class PostServiceImpl implements PostService {

	@Autowired
	private PostMapper mapper;
	
	@Override
	public List<PostVO> postList() {
		return mapper.postList();
	}

}
