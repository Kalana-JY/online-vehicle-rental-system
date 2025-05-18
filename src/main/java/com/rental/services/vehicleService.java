package com.rental.services;

import java.sql.PreparedStatement; 
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.rental.model.vehicle;
import com.rental.utils.DBConnect;

public class vehicleService {
    
    public void regVehicle(vehicle vehi) {
        try {
            String query = "insert into  vehicle values('"+vehi.getVehicletype()+"','"+vehi.getTransmissiontype()+"','"+vehi.getVehiclenumber()+"','"+vehi.getVehiclecolor()+"','"+vehi.getEnginenumber()+"','"+vehi.getSeatingcapacity()+"','"+vehi.getFueltype()+"','"+vehi.getVehiclephoto()+"')";
            Statement statement = DBConnect.getConnection().createStatement();
            statement.executeUpdate(query);
        } catch (Exception e) {
            e.printStackTrace();
        }        
    }

    public ArrayList<vehicle> getAllVehicle() {
        try {
            ArrayList<vehicle> listVehi = new ArrayList<vehicle>();
            String query = "select * from vehicle";
            Statement statment = DBConnect.getConnection().createStatement();
            ResultSet rss = statment.executeQuery(query);

            while (rss.next()) {
                vehicle vehi = new vehicle();
                vehi.setVehicletype(rss.getString("vehicletype"));
                vehi.setTransmissiontype(rss.getString("transmissiontype"));
                vehi.setVehiclenumber(rss.getString("vehiclenumber"));
                vehi.setVehiclecolor(rss.getString("vehiclecolor"));
                vehi.setEnginenumber(rss.getString("enginenumber"));
                vehi.setSeatingcapacity(rss.getInt("seatingcapacity"));
                vehi.setFueltype(rss.getString("fueltype"));
                vehi.setVehiclephoto(rss.getBytes("vehiclephoto"));
                listVehi.add(vehi);
            }

            return listVehi;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public vehicle vehicleDataButton(vehicle vehi) {
        try {
            String query = "select * from vehicle where enginenumber = '"+vehi.getEnginenumber()+"'";
            Statement statment = DBConnect.getConnection().createStatement();
            ResultSet rss = statment.executeQuery(query);

            if (rss.next()) {
                vehi.setVehicletype(rss.getString("vehicletype"));
                vehi.setTransmissiontype(rss.getString("transmissiontype"));
                vehi.setVehiclenumber(rss.getString("vehiclenumber"));
                vehi.setVehiclecolor(rss.getString("vehiclecolor"));
                vehi.setEnginenumber(rss.getString("enginenumber"));
                vehi.setSeatingcapacity(rss.getInt("seatingcapacity"));
                vehi.setFueltype(rss.getString("fueltype"));
                vehi.setVehiclephoto(rss.getBytes("vehiclephoto"));
                return vehi;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return vehi;
    }

    
    public void updateVehicle(vehicle vehicle) {
		try {
			
			String query = "update vehicle SET vehicletype='"+vehicle.getVehicletype()+"',transmissiontype='"+vehicle.getTransmissiontype()+"',vehiclenumber='"+vehicle.getVehiclenumber()+"',vehiclecolor='"+vehicle.getVehiclecolor()+"',seatingcapacity='"+vehicle.getSeatingcapacity()+"',fueltype='"+vehicle.getFueltype()+"',vehiclephoto='"+vehicle.getVehiclephoto()+"' where enginenumber='"+vehicle.getEnginenumber()+"' ";
			
			Statement statement = DBConnect.getConnection().createStatement();
			statement.executeUpdate(query);
			
	 
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

    public void deleteVehicle(vehicle vehi) {
        try {
            String query = "Delete from vehicle where enginenumber='"+vehi.getEnginenumber()+"'";
            Statement statement = DBConnect.getConnection().createStatement();
            statement.executeUpdate(query);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
