package org.recruit.review.service;

import java.util.List;

import org.recruit.review.domain.ReviewVO;
import org.recruit.review.mapper.ReviewMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class ReviewServiceImpl implements ReviewService{
	
	@Autowired
	private ReviewMapper mapper;

	@Override
	public List<ReviewVO> getReviewList() {
		return mapper.getList();
	}

	@Override
	public boolean insertReview(ReviewVO review) {
		return mapper.reviewInsert(review);
	}

	@Override
	public ReviewVO getReview(long rno) {
		return mapper.get(rno);
	}
	
	
}
