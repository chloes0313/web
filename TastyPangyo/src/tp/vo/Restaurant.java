package tp.vo;

import java.io.Serializable;
import java.util.List;

public class Restaurant implements Serializable{
	private int restaurantId;
	private String foodCategory;
	private String location;
	private String restaurantName;
	private String restaurantTel;
	private String restaurantIntro;
	private int hits;
	
	// JOIN위한 변수
	private List<Review> reviewList;
	private List<RestaurantImage> imageList;
	
	
	
	
	public Restaurant(){}

	public Restaurant(int restaurantId, String foodCategory, String location, String restaurantName,
			String restaurantTel, String restaurantIntro, int hits) {
		this.restaurantId = restaurantId;
		this.foodCategory = foodCategory;
		this.location = location;
		this.restaurantName = restaurantName;
		this.restaurantTel = restaurantTel;
		this.restaurantIntro = restaurantIntro;
		this.hits = hits;
	}
	
	

	public Restaurant(int restaurantId, String foodCategory, String location, String restaurantName,
			String restaurantTel, String restaurantIntro, int hits, List<Review> reviewList,
			List<RestaurantImage> imageList) {
		this.restaurantId = restaurantId;
		this.foodCategory = foodCategory;
		this.location = location;
		this.restaurantName = restaurantName;
		this.restaurantTel = restaurantTel;
		this.restaurantIntro = restaurantIntro;
		this.hits = hits;
		this.reviewList = reviewList;
		this.imageList = imageList;
	}

	public int getRestaurantId() {
		return restaurantId;
	}

	public void setRestaurantId(int restaurantId) {
		this.restaurantId = restaurantId;
	}

	public String getFoodCategory() {
		return foodCategory;
	}

	public void setFoodCategory(String foodCategory) {
		this.foodCategory = foodCategory;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getRestaurantName() {
		return restaurantName;
	}

	public void setRestaurantName(String restaurantName) {
		this.restaurantName = restaurantName;
	}

	public int getHits() {
		return hits;
	}

	public void setHits(int hits) {
		this.hits = hits;
	}

	public String getRestaurantTel() {
		return restaurantTel;
	}

	public void setRestaurantTel(String restaurantTel) {
		this.restaurantTel = restaurantTel;
	}

	public String getRestaurantIntro() {
		return restaurantIntro;
	}

	public void setRestaurantIntro(String restaurantIntro) {
		this.restaurantIntro = restaurantIntro;
	}

	public List<Review> getReviewList() {
		return reviewList;
	}

	public void setReviewList(List<Review> reviewList) {
		this.reviewList = reviewList;
	}



	
	

	public List<RestaurantImage> getImageList() {
		return imageList;
	}

	public void setImageList(List<RestaurantImage> imageList) {
		this.imageList = imageList;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((foodCategory == null) ? 0 : foodCategory.hashCode());
		result = prime * result + hits;
		result = prime * result + ((location == null) ? 0 : location.hashCode());
		result = prime * result + restaurantId;
		result = prime * result + ((restaurantIntro == null) ? 0 : restaurantIntro.hashCode());
		result = prime * result + ((restaurantName == null) ? 0 : restaurantName.hashCode());
		result = prime * result + ((restaurantTel == null) ? 0 : restaurantTel.hashCode());
		result = prime * result + ((reviewList == null) ? 0 : reviewList.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Restaurant other = (Restaurant) obj;
		if (foodCategory == null) {
			if (other.foodCategory != null)
				return false;
		} else if (!foodCategory.equals(other.foodCategory))
			return false;
		if (hits != other.hits)
			return false;
		if (location == null) {
			if (other.location != null)
				return false;
		} else if (!location.equals(other.location))
			return false;
		if (restaurantId != other.restaurantId)
			return false;
		if (restaurantIntro == null) {
			if (other.restaurantIntro != null)
				return false;
		} else if (!restaurantIntro.equals(other.restaurantIntro))
			return false;
		if (restaurantName == null) {
			if (other.restaurantName != null)
				return false;
		} else if (!restaurantName.equals(other.restaurantName))
			return false;
		if (restaurantTel == null) {
			if (other.restaurantTel != null)
				return false;
		} else if (!restaurantTel.equals(other.restaurantTel))
			return false;
		if (reviewList == null) {
			if (other.reviewList != null)
				return false;
		} else if (!reviewList.equals(other.reviewList))
			return false;
		return true;
	}

	
	
	
	@Override
	public String toString() {
		return "Restaurant [restaurantId=" + restaurantId + ", foodCategory=" + foodCategory + ", location=" + location
				+ ", restaurantName=" + restaurantName + ", restaurantTel=" + restaurantTel + ", restaurantIntro="
				+ restaurantIntro + ", hits=" + hits + ", reviewList=" + reviewList + "]";
	}
}