package beans;

import java.io.Serializable;
import java.text.NumberFormat;

public class ItemDataBeans implements Serializable {
	private int id;
	private String name;
	private int categoryId;
	private int drinkCategoryId;
	private int foodCategoryId;
	private String detail;
	private String alchol;
	private int price;
	private String fileName;
	
	private String drinkCategoryName;
	private String foodCategoryName;

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}
	public int getDrinkCategoryId() {
		return drinkCategoryId;
	}
	public void setDrinkCategoryId(int drinkCategoryId) {
		this.drinkCategoryId = drinkCategoryId;
	}
	public int getFoodCategoryId() {
		return foodCategoryId;
	}
	public void setFoodCategoryId(int foodCategoryId) {
		this.foodCategoryId = foodCategoryId;
	}
	public String getDetail() {
		return detail;
	}
	public void setDetail(String detail) {
		this.detail = detail;
	}
	public String getAlchol() {
		return alchol;
	}
	public void setAlchol(String alchol) {
		this.alchol = alchol;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	
	public String getFormatPrice() {
		NumberFormat nfNum = NumberFormat.getNumberInstance();
		return nfNum.format(price);
	}
	
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	
	public String getDrinkCategoryName() {
		return drinkCategoryName;
	}
	public void setDrinkCategoryName(String drinkCategoryName) {
		this.drinkCategoryName = drinkCategoryName;
	}
	public String getFoodCategoryName() {
		return foodCategoryName;
	}
	public void setFoodCategoryName(String foodCategoryName) {
		this.foodCategoryName = foodCategoryName;
	}	
}
