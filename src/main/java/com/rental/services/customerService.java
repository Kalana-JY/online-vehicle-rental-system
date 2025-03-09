package com.rental.services;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class customerService {

	public void regCustomer(com.rental.model.Customer customer) {
		
		try {
			
			String query = "INSERT INTO customer VALUES('"+customer.getEmail()+"','"+customer.getName()+"','"+customer.getAge()+"','"+customer.getPassword()+"')";
			
			Statement statement = com.rental.utils.DBConnect.getConnection().createStatement();
			statement .executeUpdate(query);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	public boolean validation(com.rental.model.Customer customer) {
		
		try {
			
			String query = "SELECT * FROM customer WHERE email = '"+customer.getEmail()+"' and password = '"+customer.getPassword()+"'";
			
			Statement statement = com.rental.utils.DBConnect.getConnection().createStatement();
			
			ResultSet rs = statement.executeQuery(query);
			
			if(rs.next()) {
				return true;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return false;
		
	}
	
	public com.rental.model.Customer getOne(com.rental.model.Customer customer) {
		
		try {
			
			String query = "SELECT * FROM customer WHERE email = '"+customer.getEmail()+"' and password = '"+customer.getPassword()+"'";
			
			Statement statement = com.rental.utils.DBConnect.getConnection().createStatement();
			
			ResultSet rs = statement.executeQuery(query);
			
			if(rs.next()) {
				customer.setName(rs.getString("name"));
				customer.setAge(rs.getInt("age"));
				customer.setEmail(rs.getString("email"));
				customer.setPassword(rs.getString("password"));
				return customer;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
		
	}

	public ArrayList<com.rental.model.Customer> getAllCustomer() {
		
		try {
			
			ArrayList<com.rental.model.Customer> listCus = new ArrayList<com.rental.model.Customer>();
			
			String query = "SELECT * FROM customer";
			
			Statement statement = com.rental.utils.DBConnect.getConnection().createStatement();
			ResultSet rs = statement.executeQuery(query);
			
			while(rs.next()) {
				com.rental.model.Customer customer = new com.rental.model.Customer();
				customer.setName(rs.getString("name"));
				customer.setAge(rs.getInt("age"));
				customer.setEmail(rs.getString("email"));
				customer.setPassword(rs.getString("password"));
				listCus.add(customer);
			}
			return listCus;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		
	}
	
public com.rental.model.Customer singleDataButton(com.rental.model.Customer customer) {
		
		try {
			
			String query = "SELECT * FROM customer WHERE email = '"+customer.getEmail()+"'";
			
			Statement statement = com.rental.utils.DBConnect.getConnection().createStatement();
			
			ResultSet rs = statement.executeQuery(query);
			
			if(rs.next()) {
				customer.setName(rs.getString("name"));
				customer.setAge(rs.getInt("age"));
				customer.setEmail(rs.getString("email"));
				customer.setPassword(rs.getString("password"));
				return customer;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
		
	}

public void updateCustomer(com.rental.model.Customer customer) {
	
	try {
		
		String query = "UPDATE customer SET name='"+customer.getName()+"', age='"+customer.getAge()+"', email='"+customer.getEmail()+"', password='"+customer.getPassword()+"' WHERE email='"+customer.getEmail()+"'";
		
		Statement statement = com.rental.utils.DBConnect.getConnection().createStatement();
		statement.executeUpdate(query);
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	
}

public void deleteCustomer(com.rental.model.Customer customer) {
	try {
		
		String query = "DELETE FROM customer WHERE email = '"+customer.getEmail()+"'";
		
		Statement statement = com.rental.utils.DBConnect.getConnection().createStatement();
		statement.executeUpdate(query);
		
	} catch (Exception e) {
		e.printStackTrace();
	}
}
	
}
