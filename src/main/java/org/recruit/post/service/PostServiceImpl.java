package org.recruit.post.service;

import java.util.List;

import org.recruit.post.domain.Criteria;
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
	public List<PostVO> getPostList() {
		return mapper.getPostList();
	}

	@Override
	public int insertPost(PostVO post) {
		return mapper.postInsert(post);
	}

	@Override
	public int updatePost(PostVO post) {
		return mapper.postUpdate(post);
	}

	@Override
	public int deletePost(Long postNo) {
		return mapper.postDelete(postNo);
	}

	@Override
	public PostVO getPost(Long postNo) {
		return mapper.getPost(postNo);
	}

	@Override
	public List<PostVO> getListWithPaging(Criteria cri) {
		return mapper.getListWithPaging(cri);
	}

}
