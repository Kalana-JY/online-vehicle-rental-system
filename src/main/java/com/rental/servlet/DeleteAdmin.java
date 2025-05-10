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
		
		String emailToDelete = request.getParameter("email");
		
		com.rental.model.Admin admin = new com.rental.model.Admin();
		admin.setEmail(emailToDelete);
		
		com.rental.services.AdminServices service = new com.rental.services.AdminServices();
		service.deleteAdmin(admin);
		
		com.rental.model.Admin loggedInAdmin = (com.rental.model.Admin) request.getSession().getAttribute("admin");

		if (loggedInAdmin != null && emailToDelete.equals(loggedInAdmin.getEmail())) {
		    request.getSession().invalidate();
		    response.sendRedirect("LoginAdmin.jsp");
		    return;
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("DashboardAdmin.jsp");
		dispatcher.forward(request, response);
		
	}

}
