package org.recruit.post.service;

import java.util.List;

import org.recruit.post.domain.Criteria;
import org.recruit.post.domain.PostVO;

public interface PostService {
	public List<PostVO> getPostList();
	public int insertPost(PostVO post);
	public int updatePost(PostVO post);
	public int deletePost(Long postNo);
	public PostVO getPost(Long postNo);
	public List<PostVO> getListWithPaging(Criteria cri, int total);
	public int getTotalCount(Criteria cri);

}
