package org.recruit.post.service;

import java.util.List;

import org.recruit.post.domain.PostVO;

public interface PostService {
	public List<PostVO> postList();
	public int postInsert(PostVO post);
}
