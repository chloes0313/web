package domain.dao.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import domain.dao.AuthenticationDao;
import domain.vo.Authority;
import domain.vo.User;

@Repository
public class AuthenticationDaoImpl implements AuthenticationDao {
	
	@Autowired
	private SqlSessionTemplate session;
	@Override
	public int insertUser(User user) {
		return session.insert(makeSqlId("insertUser"), user);
	}

	@Override
	public int insertAuthority(Authority authority) {
		return session.insert(makeSqlId("insertAuthority"), authority);
	}

	@Override
	public User selectUserByUserId(String userId) {
		return session.selectOne(makeSqlId("selectUserByUserId"), userId);
	}

	@Override
	public List<Authority> selectAuthoritiesByUserId(String userId) {
		return session.selectList(makeSqlId("selectAuthoritiesByUserId"), userId);
	}
	
	@Override
	public int updateUserByUserId(User user) {
		return session.update(makeSqlId("updateUserByUserId"), user);
	}

	private String makeSqlId(String id){
		return "domain.config.mybatis.mapper.authenticationMapper."+id;
	}
	
	
}
