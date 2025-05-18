package com.rental.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ownerRead")
public class ownerRead extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public ownerRead() {
        super();
        
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		com.rental.services.OwnerService service = new com.rental.services.OwnerService();
		
		ArrayList<com.rental.model.Owner> ownerDetails = service.getAllOwner();
		request.setAttribute("ownerDetails", ownerDetails);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("DashboardAdmin.jsp");
		
		dispatcher.forward(request, response);
		
	}

}
