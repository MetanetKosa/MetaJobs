package org.recruit.review.service;

import java.util.List;

import org.recruit.review.domain.Criteria;
import org.recruit.review.domain.ReviewVO;

public interface ReviewService {
	public List<ReviewVO> getReviewList();

	public List<ReviewVO> getReviewList(Criteria cri);
	
	public boolean insertReview(ReviewVO review);
	
	public ReviewVO getReview(long rno);
}
