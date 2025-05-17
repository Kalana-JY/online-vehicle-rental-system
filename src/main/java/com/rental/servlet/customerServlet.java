//package com.customer;
//
//import java.io.IOException;
//import java.io.PrintWriter;
//import java.util.List;
//
//import javax.servlet.RequestDispatcher;
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//@WebServlet("/customerServlet")
//public class customerServlet extends HttpServlet {
//	private static final long serialVersionUID = 1L;
//
//	
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		
//		PrintWriter out = response.getWriter();
//		response.setContentType("text/html");
//		
//		
//		String email1 = request.getParameter("email");
//		String password = request.getParameter("password");
//		
//		boolean isTrue;
//		
//		isTrue = customerDBUtil.validate(email1, password);
//		
//		if(isTrue == true) {
//			
//			List<Customer> cusDetails = customerDBUtil.getCustomer(email1);
//			request.setAttribute("cusDetails", cusDetails);
//			RequestDispatcher dis = request.getRequestDispatcher("Home.jsp");
//			dis.forward(request, response);
//			
//		}
//		else {
//			out.println("<script type='text/javascript'>");
//			out.println("alert('Your email or password is incorrect');");
//			out.println("location='login.jsp'");
//			out.println("</script>");
//			
//		}
//		
//	}
//
//}


package com.rental.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.rental.model.Customer;
import com.rental.services.customerDBUtil;

@WebServlet("/customerServlet")
public class customerServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");
        
        String email1 = request.getParameter("email");
        String password = request.getParameter("password");

        boolean isTrue = customerDBUtil.validate(email1, password);

        if(isTrue) {
            List<Customer> cusDetails = customerDBUtil.getCustomer(email1);
            HttpSession session = request.getSession();
            session.setAttribute("cusDetails", cusDetails);
            RequestDispatcher dis = request.getRequestDispatcher("Home.jsp");
            dis.forward(request, response);
        } else {
            PrintWriter out = response.getWriter();
            out.println("<script type='text/javascript'>");
            out.println("alert('Your email or password is incorrect');");
            out.println("location='customerLogin.jsp';");
            out.println("</script>");
        }
    }
}
