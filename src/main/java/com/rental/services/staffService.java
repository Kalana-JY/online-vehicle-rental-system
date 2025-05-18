package com.rental.services;

import java.sql.ResultSet; 




import java.sql.Statement;
import java.util.ArrayList;

import com.rental.model.staff;

import com.rental.utils.DBConnect;

public class staffService {

	public void regStaff(staff stf) {
		try {
			
			String query="insert into staff values('"+stf.getEmail()+"','"+stf.getName()+"','"+stf.getPassword()+"')";     
			
			
			Statement statement = DBConnect.getConnection().createStatement();
			statement.executeUpdate(query);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public boolean validate(staff stf) {
		try {
			
			String query="select * from staff where email = '"+stf.getEmail()+"' and password = '"+stf.getPassword()+"'";
			
			Statement statement = DBConnect.getConnection().createStatement();
			
			ResultSet rs= statement.executeQuery(query);
			
			if(rs.next()) {
				return true;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			
		}
		return false;
	}
	
	public staff getOne(staff stf) {
		try {
			
			String query="select * from staff where email = '"+stf.getEmail()+"' and password = '"+stf.getPassword()+"'";
			
			Statement statement = DBConnect.getConnection().createStatement();
			
			ResultSet rs= statement.executeQuery(query);
			
			if(rs.next()) {
				
				stf.setName(rs.getString("name"));
				stf.setEmail(rs.getString("email"));
				stf.setPassword(rs.getString("password"));
				return stf;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			
		}
		return null;
	}
	

	
	public void updateStaff(staff staff) {
		
		try {
			
			String query="update staff SET email='"+staff.getEmail()+"',"+"name='"+staff.getName()+"',"+"password='"+staff.getPassword()+"'where email='"+staff.getEmail()+"'";
			
			Statement  statement = DBConnect.getConnection().createStatement();
			statement.executeUpdate(query);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<staff> getAllStaff() {
		
		try {
			
			ArrayList<com.rental.model.staff> listStaff = new ArrayList<com.rental.model.staff>();
			
			String query = "SELECT * FROM staff";
			
			Statement statement = com.rental.utils.DBConnect.getConnection().createStatement();
			ResultSet rs = statement.executeQuery(query);
			
			while(rs.next()) {
				com.rental.model.staff stf = new com.rental.model.staff();
				stf.setEmail(rs.getString("email"));
				stf.setName(rs.getString("name"));
				stf.setPassword(rs.getString("password"));
				listStaff.add(stf);
			}
			
			return listStaff;
			
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		
	}
	
	public void deleteStaff(com.rental.model.staff stf) {
		try {
			
			com.rental.model.staff staff = new com.rental.model.staff();
			
			String query = "DELETE FROM admin WHERE email = '"+staff.getEmail()+"'";
			
			Statement statement = com.rental.utils.DBConnect.getConnection().createStatement();
			statement.executeUpdate(query);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
}
