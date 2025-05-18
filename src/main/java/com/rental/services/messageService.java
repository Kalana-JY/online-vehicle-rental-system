package com.rental.services;

import java.sql.ResultSet;


import java.sql.Statement;
import java.util.ArrayList;

import com.rental.model.*;
import com.rental.utils.*;

public class messageService {

	public ArrayList<messages> getAllMessages(){
		try {
			
			ArrayList<messages>listMsg= new ArrayList<messages>();
			
			String query="select * from messages";
			
			Statement statement=DBConnect.getConnection().createStatement();
			ResultSet rs = statement.executeQuery(query);
			
			while(rs.next()) {
				messages msg=new messages();
				msg.setEmail(rs.getString("email"));
				msg.setName(rs.getString("name"));
				msg.setPhone(rs.getString("phoneNo"));
				msg.setMessage(rs.getString("message"));
				listMsg.add(msg);
			}
			return listMsg;
			
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
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
	
}
