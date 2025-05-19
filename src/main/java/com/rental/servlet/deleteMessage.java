package com.rental.servlet;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.rental.model.messages;
import com.rental.services.messageService;



@WebServlet("/deleteMessage")
public class deleteMessage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public deleteMessage() {
        super();
        
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		messages msg=new messages();
		msg.setEmail(request.getParameter("email"));
		
		messageService message = new messageService();
		message.deleteMessage(msg);
		
		RequestDispatcher dispatcher= request.getRequestDispatcher("displayMessage");
		
		
		dispatcher.forward(request, response);
	}

}
