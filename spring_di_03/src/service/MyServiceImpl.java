package service;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import dao.MyDao;

//<bean class="service.MyServiceImpl" name="myServicImpl"/>

// MVC 패턴의 Model 중 Business Service를 담당하는 클래스를 bean으로 등록
@Service("myService")
public class MyServiceImpl implements MyService{

	// c:dao-ref="jdbcDaoImpl" || p:dao-ref="myBatisImpl"
	@Autowired	// repository로 등록된 MyDao타입의 객체(자손객체)가 다수라면 예외 발생
	@Qualifier("myBatisDaoImpl")
	private MyDao dao;	// MyDao는 JdbcDaoImpl, MyBatisDaoImpl의 타입
						// Has-A관계 
	
	/*
	public MyServiceImpl(MyDao dao) {
		//MyDao -> 상위 클래스(인터페이스)로 지정함으로서 실제 사용하는 자식 객체들(JdbcDaoImpl/MyBatisDaoImpl)중 
		// 어느것이 오더라도 Business Service의 코드 수정이 없이  사용!
		this.dao = dao;	//  MyServiceImpl은 MyDaoImpl을 의존하고 있음
	}
	*/

 
	@Override
	public void register() throws SQLException{
		System.out.println("MyServiceImpl.register() 실행");
		dao.select();
		dao.insert();
		System.out.println("MyServiceImpl.register() 종료");
	}
}
