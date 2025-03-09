package com.rental.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public Login() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		com.rental.model.Customer customer = new com.rental.model.Customer();
		
		customer.setEmail(request.getParameter("email"));
		customer.setPassword(request.getParameter("password"));
		
		com.rental.services.customerService service = new com.rental.services.customerService();
		
		boolean status = service.validation(customer);
		
		if(status) {
			com.rental.model.Customer loginedCus = service.getOne(customer);
			HttpSession session = request.getSession();
			session.setAttribute("customer", loginedCus);
			response.sendRedirect("Home.jsp");
		} else {
			request.setAttribute("Error", "Invalid email or password.");
			RequestDispatcher dispatcher = request.getRequestDispatcher("Login.jsp");
			dispatcher.forward(request, response);
		}
		
		doGet(request, response);
	}

}
