package dao;

import org.springframework.stereotype.Repository;

@Repository
public class MyBatisDaoImpl implements MyDao{
	

	@Override
	public void insert() {
		System.out.println("MyBatisDaoImpl.inser() 실행 - 데이터 insert처리");
	}

	@Override
	public void select() {
		System.out.println("MyBatisDaoImple.select() 실행 - 데이터 select처리");
		
		
	}

}
