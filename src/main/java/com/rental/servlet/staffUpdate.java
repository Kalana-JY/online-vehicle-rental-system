package com.rental.servlet;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.rental.model.*;
import com.rental.services.*;


@WebServlet("/staffUpdate")
public class staffUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public staffUpdate() {
        super();
        
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		staff stf = new staff();
		
		stf.setEmail(request.getParameter("email"));
		stf.setName(request.getParameter("name"));
		stf.setPassword(request.getParameter("password"));
		
		staffService service=new staffService();
		service.updateStaff(stf);
		
		staff updatedStaff= service.getOne(stf);
		
		request.setAttribute("staff", updatedStaff);
		
		RequestDispatcher dispatcher=request.getRequestDispatcher("Staff.jsp");
		
		dispatcher.forward(request, response);
	}

}
