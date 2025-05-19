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


@WebServlet("/replyMsg")
public class replyMsg extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public replyMsg() {
        super();
        
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		messages msg=new messages();
		
		msg.setEmail(request.getParameter("email"));
		msg.setReply(request.getParameter("reply"));
		
		messageService service= new messageService();
		
		service.sendReply(msg);
		
		RequestDispatcher dispatcher=request.getRequestDispatcher("displayMessage");
		
		dispatcher.forward(request, response);
	}

}
