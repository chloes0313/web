package domain.dao;

import java.util.List;

import domain.vo.Authority;
import domain.vo.User;

public interface AuthenticationDao {

	/**
	 * 사용자 등록
	 * @param user
	 * @return
	 */
	int insertUser(User user);
	
	/**
	 * 사용자의 권한 등록
	 * @param authority
	 * @return
	 */
	int insertAuthority(Authority authority);
	
	/**
	 * 인증가능 사용자 userId로 조회
	 * @param userId
	 * @return
	 */
	User selectUserByUserId(String userId);
	
	/**
	 * userId의 사용자의 권한들 조회
	 * @param userId
	 * @return
	 */
	List<Authority> selectAuthoritiesByUserId(String userId);
	
	/**
	 * 사용자 정보 수정처리
	 * @param user
	 * @return
	 */
	int updateUserByUserId(User user);
}
