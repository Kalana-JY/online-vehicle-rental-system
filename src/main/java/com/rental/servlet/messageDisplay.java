package com.rental.servlet;

import java.io.IOException;

import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.rental.model.*;
import com.rental.services.*;


@WebServlet("/messageDisplay")
public class messageDisplay extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public messageDisplay() {
        super();
        
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		staffService sf=new staffService();
		ArrayList<messages> messages=sf.getAllMessages();
		request.setAttribute("cusMessages",messages);
		
		
		RequestDispatcher dispacher=request.getRequestDispatcher("Staff.jsp");
		dispacher.forward(request, response);
	}

}
