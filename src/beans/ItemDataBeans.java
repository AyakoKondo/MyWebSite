package beans;

import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.Date;

public class ItemDataBeans implements Serializable {
	private int id;
	private String name;
	private int categoryId;
	private int itemCategoryId;
	private String detail;
	private String alchol;
	private int price;
	private String fileName;
	private Date createDate;
	private Date updateDate;
	
	private String[] combiList;
	
	private String itemCategoryName;
	
	public ItemDataBeans() {
	}

	public ItemDataBeans(int id, String name,String itemCategoryName,int price,Date createDate) {
		this.id = id;
		this.name = name;
		this.itemCategoryName = itemCategoryName;
		this.price = price;
		this.createDate = createDate;
	}

	public ItemDataBeans(int id,String name,int price,String fileName,int itemCategoryId) {
		this.id = id;
		this.name = name;
		this.price = price;
		this.fileName = fileName;
		this.itemCategoryId = itemCategoryId;
	}

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


	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public Date getUpdateDate() {
		return updateDate;
	}

	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}

	public String getItemCategoryName() {
		return itemCategoryName;
	}

	public void setItemCategoryName(String itemCategoryName) {
		this.itemCategoryName = itemCategoryName;
	}
	public String getFormatDate() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日HH時mm分");
		return sdf.format(createDate);
	}
	public String getFormatDate2() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日HH時mm分");
		return sdf.format(updateDate);
	}


}

	