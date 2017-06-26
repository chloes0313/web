package domain.service;

import org.apache.ibatis.annotations.Insert;

import domain.vo.User;

/**
 * 사용자 관련 업무로직 처리 
 */
public interface UserService {
	/**
	 * 사용자 등록 
	 * User 테이블에 사용자 정보 등록(패스워드암호화), 권한 테이블에 회원권한(ROLE_MEMBER) 등록
	 * @param user 등록할 사용자 정보
	 * @param role 사용자 권한 : 관리자 - ROLE_ADMIN, 회원 - ROLE_MEMBER
	 */
	void addUser(User user, String role);
	
	/**
	 * 사용자 ID로 사용자 정보조회 처리 메소드
	 * @param userId
	 * @return
	 */
	User getUserByUserId(String userId);
	/**
	 * 사용자 프로필 수정 처리
	 * @param user
	 */
	void updateUserProfile(User user);
}
