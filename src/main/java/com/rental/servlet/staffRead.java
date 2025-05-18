package com.rental.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/staffRead")
public class staffRead extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public staffRead() {
        super();
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		com.rental.services.staffService service = new com.rental.services.staffService();
		
		ArrayList<com.rental.model.staff> stfDetails = service.getAllStaff();
		request.setAttribute("stfDetails", stfDetails);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("DashboardAdmin.jsp");
		
		dispatcher.forward(request, response);
		
	}

}
