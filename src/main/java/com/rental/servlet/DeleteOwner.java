package com.rental.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.rental.model.Owner;
import com.rental.services.OwnerService;


@WebServlet("/DeleteOwner")
public class DeleteOwner extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public DeleteOwner() {
        super();
        
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Owner cus = new Owner();
		cus.setEmail(request.getParameter("email"));
		
		OwnerService service = new OwnerService();
		service.deleteCustomer(cus);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("ownerLogin.jsp");
		
		dispatcher.forward(request, response);
	}

}
