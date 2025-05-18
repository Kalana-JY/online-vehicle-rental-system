package com.rental.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/vehicleRead")
public class vehicleRead extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public vehicleRead() {
        super();
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		com.rental.services.vehicleService service = new com.rental.services.vehicleService();
        ArrayList<com.rental.model.vehicle> vehicle = service.getAllVehicle();
        request.setAttribute("vehicle", vehicle);
        RequestDispatcher dispatcher = request.getRequestDispatcher("DashboardAdmin.jsp");
        dispatcher.forward(request, response);
    }
		
}

