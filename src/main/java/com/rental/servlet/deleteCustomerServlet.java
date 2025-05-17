package com.rental.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.rental.model.Customer;
import com.rental.services.customerDBUtil;


@WebServlet("/deleteCustomerServlet")
public class deleteCustomerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		boolean isTrue;
		
		isTrue = customerDBUtil.deleteCustomer(id);
		
		if(isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("customerInsert.jsp");
			dispatcher.forward(request, response);
		}
		else {
			List<Customer> cusDetails = customerDBUtil.getCustomerDetails(id);
			request.setAttribute("cusDetails", cusDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("customerProfile.jsp");
			dispatcher.forward(request, response);
		}
		
	}

}
