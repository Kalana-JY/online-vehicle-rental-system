package com.rental.servlet;

import java.io.IOException; 

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.rental.services.paymentController;

@WebServlet("/paymentServlet")
public class paymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cardno = request.getParameter("cardno");
		String expdate = request.getParameter("expdate");
		String cvv = request.getParameter("cvv");
		String name = request.getParameter("name");
		String totalAmount = request.getParameter("totalAmount");
		
		boolean isTrue;
		
		isTrue = paymentController.insertdata(cardno,expdate,cvv,name,totalAmount);
		
		if(isTrue == true) {
			String alertMessage = "The payment has been completed and the booking has been made.";
			response.getWriter().println("<script>alert('" + alertMessage + "'); window.location.href='Home.jsp';</script>");		
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
	}

}
