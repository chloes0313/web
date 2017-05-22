package tp.dao.impl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import tp.dao.RestaurantDao;
import tp.vo.Restaurant;

public class RestaurantDaoImpl implements RestaurantDao{
	private static RestaurantDaoImpl instance;
	public static RestaurantDaoImpl getInstance(){
		if(instance==null){
			instance = new RestaurantDaoImpl();
		}
		return instance;
	}
	private RestaurantDaoImpl(){}
	
	
	@Override
	public int addRestaurant(Restaurant restaurant) {
		
		return 0;
	}

	@Override
	public int modRestaurant(Restaurant restaurant) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteRestaurant(int restaurant_id) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Restaurant selectRestaurantByID(SqlSession session, int restaurantId){
		return session.selectOne("tp.config.mapper.reviewMapper.selectRestaurantByID", restaurantId);
	}

	@Override
	public Restaurant selectRestaurantByName(String restaurant_name) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	

	@Override
	public ArrayList<Restaurant> selectRestaurantByName2(String restaurant_name) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<Restaurant> selectRestaurantBySort(String sort) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<Restaurant> selectRestaurantByLocation(String location) {
		// TODO Auto-generated method stub
		return null;
	}
	
}
