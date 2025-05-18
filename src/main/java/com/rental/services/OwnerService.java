package com.rental.services;

import java.sql.ResultSet;
import java.sql.Statement;

import com.rental.model.Owner;
import com.rental.utils.DBConnect;

public class OwnerService {
	
	public void regCustomer(Owner cus) {
		try {
			String query = "insert into owner values('"+cus.getName()+"','"+cus.getEmail()+"','"+cus.getPassword()+"','"+cus.getAddress()+"','"+cus.getCity()+"','"+cus.getGender()+"','"+cus.getIdnumber()+"','"+cus.getContactno()+"')";
			
			Statement statment = DBConnect.getConnection().createStatement();
			statment.executeUpdate(query);
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public boolean validate(Owner cus) {
		try {
			String query = "select * from owner where email ='"+cus.getEmail()+"' and password='"+cus.getPassword()+"'";
			
			Statement statment = DBConnect.getConnection().createStatement();
			
			ResultSet rs = statment.executeQuery(query);
			if(rs.next()) {
				return true;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return false;
	}
	
	
	public Owner getOne(Owner cus) {
		try {
			String query = "select * from owner where email ='"+cus.getEmail()+"' and password='"+cus.getPassword()+"'";
			
			Statement statment = DBConnect.getConnection().createStatement();
			
			ResultSet rs = statment.executeQuery(query);
			if(rs.next()) {
				cus.setName(rs.getString("name"));
				cus.setEmail(rs.getString("email"));
				cus.setPassword(rs.getString("password"));
				cus.setAddress(rs.getString("address"));
				cus.setCity(rs.getString("city"));
				cus.setGender(rs.getString("gender"));
				cus.setIdnumber(rs.getString("idnumber"));
				cus.setContactno(rs.getString("contactno"));
		
				return cus;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}
	
	
	public void updateCustomer(Owner customer) {
		
		try {
			String query = "update owner SET name='"+customer.getName()+"',email='"+customer.getEmail()+"',password='"+customer.getPassword()+"',address='"+customer.getAddress()+"',city='"+customer.getCity()+"',gender='"+customer.getGender()+"',idnumber='"+customer.getIdnumber()+"',contactno='"+customer.getContactno()+"' where email='"+customer.getEmail()+"' ";
			
			Statement statement = DBConnect.getConnection().createStatement();
			statement.executeUpdate(query);
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	public Owner singleDataButton(Owner cus) {
		try {
			String query = "select * from owner where email ='"+cus.getEmail()+"'";
			
			Statement statment = DBConnect.getConnection().createStatement();
			
			ResultSet rs = statment.executeQuery(query);
			if(rs.next()) {
				cus.setName(rs.getString("name"));
				cus.setEmail(rs.getString("email"));
				cus.setPassword(rs.getString("password"));
				cus.setAddress(rs.getString("address"));
				cus.setCity(rs.getString("city"));
				cus.setGender(rs.getString("gender"));
				cus.setIdnumber(rs.getString("idnumber"));
				cus.setContactno(rs.getString("contactno"));
		
				return cus;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return cus;
	}
	
	
	public void deleteCustomer(Owner cus) {
		try {
			
			String query = "Delete from owner where email ='"+cus.getEmail()+"'";
			
			Statement statement = DBConnect.getConnection().createStatement();
			statement.executeUpdate(query);
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	

}