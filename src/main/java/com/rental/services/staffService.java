package com.rental.services;

import java.sql.ResultSet;




import java.sql.Statement;


import com.rental.model.*;

import com.rental.utils.*;

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
	
	public void sendmsg(messages msg) {
		try {
			
			String query="insert into messages values('"+msg.getEmail()+"','"+msg.getName()+"','"+msg.getPhone()+"','"+msg.getMessage()+"')";
			
			Statement statement= DBConnect.getConnection().createStatement();
			statement.executeUpdate(query);
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
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
	
}
