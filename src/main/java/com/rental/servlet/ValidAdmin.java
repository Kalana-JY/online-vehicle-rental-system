package com.rental.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/ValidAdmin")
public class ValidAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public ValidAdmin() {
        super();
        
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		com.rental.model.Admin admin = new com.rental.model.Admin();
		
		admin.setEmail(request.getParameter("email"));
		admin.setPassword(request.getParameter("password"));
		
		com.rental.services.AdminServices service = new com.rental.services.AdminServices();
		
		boolean status = service.validAdmin(admin);
		
		if(status) {
			com.rental.model.Admin loginAd = service.getOne(admin);
			HttpSession session = request.getSession();
			session.setAttribute("admin", loginAd);
			response.sendRedirect("DashboardAdmin.jsp");
		} else {
			request.setAttribute("Error", "Invalid Email or Password!");
			RequestDispatcher dispatcher = request.getRequestDispatcher("adminLogin.jsp");
			dispatcher.forward(request, response);
		}
		
	}

}
