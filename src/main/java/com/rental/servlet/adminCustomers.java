package com.rental.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/adminCustomers")
public class adminCustomers extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public adminCustomers() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		com.rental.services.customerService service = new com.rental.services.customerService();
		
		ArrayList<com.rental.model.Customer> Cus = service.getAllCustomer();
		request.setAttribute("cus", Cus);
		
		RequestDispatcher dispacher = request.getRequestDispatcher("Admin.jsp");
		
		dispacher.forward(request, response);
	}

}
