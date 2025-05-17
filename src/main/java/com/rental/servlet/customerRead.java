package com.rental.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.rental.services.customerDBUtil;

@WebServlet("/customerRead")
public class customerRead extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public customerRead() {
        super();
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		com.rental.services.customerDBUtil service = new com.rental.services.customerDBUtil();
		
		ArrayList<com.rental.model.Customer> cusDetails = (ArrayList<com.rental.model.Customer>) customerDBUtil.getAllCustomerDetails();
		request.setAttribute("cusDetails", cusDetails);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("DashboardAdmin.jsp");
		
		dispatcher.forward(request, response);
	}

}
