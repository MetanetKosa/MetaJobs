package org.recruit.review.mapper;

import java.util.List;

import org.recruit.review.domain.ReviewVO;

public interface ReviewMapper {

	public List<ReviewVO> getList();
	
	public void reviewInsert(ReviewVO review);
	
	public ReviewVO get(int rno);
}
