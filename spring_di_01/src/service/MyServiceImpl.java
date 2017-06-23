package service;

import java.sql.SQLException;

import dao.MyDao;

public class MyServiceImpl implements MyService{
	
	private MyDao dao;	// MyDao는 JdbcDaoImpl, MyBatisDaoImpl의 타입
						// Has-A관계 
	
	
	
	public MyServiceImpl(MyDao dao) {
		//MyDao -> 상위 클래스(인터페이스)로 지정함으로서 실제 사용하는 자식 객체들(JdbcDaoImpl/MyBatisDaoImpl)중 
		// 어느것이 오더라도 Business Service의 코드 수정이 없이  사용!
		this.dao = dao;	//  MyServiceImpl은 MyDaoImpl을 의존하고 있음
	} 	

 
	@Override
	public void register() throws SQLException{
		System.out.println("MyServiceImpl.register() 실행");
		dao.select();
		dao.insert();
		System.out.println("MyServiceImpl.register() 종료");
	}
}
