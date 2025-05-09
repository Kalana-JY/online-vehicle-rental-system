package com.rental.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeleteAdmin")
public class DeleteAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public DeleteAdmin() {
        super();
        
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		com.rental.model.Admin admin = new com.rental.model.Admin();
		admin.setEmail(request.getParameter("email"));
		
		com.rental.services.AdminServices service = new com.rental.services.AdminServices();
		service.deleteAdmin(admin);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("DashboardAdmin.jsp");
		dispatcher.forward(request, response);
		
	}

}
