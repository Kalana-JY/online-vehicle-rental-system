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


@WebServlet("/addStaff")
public class addStaff extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public addStaff() {
        super();
        
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		staff stf =new staff();
		
		stf.setName(request.getParameter("name"));
		stf.setEmail(request.getParameter("email"));
		stf.setPassword(request.getParameter("password"));
		
		
		staffService service=new staffService();
		service.regStaff(stf);
		
		RequestDispatcher dispatcher=request.getRequestDispatcher("DashboardAdmin.jsp");
		
		dispatcher.forward(request, response);
	}

}
