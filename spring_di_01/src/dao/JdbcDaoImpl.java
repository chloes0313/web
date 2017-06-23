package dao;

import java.sql.Connection;
import java.sql.SQLException;

import org.apache.commons.dbcp2.BasicDataSource;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;


public class JdbcDaoImpl  implements MyDao{
	private BasicDataSource dataSource;
	
	public JdbcDaoImpl(BasicDataSource dataSource) {
		this.dataSource = dataSource;
	}

	@Override
	public void insert() throws SQLException {
		Connection conn = dataSource.getConnection();
		System.out.println(conn);
		System.out.println("JdbcDaoImpl.inser() 실행 - 데이터 insert처리");
	}

	@Override
	public void select() throws SQLException {
		Connection conn = dataSource.getConnection();
		System.out.println(conn);
		System.out.println("JdbcDaoImple.select() 실행 - 데이터 select처리");
		
		
	}
	
}
