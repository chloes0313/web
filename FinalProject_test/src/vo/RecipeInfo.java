package vo;

public class RecipeInfo {
	
	private int recipeId;
	private String recipeName;
	private String recipeSummary;
	private String NationId;
	private String NationName;
	private String categoryId;
	private String categoryName;
	private String cookingTime;
	private String calories;
	private String quantity;
	private String level;
	private String ingredientCode;
	private String price;
	private String imgUrl;
	private String detUrl;
	
	
	
	
	
	public RecipeInfo() {
	}

	public RecipeInfo(int recipeId, String recipeName, String recipeSummary, String nationId, String nationName,
			String categoryId, String categoryName, String cookingTime, String calories, String quantity, String level,
			String ingredientCode, String price, String imgUrl, String detUrl) {
		this.recipeId = recipeId;
		this.recipeName = recipeName;
		this.recipeSummary = recipeSummary;
		NationId = nationId;
		NationName = nationName;
		this.categoryId = categoryId;
		this.categoryName = categoryName;
		this.cookingTime = cookingTime;
		this.calories = calories;
		this.quantity = quantity;
		this.level = level;
		this.ingredientCode = ingredientCode;
		this.price = price;
		this.imgUrl = imgUrl;
		this.detUrl = detUrl;
	}

	public int getRecipeId() {
		return recipeId;
	}

	public void setRecipeId(int recipeId) {
		this.recipeId = recipeId;
	}

	public String getRecipeName() {
		return recipeName;
	}

	public void setRecipeName(String recipeName) {
		this.recipeName = recipeName;
	}

	public String getRecipeSummary() {
		return recipeSummary;
	}

	public void setRecipeSummary(String recipeSummary) {
		this.recipeSummary = recipeSummary;
	}

	public String getNationId() {
		return NationId;
	}

	public void setNationId(String nationId) {
		NationId = nationId;
	}

	public String getNationName() {
		return NationName;
	}

	public void setNationName(String nationName) {
		NationName = nationName;
	}

	public String getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(String categoryId) {
		this.categoryId = categoryId;
	}

	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	public String getCookingTime() {
		return cookingTime;
	}

	public void setCookingTime(String cookingTime) {
		this.cookingTime = cookingTime;
	}

	public String getCalories() {
		return calories;
	}

	public void setCalories(String calories) {
		this.calories = calories;
	}

	public String getQuantity() {
		return quantity;
	}

	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}

	public String getLevel() {
		return level;
	}

	public void setLevel(String level) {
		this.level = level;
	}

	public String getIngredientCode() {
		return ingredientCode;
	}

	public void setIngredientCode(String ingredientCode) {
		this.ingredientCode = ingredientCode;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getImgUrl() {
		return imgUrl;
	}

	public void setImgUrl(String imgUrl) {
		this.imgUrl = imgUrl;
	}

	public String getDetUrl() {
		return detUrl;
	}

	public void setDetUrl(String detUrl) {
		this.detUrl = detUrl;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((NationId == null) ? 0 : NationId.hashCode());
		result = prime * result + ((NationName == null) ? 0 : NationName.hashCode());
		result = prime * result + ((calories == null) ? 0 : calories.hashCode());
		result = prime * result + ((categoryId == null) ? 0 : categoryId.hashCode());
		result = prime * result + ((categoryName == null) ? 0 : categoryName.hashCode());
		result = prime * result + ((cookingTime == null) ? 0 : cookingTime.hashCode());
		result = prime * result + ((detUrl == null) ? 0 : detUrl.hashCode());
		result = prime * result + ((imgUrl == null) ? 0 : imgUrl.hashCode());
		result = prime * result + ((ingredientCode == null) ? 0 : ingredientCode.hashCode());
		result = prime * result + ((level == null) ? 0 : level.hashCode());
		result = prime * result + ((price == null) ? 0 : price.hashCode());
		result = prime * result + ((quantity == null) ? 0 : quantity.hashCode());
		result = prime * result + recipeId;
		result = prime * result + ((recipeName == null) ? 0 : recipeName.hashCode());
		result = prime * result + ((recipeSummary == null) ? 0 : recipeSummary.hashCode());
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
		RecipeInfo other = (RecipeInfo) obj;
		if (NationId == null) {
			if (other.NationId != null)
				return false;
		} else if (!NationId.equals(other.NationId))
			return false;
		if (NationName == null) {
			if (other.NationName != null)
				return false;
		} else if (!NationName.equals(other.NationName))
			return false;
		if (calories == null) {
			if (other.calories != null)
				return false;
		} else if (!calories.equals(other.calories))
			return false;
		if (categoryId == null) {
			if (other.categoryId != null)
				return false;
		} else if (!categoryId.equals(other.categoryId))
			return false;
		if (categoryName == null) {
			if (other.categoryName != null)
				return false;
		} else if (!categoryName.equals(other.categoryName))
			return false;
		if (cookingTime == null) {
			if (other.cookingTime != null)
				return false;
		} else if (!cookingTime.equals(other.cookingTime))
			return false;
		if (detUrl == null) {
			if (other.detUrl != null)
				return false;
		} else if (!detUrl.equals(other.detUrl))
			return false;
		if (imgUrl == null) {
			if (other.imgUrl != null)
				return false;
		} else if (!imgUrl.equals(other.imgUrl))
			return false;
		if (ingredientCode == null) {
			if (other.ingredientCode != null)
				return false;
		} else if (!ingredientCode.equals(other.ingredientCode))
			return false;
		if (level == null) {
			if (other.level != null)
				return false;
		} else if (!level.equals(other.level))
			return false;
		if (price == null) {
			if (other.price != null)
				return false;
		} else if (!price.equals(other.price))
			return false;
		if (quantity == null) {
			if (other.quantity != null)
				return false;
		} else if (!quantity.equals(other.quantity))
			return false;
		if (recipeId != other.recipeId)
			return false;
		if (recipeName == null) {
			if (other.recipeName != null)
				return false;
		} else if (!recipeName.equals(other.recipeName))
			return false;
		if (recipeSummary == null) {
			if (other.recipeSummary != null)
				return false;
		} else if (!recipeSummary.equals(other.recipeSummary))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "RecipeInfo [recipeId=" + recipeId + ", recipeName=" + recipeName + ", recipeSummary=" + recipeSummary
				+ ", NationId=" + NationId + ", NationName=" + NationName + ", categoryId=" + categoryId
				+ ", categoryName=" + categoryName + ", cookingTime=" + cookingTime + ", calories=" + calories
				+ ", quantity=" + quantity + ", level=" + level + ", ingredientCode=" + ingredientCode + ", price="
				+ price + ", imgUrl=" + imgUrl + ", detUrl=" + detUrl + "]";
	}






	
	
	/*ROW_NUM	출력순서
	RECIPE_ID	레시피 코드
	RECIPE_NM_KO	레시피 이름
	SUMRY	간략(요약) 소개
	NATION_CODE	유형코드
	NATION_NM	유형분류
	TY_CODE	음식분류코드
	TY_NM	음식분류
	COOKING_TIME	조리시간
	CALORIE	칼로리
	QNT	분량
	LEVEL_NM	난이도
	IRDNT_CODE	재료별 분류명
	PC_NM	가격별 분류
	IMG_URL	대표이미지 URL
	DET_URL*/


}
