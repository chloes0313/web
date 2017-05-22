package tp.service.impl;

import java.io.IOException;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import tp.dao.impl.RestaurantDaoImpl;
import tp.service.RestaurantManagementService;
import tp.util.SqlSessionFactoryManager;
import tp.vo.Restaurant;

public class RestaurantManagementServiceImpl implements RestaurantManagementService{
	private static SqlSessionFactory factory;
	private static RestaurantManagementServiceImpl instance;
	private RestaurantManagementServiceImpl() throws IOException{
		SqlSessionFactoryManager ssfm = SqlSessionFactoryManager.getInstance();
		factory = ssfm.getSqlSessionFactory();
	}
	public static RestaurantManagementServiceImpl getInstance() throws IOException{
		if(instance == null){
			instance = new RestaurantManagementServiceImpl();
		}
		return instance;
	}
	
	SqlSessionFactoryManager ssfm = SqlSessionFactoryManager.getInstance();
	RestaurantDaoImpl dao = RestaurantDaoImpl.getInstance();
	
	Restaurant restaurant = null;
	
	
	@Override
	public void selectRestaurantByID(int restaurantId) {
		SqlSession session = null;
		try{
			session = factory.openSession();

			
		}finally{
			session.close();
		}
		
		
	}
	
	

}
