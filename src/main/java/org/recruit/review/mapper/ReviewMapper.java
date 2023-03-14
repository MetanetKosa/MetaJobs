package org.recruit.review.mapper;

import java.util.List;

import org.recruit.review.domain.Criteria;
import org.recruit.review.domain.ReviewVO;

public interface ReviewMapper {

	public List<ReviewVO> getList();
	
	public boolean reviewInsert(ReviewVO review);
	
	public ReviewVO get(long rno);
	
	public List<ReviewVO> getListWithPaging(Criteria cri);
	
	
	public int getTotalCount(Criteria cri);
	
	public int reviewDelete(long rno);
	
	public int reviewUpdate(ReviewVO review);

}
