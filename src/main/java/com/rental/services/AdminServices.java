package com.rental.services;

import java.sql.ResultSet; 
import java.sql.Statement;
import java.util.ArrayList;

import com.rental.model.Admin;
import com.rental.model.User;

public class AdminServices implements UserSavices{
	
	/*
	 * public void addAdmin(model.Admin admin) {
	 * 
	 * try {
	 * 
	 * String query =
	 * "INSERT INTO admin (name, email, password, fileName) VALUES('"+admin.getName(
	 * )+"', '"+admin.getEmail()+"', '"+admin.getPassword()+"', '"+admin.getFileName
	 * ()+"')";
	 * 
	 * Statement statement = utils.DBConnect.getConnection().createStatement();
	 * statement.executeUpdate(query);
	 * 
	 * } catch (Exception e) { e.printStackTrace(); }
	 * 
	 * }
	 * 
	 * public boolean validAdmin(model.Admin admin) {
	 * 
	 * try {
	 * 
	 * String query =
	 * "SELECT * FROM admin WHERE email = '"+admin.getEmail()+"' and password = '"
	 * +admin.getPassword()+"'";
	 * 
	 * Statement statement = utils.DBConnect.getConnection().createStatement();
	 * ResultSet rs = statement.executeQuery(query);
	 * 
	 * if(rs.next()) { return true; }
	 * 
	 * } catch (Exception e) { e.printStackTrace(); }
	 * 
	 * return false;
	 * 
	 * }
	 * 
	 * public model.Admin getOne(model.Admin admin) {
	 * 
	 * try {
	 * 
	 * String query =
	 * "SELECT * FROM admin WHERE email = '"+admin.getEmail()+"' and password = '"
	 * +admin.getPassword()+"'";
	 * 
	 * Statement statement = utils.DBConnect.getConnection().createStatement();
	 * 
	 * ResultSet rs = statement.executeQuery(query);
	 * 
	 * if(rs.next()) { admin.setId(rs.getInt("id"));
	 * admin.setName(rs.getString("name")); admin.setEmail(rs.getString("email"));
	 * admin.setPassword(rs.getString("password"));
	 * admin.setAddress(rs.getString("address"));
	 * admin.setPhoneNumber(rs.getString("phoneNumber"));
	 * admin.setFileName(rs.getString("fileName")); return admin; }
	 * 
	 * } catch (Exception e) { e.printStackTrace(); }
	 * 
	 * return null;
	 * 
	 * }
	 * 
	 * public ArrayList<model.Admin> getAllAdmin() {
	 * 
	 * try {
	 * 
	 * ArrayList<model.Admin> listAdm = new ArrayList<model.Admin>();
	 * 
	 * String query = "SELECT * FROM admin";
	 * 
	 * Statement statement = utils.DBConnect.getConnection().createStatement();
	 * ResultSet rs = statement.executeQuery(query);
	 * 
	 * while(rs.next()) { model.Admin admin = new model.Admin();
	 * admin.setId(rs.getInt("id")); admin.setName(rs.getString("name"));
	 * admin.setEmail(rs.getString("email"));
	 * admin.setPassword(rs.getString("password"));
	 * admin.setAddress(rs.getString("address"));
	 * admin.setPhoneNumber(rs.getString("phoneNumber"));
	 * admin.setFileName(rs.getString("fileName")); listAdm.add(admin); }
	 * 
	 * return listAdm;
	 * 
	 * } catch (Exception e) { e.printStackTrace(); return null; }
	 * 
	 * }
	 * 
	 * public model.Admin singleData(model.Admin admin) {
	 * 
	 * try {
	 * 
	 * String query = "SELECT * FROM admin WHERE email = '"+admin.getEmail()+"'";
	 * 
	 * Statement statement = utils.DBConnect.getConnection().createStatement();
	 * 
	 * ResultSet rs = statement.executeQuery(query);
	 * 
	 * if(rs.next()) { admin.setName(rs.getString("name"));
	 * admin.setEmail(rs.getString("email"));
	 * admin.setPassword(rs.getString("password"));
	 * admin.setAddress(rs.getString("address"));
	 * admin.setPhoneNumber(rs.getString("phoneNumber"));
	 * admin.setFileName(rs.getString("fileName")); return admin; }
	 * 
	 * } catch (Exception e) { e.printStackTrace(); }
	 * 
	 * return null;
	 * 
	 * }
	 * 
	 * public void updateAdmin(model.Admin admin) { try {
	 * 
	 * String query =
	 * "UPDATE admin SET name = '"+admin.getName()+"', email = '"+admin.getEmail()
	 * +"', password = '"+admin.getPassword()+"', address = '"+admin.getAddress()
	 * +"',  phoneNumber = '"+admin.getPhoneNumber()+"', fileName = '"+admin.
	 * getFileName()+"' WHERE id = '"+admin.getId()+"'";
	 * 
	 * Statement statement = utils.DBConnect.getConnection().createStatement();
	 * statement.executeUpdate(query);
	 * 
	 * } catch (Exception e) { e.printStackTrace(); } }
	 * 
	 * public void deleteAdmin(model.Admin admin) { try {
	 * 
	 * String query = "DELETE FROM admin WHERE email = '"+admin.getEmail()+"'";
	 * 
	 * Statement statement = utils.DBConnect.getConnection().createStatement();
	 * statement.executeUpdate(query);
	 * 
	 * } catch (Exception e) { e.printStackTrace(); } }
	 */

	@Override
	public void addUser(com.rental.model.User user) {
		
		Admin admin = (Admin) user;
		
		try {
			
			String query = "INSERT INTO admin (name, email, password, fileName) VALUES('"+admin.getName()+"', '"+admin.getEmail()+"', '"+admin.getPassword()+"', '"+admin.getFileName()+"')";
			
			Statement statement = com.rental.utils.DBConnect.getConnection().createStatement();
			statement.executeUpdate(query);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	@Override
	public boolean validUser(com.rental.model.User user) {
		
		Admin admin = (Admin) user;
		
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

	@Override
	public User getOne(com.rental.model.User user) {
		
		Admin admin = (Admin) user;
		
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

	@Override
	public ArrayList<Admin> getAllUser() {
		
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

	@Override
	public User singleData(User user) {
		
		try {
			
			com.rental.model.Admin admin = new com.rental.model.Admin();
			
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

	@Override
	public void updateUser(com.rental.model.User user) {
		try {
			
			com.rental.model.Admin admin = (com.rental.model.Admin) user;
			
			String query = "UPDATE admin SET name = '"+admin.getName()+"', email = '"+admin.getEmail()+"', password = '"+admin.getPassword()+"', address = '"+admin.getAddress()+"',  phoneNumber = '"+admin.getPhoneNumber()+"', fileName = '"+admin.getFileName()+"' WHERE id = '"+admin.getId()+"'";
			
			Statement statement = com.rental.utils.DBConnect.getConnection().createStatement();
			statement.executeUpdate(query);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	@Override
	public void deleteUser(com.rental.model.User user) {
		try {
			
			com.rental.model.Admin admin = new com.rental.model.Admin();
			
			String query = "DELETE FROM admin WHERE email = '"+admin.getEmail()+"'";
			
			Statement statement = com.rental.utils.DBConnect.getConnection().createStatement();
			statement.executeUpdate(query);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
