package org.recruit.post.mapper;

import java.util.List;

import org.recruit.post.domain.PostVO;

public interface PostMapper {
	public List<PostVO> postList();
	public void postInsert(PostVO post);
}
