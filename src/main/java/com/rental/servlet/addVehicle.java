package com.rental.servlet;

import java.io.IOException;
import java.io.InputStream;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.rental.model.vehicle;
import com.rental.services.vehicleService;

@WebServlet("/addVehicle")
@MultipartConfig(maxFileSize = 16177215) // 16MB max file size
public class addVehicle extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        vehicle vehi = new vehicle();
        
        // Get form data
        vehi.setVehicletype(request.getParameter("vehicletype"));
        vehi.setTransmissiontype(request.getParameter("transmissiontype"));
        vehi.setVehiclenumber(request.getParameter("vehiclenumber"));
        vehi.setVehiclecolor(request.getParameter("vehiclecolor"));
        vehi.setEnginenumber(request.getParameter("enginenumber"));
        vehi.setSeatingcapacity(Integer.parseInt(request.getParameter("seatingcapacity")));
        vehi.setFueltype(request.getParameter("fueltype"));
        
        // Get the image file part
        Part filePart = request.getPart("vehiclephoto");
        InputStream inputStream = filePart.getInputStream();
        byte[] imageBytes = inputStream.readAllBytes();
        vehi.setVehiclephoto(imageBytes);
        
        // Call service class to register the vehicle in the system
        vehicleService service = new vehicleService();
        service.regVehicle(vehi);
        
        //forward the user to their profile page
        RequestDispatcher dispatcher = request.getRequestDispatcher("ownerprofile.jsp");
        dispatcher.forward(request, response);
    }
}





//package servlet;
//
//import java.io.IOException;
//import java.io.InputStream;
//
//import javax.servlet.RequestDispatcher;
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.Part;
//
//import model.vehicle;
//import services.vehicleService;
//
//
//@WebServlet("/addVehicle")
//public class addVehicle extends HttpServlet {
//	private static final long serialVersionUID = 1L;
//   
//    public addVehicle() {
//        super();
//       
//    }
//
//	
//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		
//		response.getWriter().append("Served at: ").append(request.getContextPath());
//	}
//
//	
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		
//		vehicle vehi = new vehicle();
//		vehi.setVehicletype(request.getParameter("vehicletype"));
//		vehi.setTransmissiontype(request.getParameter("transmissiontype"));
//		vehi.setVehiclenumber(request.getParameter("vehiclenumber"));
//		vehi.setVehiclecolor(request.getParameter("vehiclecolor"));
//		vehi.setEnginenumber(request.getParameter("enginenumber"));
//		vehi.setSeatingcapacity(Integer.parseInt(request.getParameter("seatingcapacity")));
//		vehi.setFueltype(request.getParameter("fueltype"));
//		
//		// Get the image file part
//        Part filePart = request.getPart("vehiclephoto");
//        InputStream inputStream = filePart.getInputStream();
//        byte[] imageBytes = inputStream.readAllBytes();
//        vehi.setVehiclephoto(imageBytes);
//		
//		vehicleService service = new vehicleService();
//		service.regVehicle(vehi);
//		
//		RequestDispatcher dispatcher = request.getRequestDispatcher("vehicleProfile.jsp");
//		
//		dispatcher.forward(request, response);
//	}
//
//}
