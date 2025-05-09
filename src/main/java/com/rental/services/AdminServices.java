package com.rental.services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class AdminServices {
	
	public void addAdmin(com.rental.model.Admin admin) {
		
		try {
			
			String query = "INSERT INTO admin (name, email, password, fileName) VALUES('"+admin.getName()+"', '"+admin.getEmail()+"', '"+admin.getPassword()+"', '"+admin.getFileName()+"')";
			
			Statement statement = com.rental.utils.DBConnect.getConnection().createStatement();
			statement.executeUpdate(query);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	public boolean validAdmin(com.rental.model.Admin admin) {
		
		try {
			
			String query = "SELECT * FROM admin WHERE email = '"+admin.getEmail()+"' and password = '"+admin.getPassword()+"'";
			
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
	
	public com.rental.model.Admin getOne(com.rental.model.Admin admin) {
		
		try {
			
			String query = "SELECT * FROM admin WHERE email = '"+admin.getEmail()+"' and password = '"+admin.getPassword()+"'";
			
			Statement statement = com.rental.utils.DBConnect.getConnection().createStatement();
			
			ResultSet rs = statement.executeQuery(query);
			
			if(rs.next()) {
				admin.setId(rs.getInt("id"));
				admin.setName(rs.getString("name"));
				admin.setEmail(rs.getString("email"));
				admin.setPassword(rs.getString("password"));
				admin.setAddress(rs.getString("address"));
				admin.setPhoneNumber(rs.getString("phoneNumber"));
				admin.setFileName(rs.getString("fileName"));
				return admin;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
		
	}
	
	public ArrayList<com.rental.model.Admin> getAllAdmin() {
		
		try {
			
			ArrayList<com.rental.model.Admin> listAdm = new ArrayList<com.rental.model.Admin>();
			
			String query = "SELECT * FROM admin";
			
			Statement statement = com.rental.utils.DBConnect.getConnection().createStatement();
			ResultSet rs = statement.executeQuery(query);
			
			while(rs.next()) {
				com.rental.model.Admin admin = new com.rental.model.Admin();
				admin.setId(rs.getInt("id"));
				admin.setName(rs.getString("name"));
				admin.setEmail(rs.getString("email"));
				admin.setPassword(rs.getString("password"));
				admin.setAddress(rs.getString("address"));
				admin.setPhoneNumber(rs.getString("phoneNumber"));
				admin.setFileName(rs.getString("fileName"));
				listAdm.add(admin);
			}
			
			return listAdm;
			
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		
	}
	
public com.rental.model.Admin singleData(com.rental.model.Admin admin) {
		
		try {
			
			String query = "SELECT * FROM admin WHERE email = '"+admin.getEmail()+"'";
			
			Statement statement = com.rental.utils.DBConnect.getConnection().createStatement();
			
			ResultSet rs = statement.executeQuery(query);
			
			if(rs.next()) {
				admin.setName(rs.getString("name"));
				admin.setEmail(rs.getString("email"));
				admin.setPassword(rs.getString("password"));
				admin.setAddress(rs.getString("address"));
				admin.setPhoneNumber(rs.getString("phoneNumber"));
				admin.setFileName(rs.getString("fileName"));
				return admin;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
		
	}
	
	public void updateAdmin(com.rental.model.Admin admin) {
		try {
			
			String query = "UPDATE admin SET name = '"+admin.getName()+"', email = '"+admin.getEmail()+"', password = '"+admin.getPassword()+"', address = '"+admin.getAddress()+"',  phoneNumber = '"+admin.getPhoneNumber()+"', fileName = '"+admin.getFileName()+"' WHERE id = '"+admin.getId()+"'";
			
			Statement statement = com.rental.utils.DBConnect.getConnection().createStatement();
			statement.executeUpdate(query);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void deleteAdmin(com.rental.model.Admin admin) {
		try {
			
			String query = "DELETE FROM admin WHERE email = '"+admin.getEmail()+"'";
			
			Statement statement = com.rental.utils.DBConnect.getConnection().createStatement();
			statement.executeUpdate(query);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
