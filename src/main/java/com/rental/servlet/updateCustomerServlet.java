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


@WebServlet("/updateCustomerServlet")
public class updateCustomerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		boolean isTrue;
		
		isTrue = customerDBUtil.updatecustomer(id, firstname, lastname, email, password);
		
		if(isTrue == true) {
			
			List<Customer> cusDetails = customerDBUtil.getCustomerDetails(id);
			request.setAttribute("cusDetails", cusDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("customerProfile.jsp");
			dis.forward(request, response);
		}
		else {
			
			List<Customer> cusDetails = customerDBUtil.getCustomerDetails(id);
			request.setAttribute("cusDetails", cusDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("updateCustomer.jsp");
			dis.forward(request, response);
		}
	}

}
