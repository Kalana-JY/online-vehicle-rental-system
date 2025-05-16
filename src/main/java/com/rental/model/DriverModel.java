package com.rental.model;

public class DriverModel {
	private int id;
	private String title;
	private String firstname;
	private String lastname;
	private String email;
	private String phoneno;
	private String licenceno;
	private String address;
	
	
	public DriverModel(int id, String title, String firstname, String lastname, String email, String phoneno,
			String licenceno, String address) {
		super();
		this.id = id;
		this.title = title;
		this.firstname = firstname;
		this.lastname = lastname;
		this.email = email;
		this.phoneno = phoneno;
		this.licenceno = licenceno;
		this.address = address;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getTitle() {
		return title;
	}


	public void setTitle(String title) {
		this.title = title;
	}


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


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getPhoneno() {
		return phoneno;
	}


	public void setPhoneno(String phoneno) {
		this.phoneno = phoneno;
	}


	public String getLicenceno() {
		return licenceno;
	}


	public void setLicenceno(String licenceno) {
		this.licenceno = licenceno;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}
	
	
	

}
