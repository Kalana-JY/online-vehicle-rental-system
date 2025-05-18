package com.rental.services;

import java.sql.ResultSet; 




import java.sql.Statement;
import java.util.ArrayList;

import com.rental.model.staff;
import com.rental.model.vehicle;
import com.rental.utils.DBConnect;

public class staffService {

	public void regStaff(staff stf) {
		try {
			
			//String query="insert into staff values('"+stf.getEmail()+"','"+stf.getName()+"','"+stf.getPassword()+"')";     
			
			String query="insert into staff(email, name, password) values('"+stf.getEmail()+"','"+stf.getName()+"','"+stf.getPassword()+"')";
			
			
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
			
			String query="update staff SET name='"+staff.getName()+"',"+"password='"+staff.getPassword()+"'where email='"+staff.getEmail()+"'";
			
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
	
	public void deleteStaff(staff stf) {
	    try {
	        String query = "DELETE FROM staff WHERE email = '"+stf.getEmail()+"'";
	        Statement statement = DBConnect.getConnection().createStatement();
	        statement.executeUpdate(query);
	    } catch (Exception e) {
	        e.printStackTrace();
	        throw new RuntimeException("Failed to delete staff: " + e.getMessage());
	    }
	}
	
	public ArrayList<vehicle> getAllVehicle(){
		try {
			ArrayList<vehicle>listVehi=new ArrayList<vehicle>();
			
			String query="select * from vehicle";
			
			Statement statement = DBConnect.getConnection().createStatement();
			
			ResultSet rs= statement.executeQuery(query);
			while(rs.next()) {
				vehicle vc=new vehicle();
				vc.setVehicletype(rs.getString("vehicletype"));
				vc.setTransmissiontype(rs.getString("transmissiontype"));
				vc.setVehiclenumber(rs.getString("vehiclenumber"));
				vc.setVehiclecolor(rs.getString("vehiclecolor"));
				vc.setEnginenumber(rs.getString("enginenumber"));
				vc.setSeatingcapacity(rs.getInt("seatingcapacity"));
				vc.setFueltype(rs.getString("fueltype"));
				vc.setVehiclephoto(rs.getBytes("vehiclephoto"));
				listVehi.add(vc);
			}
			
			return listVehi;
			
		} catch (Exception e) {
			e.printStackTrace();
			
			return null;
			
		}
	}
	
}
