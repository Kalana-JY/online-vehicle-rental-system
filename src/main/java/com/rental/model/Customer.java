package com.rental.model;

public class Customer {
	private int id;
	private String firstname;
	private String lastname;
	private String email;
	private String password;
	
	
	
	public int getId() {
		return id;
	}



	public String getFirstname() {
		return firstname;
	}



	public String getLastname() {
		return lastname;
	}



	public String getEmail() {
		return email;
	}



	public String getPassword() {
		return password;
	}



	public Customer(int id, String firstname, String lastname, String email, String password) {

		this.id = id;
		this.firstname = firstname;
		this.lastname = lastname;
		this.email = email;
		this.password = password;
	}


}
