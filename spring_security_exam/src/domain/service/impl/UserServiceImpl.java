package domain.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import domain.dao.AuthenticationDao;
import domain.service.UserService;
import domain.vo.Authority;
import domain.vo.User;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private AuthenticationDao dao;
	@Autowired
	private PasswordEncoder passwordEncoder;
	
	@Override
	@Transactional
	public void addUser(User user, String role) {
		//패스워드 암호화 처리
		user.setUserPassword(passwordEncoder.encode(user.getUserPassword()));
		//User 테이블 insert
		dao.insertUser(user);
		//Authorities 테이블 insert
		dao.insertAuthority(new Authority(user.getUserId(), role));
		//관리자의 경우 ROLE_MEMBER 권한도 등록
		if(role.equals("ROLE_ADMIN")){
			dao.insertAuthority(new Authority(user.getUserId(), "ROLE_MEMBER"));
		}
	}

	@Override
	public User getUserByUserId(String userId) {
		return dao.selectUserByUserId(userId);
	}

	@Override
	public void updateUserProfile(User user) {
		//패스워드 암호화 처리
		user.setUserPassword(passwordEncoder.encode(user.getUserPassword()));
		dao.updateUserByUserId(user);
	}
	
	
	

}













