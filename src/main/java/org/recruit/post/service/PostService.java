package org.recruit.post.service;

import java.util.List;

import org.recruit.post.domain.PostVO;

public interface PostService {
	public List<PostVO> getPostList();
	public int postInsert(PostVO post);
	public int postUpdate(PostVO post);
	public int postDelete(Long postNo);
	public PostVO getPost(Long postNo);
}
