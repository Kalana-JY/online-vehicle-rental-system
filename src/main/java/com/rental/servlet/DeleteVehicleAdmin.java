package com.rental.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.rental.model.vehicle;
import com.rental.services.vehicleService;


@WebServlet("/DeleteVehicleAdmin")
public class DeleteVehicleAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public DeleteVehicleAdmin() {
        super();
        
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		vehicle vehi = new vehicle();
		vehi.setEnginenumber(request.getParameter("enginenumber"));
		
		vehicleService service = new vehicleService();
		service.deleteVehicle(vehi);
		
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("DashboardAdmin.jsp");
		dispatcher.forward(request, response);
		
	}

}
