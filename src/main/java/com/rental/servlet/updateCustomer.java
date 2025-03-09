package com.rental.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/updateCustomer")
public class updateCustomer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public updateCustomer() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		com.rental.model.Customer cus = new com.rental.model.Customer();
		
		cus.setName(request.getParameter("name"));
		cus.setAge(Integer.parseInt(request.getParameter("age")));
		cus.setEmail(request.getParameter("email"));
		cus.setPassword(request.getParameter("password"));
		
		com.rental.services.customerService service = new com.rental.services.customerService();
		
		service.updateCustomer(cus);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("singleData");
		
		dispatcher.forward(request, response);
	}

}
