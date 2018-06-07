package beans;

import java.io.Serializable;

public class ItemDataBeans implements Serializable {
	private int id;
	private String name;
	private int categoryId;
	private int itemCategoryId;
	private String detail;
	private String alchol;
	private int price;
	private String fileName;
	
	private String[] combiList;

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

	public int getItemCategoryId() {
		return itemCategoryId;
	}

	public void setItemCategoryId(int itemCategoryId) {
		this.itemCategoryId = itemCategoryId;
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

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public String[] getCombiList() {
		return combiList;
	}

	public void setCombiList(String[] combiList) {
		this.combiList = combiList;
	}


}

	