package com.rental.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/singleData")
public class singleData extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public singleData() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		com.rental.model.Customer customer = new com.rental.model.Customer();
		
		customer.setEmail(request.getParameter("email"));
		com.rental.services.customerService service = new com.rental.services.customerService();
		
		com.rental.model.Customer cus = service.singleDataButton(customer);
		RequestDispatcher dispatcher = request.getRequestDispatcher("Profile.jsp");
		
		request.setAttribute("customer", cus);
		
		dispatcher.forward(request, response);
	}

}
