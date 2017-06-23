package main;

import java.sql.SQLException;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import service.MyService;

public class TestDI {
	public static void main(String[] args) throws SQLException{
		//TestDI가 MyService의 register()호출
		//TestDI - 의존 -> MyService
		/*
		// 1. 의존하는 객체를 생성
		MyService service = new MyServiceImpl();	// 기존 방식
		// 2. 기능(메서드) 호출
		service.resigter();	// 기존 방식
		*/
		
		
		//Spring Container객체 생성 -> 스프링 설정파일을 전달
		ApplicationContext container = new ClassPathXmlApplicationContext("config/applicationContext.xml");
		
		// Spring container로부터 객체 주입받기 -> 객체 == bean (Annotation으로 등록했던 객쳬)
		MyService service = (MyService)container.getBean("myService");	//Annotaion으로 등록

		
		// scope
		// 기본 싱글톤 타입 : 객체 하나만 만들어서 그 객체를 가져다 씀 (bean 설정당 하나)
		// prototype : 요청마다 객체를 생성해서 제공
		
		service.register();
		
		
		/*
		 * JdbcDaoImpl dao = new JdbcDaoImpl();
		 * MyBatisDaoImpl dao = new MyBatisDaoImpl();
		 * MyService service = new MyService(dao);
		 * service.register();
		 */
		
	}
}
