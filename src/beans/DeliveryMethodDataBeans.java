package beans;

import java.io.Serializable;
import java.text.NumberFormat;

public class DeliveryMethodDataBeans implements Serializable {
	private int id;
	private String name;
	private int price;


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
}
