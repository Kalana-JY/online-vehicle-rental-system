package com.rental.model;

public class Owner extends User{
		
	String address;
	String city;
	String gender;
	String idnumber;
	String contactno;
	

	public Owner() {
		super();
		this.address = "";
		this.city = "";
		this.gender = "";
		this.idnumber = "";
		this.contactno = "";
	}
	public Owner(int id, String name, String email, String password,String address, String city, String gender, String idnumber, String contactno) {
		super(id, name, email, password);
		this.address = address;
		this.city = city;
		this.gender = gender;
		this.idnumber = idnumber;
		this.contactno = contactno;
	}

	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getIdnumber() {
		return idnumber;
	}
	public void setIdnumber(String idnumber) {
		this.idnumber = idnumber;
	}
	public String getContactno() {
		return contactno;
	}
	public void setContactno(String contactno) {
		this.contactno = contactno;
	}
	
	
	
	
}