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


@WebServlet("/staffLogin")
public class staffLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public staffLogin() {
        super();
        
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		staff stf=new staff();
		stf.setEmail(request.getParameter("email"));
		stf.setPassword(request.getParameter("password"));
		
		staffService service=new staffService();
		boolean status=service.validate(stf);
		
		if(status) {
			staff loginedStf=service.getOne(stf);
			RequestDispatcher dispatcher =request.getRequestDispatcher("Staff.jsp");
			request.setAttribute("staff",loginedStf);
			dispatcher.forward(request, response);
		}else {
			RequestDispatcher dispatcher =request.getRequestDispatcher("staffLogin.jsp");
			dispatcher.forward(request, response);
		}
		
		
	}

}
