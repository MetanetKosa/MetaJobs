package org.recruit.review.service;

import java.util.List;

import org.recruit.review.domain.ReviewVO;

public interface ReviewService {
	public List<ReviewVO> getReviewList();
	
	public boolean insertReview(ReviewVO review);
	
	public ReviewVO getReview(long rno);
}
