package beans;

import java.io.Serializable;

public class UserDataBeans implements Serializable{
	private String firstname;
	private String lastname;
	private String postcode;
	private String address;
	private String email;
	private String password;
	private String birthDate;
	private String telNum;
	private int id;
	
	
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public String getPostcode() {
		return postcode;
	}
	public void setPostcode(String postcode) {
		this.postcode = postcode;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getBirthDate() {
		return birthDate;
	}
	public void setBirthDate(String birthDate) {
		this.birthDate = birthDate;
	}
	public String getTelNum() {
		return telNum;
	}
	public void setTelNum(String telNum) {
		this.telNum = telNum;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	/**
	 * ユーザー情報更新時の必要情報をまとめてセットするための処理
	 *
	 * @param firstname
	 * @param lastname
	 * @param email
	 * @param telNum
	 * @param postcode
	 * @param address
	 * @param birthDate
	 */
	
	public void seUpdateUserDataBeansInfo(String firstname,String lastname,String email,String telNum,String postcode,String address,String birthDate) {
		this.firstname = firstname;
		this.lastname = lastname;
		this.email = email;
		this.telNum = telNum;
		this.postcode = postcode;
		this.address = address;
		this.birthDate = birthDate;
	}
}
