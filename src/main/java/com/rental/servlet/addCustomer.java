package com.rental.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/addCustomer")
public class addCustomer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public addCustomer() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		com.rental.model.Customer customer = new com.rental.model.Customer();
		
		customer.setName(request.getParameter("name"));
		customer.setAge(Integer.parseInt(request.getParameter("age")));
		customer.setEmail(request.getParameter("email"));
		customer.setPassword(request.getParameter("password"));
		
		com.rental.services.customerService service = new com.rental.services.customerService();
		service.regCustomer(customer);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("Home.jsp");
		
		dispatcher.forward(request, response);
	}

}
