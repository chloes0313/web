package tp.test;

import java.io.IOException;

import tp.service.RestaurantImageService;
import tp.service.impl.RestaurantImageServiceImpl;
import tp.vo.Restaurant;


public class RestaurantImageTest {
	
	public static void main(String[] args) throws IOException {
		RestaurantImageService service = RestaurantImageServiceImpl.getInstance();
		Restaurant restaurant = null;
		int num = 0;
		
		// restaurantImage = new RestaurantImage(1,"시험방송입니다.");
		// service.insertRestaurantImage(restaurantImage);
		
		service.deleteRestaurantImage(1);
		
		
	}
	
	
}
