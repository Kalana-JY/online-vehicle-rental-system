package com.rental.model;

public class Admin extends User{
	
	private String address;
	private String phoneNumber;
	private String fileName;
	
	public Admin() {
		this.address = "";
		this.phoneNumber = "";
		this.fileName = "";
	}
	
	public Admin(int id, String name, String email, String password, String address, String phoneNumber, String fileName) {
		super(id, name, email, password);
		this.address = address;
		this.phoneNumber = phoneNumber;
		this.fileName = fileName;
	}
	
	
	public String getFileName() {
		return fileName;
	}
	
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	
	public String getAddress() {
		return address;
	}
	
	public String getPhoneNumber() {
		return phoneNumber;
	}
	
	public void setAddress(String address) {
		this.address = address;
	}
	
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	
}
