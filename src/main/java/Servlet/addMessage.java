package Servlet;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.rental.model.*;
import com.rental.services.*;


@WebServlet("/addMessage")
public class addMessage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public addMessage() {
        super();
        
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		messages msg=new messages();
		
		msg.setEmail(request.getParameter("email"));
		msg.setName(request.getParameter("name"));
		msg.setPhone(request.getParameter("phone"));
		msg.setMessage(request.getParameter("message"));
		
		staffService service=new staffService();
		service.sendmsg(msg);
		
		RequestDispatcher dispatcher=request.getRequestDispatcher("Home.jsp");
		
		dispatcher.forward(request, response);
	}

}
