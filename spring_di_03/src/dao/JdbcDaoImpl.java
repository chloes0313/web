package dao;

import java.sql.Connection;
import java.sql.SQLException;

import org.apache.commons.dbcp2.BasicDataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

//<bean class="x.x.BasicDataSource" name="dataSource: ...>
//<bean class="dao.JdbcDaoImpl" name="jdbcDaoImpl" c:dataSource-ref="dataSource">


//MVC 패턴에서 Model 중 Dao를 담당하는 Class를 bean에 등록
@Repository
public class JdbcDaoImpl  implements MyDao{
	
	@Autowired //변수 자체에 주입 -> 아래의 생성자가 필요 없어짐
	private BasicDataSource dataSource;
	
	// 생성자의 매개변수로 주입할 변수의 타입의 bean을 찾아서 주입해줌
	//required=false : bean이 있느면 넣고 없으면 null 처리  / true :  반드시 bean 주입(기본값), 없으면 예외 처리
	/*@Autowired(required=false)
	public JdbcDaoImpl(BasicDataSource dataSource) {
		this.dataSource = dataSource;
	}*/

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
