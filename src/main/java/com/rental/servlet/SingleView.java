package com.rental.servlet;

import java.io.IOException; 

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/SingleView")
public class SingleView extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public SingleView() {
        super();
        
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		com.rental.model.Admin admin = new com.rental.model.Admin();
		
		admin.setEmail(request.getParameter("email"));
		com.rental.services.AdminServices service = new com.rental.services.AdminServices();
		
		com.rental.model.User adm = service.singleData(admin);
		RequestDispatcher dispatcher = request.getRequestDispatcher("DashboardAdmin.jsp");
		
		request.setAttribute("admin", adm);
		
		dispatcher.forward(request, response);
		
	}

}
