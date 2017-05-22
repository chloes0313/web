package tp.service.member;

import tp.vo.Review;

/**
 * 회원의 리뷰관리 서비스
 * @author Chloe
 *
 */
public interface MyReviewManagementService {
	/**
	 * 리뷰 등록하는 메서드
	 * @param review
	 */
	void addMyReview(Review review);
	

	/**
	 * 선택한 리뷰 수정 메서드
	 * @param review
	 */
	void updateMyReview(Review review);

	/**
	 * 내가 쓴 모든 리뷰 삭제 메서드
	 * @param memberId
	 */
	void deleteMyReview(String memberId);
	
	/**
	 * 선택한 리뷰 삭제 메서드
	 * @param memberId
	 */
	void deleteMyReviewSelected(String memberId);
	
}
