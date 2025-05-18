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
import com.rental.services.staffService;


@WebServlet("/displayVehicle")
public class displayVehicle extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public displayVehicle() {
        super();
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		staffService service=new staffService();
		
		ArrayList<vehicle> vehicle=service.getAllVehicle();
		
		request.setAttribute("vehicle",vehicle);
		
		RequestDispatcher dispacher=request.getRequestDispatcher("Staff.jsp");
		
		dispacher.forward(request, response);

		
	}

}
