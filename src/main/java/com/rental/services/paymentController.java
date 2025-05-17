package com.rental.services;

import java.sql.Connection; 
import java.sql.ResultSet;
import java.sql.Statement;
import com.rental.utils.DBConnect;

public class paymentController {
	
	//Connect DB
		private static boolean isSuccess;
		private static Connection con = null;
		private static Statement stmt = null;
		private static ResultSet rs = null;
		
		
		//Insert Data Function
		public static boolean insertdata(String cardno,String expdate,String cvv,String name,String totalAmount) {
			
			boolean isSuccess = false;
			
			try {
				//DB CONNECTION CALL
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				
				//SQL QUERY
				String sql = "insert into payment values(0,'"+cardno+"','"+expdate+"','"+cvv+"','"+name+"','"+totalAmount+"')";
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
		

}
