package com.rental.model;

//Customer class extending User
public class Customer extends User{
	
	private String firstname;
	private String lastname;
	

	//Default Constructor
	public Customer() {   
		this.firstname = "";
		this.lastname = "";
	}
	
	
	//Parameterized Constructor
	public Customer(int id, String name, String email, String password, String firstname, String lastname) {
		super(id, name, email, password);
		this.firstname = firstname;
		this.lastname = lastname;
	}


	public String getFirstname() {
		return firstname;
	}


	public String getLastname() {
		return lastname;
	}

}