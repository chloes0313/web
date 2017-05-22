package tp.vo;

import java.io.Serializable;

public class RestaurantImage implements Serializable{
	private int restaurant_id;
	private String image;
	// JOIN위한 변수
	private Restaurant restaurant;
	
	
	
	public RestaurantImage() {
	}

	public RestaurantImage(int restaurant_id, String image) {
		this.restaurant_id = restaurant_id;
		this.image = image;
	}

	public RestaurantImage(int restaurant_id, String image, Restaurant restaurant) {
		this.restaurant_id = restaurant_id;
		this.image = image;
		this.restaurant = restaurant;
	}

	public int getRestaurant_id() {
		return restaurant_id;
	}

	public void setRestaurant_id(int restaurant_id) {
		this.restaurant_id = restaurant_id;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public Restaurant getRestaurant() {
		return restaurant;
	}

	public void setRestaurant(Restaurant restaurant) {
		this.restaurant = restaurant;
	}

	@Override
	public String toString() {
		return "RestaurantImage [restaurant_id=" + restaurant_id + ", image=" + image + ", restaurant=" + restaurant
				+ "]";
	}

	
	
}
