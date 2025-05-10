package com.rental.servlet;

import java.io.IOException; 
import java.io.InputStream;
import java.io.File;
import java.nio.file.Paths;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.Part;

@MultipartConfig(
	    fileSizeThreshold = 1024 * 1024 * 2,  // 2MB
	    maxFileSize = 1024 * 1024 * 10,       // 10MB
	    maxRequestSize = 1024 * 1024 * 50     // 50MB
	)

@WebServlet("/AddAdmin")
public class AddAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public AddAdmin() {
        super();
        
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		com.rental.model.Admin admin = new com.rental.model.Admin();
		
		
		admin.setName(request.getParameter("name"));
		admin.setEmail(request.getParameter("email"));
		admin.setPassword(request.getParameter("password"));
		admin.setFileName("default.png");

		com.rental.services.AdminServices service = new com.rental.services.AdminServices();
		
		try {
			
			service.addAdmin(admin);
			
			response.sendRedirect("DashboardAdmin.jsp");
			
		} catch (Exception e) {
			
			request.setAttribute("Email is already in the system!", e.getMessage());
			RequestDispatcher dispatcher = request.getRequestDispatcher("DashboardAdmin.jsp");
			dispatcher.forward(request, response);
		}
		
	}

}
