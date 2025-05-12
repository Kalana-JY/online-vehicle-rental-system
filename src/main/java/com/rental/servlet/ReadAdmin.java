package com.rental.servlet;

import java.io.IOException; 
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ReadAdmin")
public class ReadAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public ReadAdmin() {
        super();
        
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		com.rental.services.AdminServices service = new com.rental.services.AdminServices();
		
		ArrayList<com.rental.model.Admin> admDetails = service.getAllUser();
		request.setAttribute("admDetails", admDetails);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("DashboardAdmin.jsp");
		
		dispatcher.forward(request, response);
		
	}

}
