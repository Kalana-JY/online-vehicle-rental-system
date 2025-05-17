package com.rental.servlet;

import java.io.IOException; 
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.rental.model.vehicle;
import com.rental.services.vehicleService;


@WebServlet("/adminVehicle")
public class adminVehicle extends HttpServlet {
	private static final long serialVersionUID = 1L;
         
    public adminVehicle() {
        super();      
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		vehicleService service = new vehicleService();
		ArrayList<vehicle> vehicle = service.getAllVehicle();
		request.setAttribute("vehicle", vehicle);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("vehicleprofile.jsp");
		
		dispatcher.forward(request, response);
	}

}
