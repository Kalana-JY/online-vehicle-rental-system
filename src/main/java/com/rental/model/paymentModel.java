package com.rental.model;

public class paymentModel {
	
	private int id;
	private String cardno;
	private String expdate;
	private String cvv;
	private String name;
	private String totalAmount;
	
	
	public paymentModel(int id, String cardno, String expdate, String cvv, String name, String totalAmount) {

		this.id = id;
		this.cardno = cardno;
		this.expdate = expdate;
		this.cvv = cvv;
		this.name = name;
		this.totalAmount = totalAmount;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getCardno() {
		return cardno;
	}


	public void setCardno(String cardno) {
		this.cardno = cardno;
	}


	public String getExpdate() {
		return expdate;
	}


	public void setExpdate(String expdate) {
		this.expdate = expdate;
	}


	public String getCvv() {
		return cvv;
	}


	public void setCvv(String cvv) {
		this.cvv = cvv;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getTotalAmount() {
		return totalAmount;
	}


	public void setTotalAmount(String totalAmount) {
		this.totalAmount = totalAmount;
	}
	
	
	

}
