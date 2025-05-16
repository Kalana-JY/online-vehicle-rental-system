package com.rental.services;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.rental.model.DriverModel;
import com.rental.utils.DBConnect;

public class DriverController {
	
	//Connect DB
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	
	//Insert Data Function
	public static boolean insertdata(String title,String firstname,String lastname,String email,String phoneno,String licenceno,String address) {
		
		 isSuccess = false;
		
		try {
			//DB CONNECTION CALL
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			//SQL QUERY
			String sql = "insert into driverdetails values(0,'"+title+"','"+firstname+"','"+lastname+"','"+email+"','"+phoneno+"','"+licenceno+"','"+address+"')";
			int rs = stmt.executeUpdate(sql);
			if(rs > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
		} catch (Exception e) {
			
			e.printStackTrace();
			
		}
		
		return isSuccess;
					
	}
	
	//display data from database
	//GetById
	
	public static List<DriverModel> getbyId (String Id){
		
		int convertedID = Integer.parseInt(Id);
		
		ArrayList <DriverModel> vehicle = new ArrayList<>();
		
		
		try {  
			//DBConnection 
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			//Query
			String sql = "select * from driverdetails where id '"+convertedID+"'";
			
			rs = stmt.executeQuery(sql);
			 while(rs.next()) {
				 int id = rs.getInt(1);
				 String title = rs.getString(2);
				 String firstname = rs.getString(3);
				 String lastname = rs.getString(4);
				 String email = rs.getString(5);
				 String phoneno = rs.getString(6);
				 String licenceno = rs.getString(7);
				 String address = rs.getString(8);
				 
				 DriverModel vm = new DriverModel(id, title, firstname, lastname, email, phoneno, licenceno, address);
				 vehicle.add(vm);
			 }
			 
		} catch (Exception e) {
			
			e.printStackTrace();
			
		}
		
		return vehicle;
	}
	
	//GetAlldata
	
	public static List<DriverModel> getAllVehicle (){
		
		ArrayList <DriverModel> vehicles = new ArrayList<>();
		
		
		try {  
			//DBConnection 
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			//Query
			String sql = "select * from driverdetails";
			
			rs = stmt.executeQuery(sql);
			 while(rs.next()) {
				 int id = rs.getInt(1);
				 String title = rs.getString(2);
				 String firstname = rs.getString(3);
				 String lastname = rs.getString(4);
				 String email = rs.getString(5);
				 String phoneno = rs.getString(6);
				 String licenceno = rs.getString(7);
				 String address = rs.getString(8);
				 
				 DriverModel vm = new DriverModel(id, title, firstname, lastname, email, phoneno, licenceno, address);
				 vehicles.add(vm);
			 }
			 
		} catch (Exception e) {
			
			e.printStackTrace();
			
		}
		
		return vehicles;
		
	}
		
}


