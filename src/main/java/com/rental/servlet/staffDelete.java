package com.rental.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.rental.model.staff;
import com.rental.services.staffService;


@WebServlet("/staffDelete")
public class staffDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public staffDelete() {
        super();
        
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		staff stf = new staff();
        stf.setEmail(request.getParameter("email"));
        
        staffService service = new staffService();
        service.deleteStaff(stf);
        
        response.sendRedirect("DashboardAdmin.jsp");
		
	}

}
