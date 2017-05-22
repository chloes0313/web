package tp.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import tp.vo.Restaurant;

public interface RestaurantDao {
	
	int addRestaurant(Restaurant restaurant);
	
	int modRestaurant(Restaurant restaurant) throws SQLException; // 맛집 ?��?��
	
	int deleteRestaurant(int restaurantId)   throws SQLException; // 맛집 ?��?��
	
	Restaurant selectRestaurantByID(SqlSession session, int restaurantId);// id�? 맛집 조회
	
	Restaurant selectRestaurantByName(String restaurantName) throws SQLException; // ?��름으�? 맛집 조회
	
	
	ArrayList<Restaurant> selectRestaurantByName2(String restaurantName) throws SQLException;	// 비슷?�� ?��름으�? 조회?�� 맛집 결과값들
	
	ArrayList<Restaurant> selectRestaurantBySort(String foodCategory);	// ?��?��종류�? 맛집List 조회
	
	ArrayList<Restaurant> selectRestaurantByLocation(String location);	// ?��치로 맛집List 조회
	
	
}
