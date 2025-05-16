package com.rental.servlet;

import java.io.File; 
import java.io.IOException;
import java.nio.file.Paths;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 1, // 1 MB
		maxFileSize = 1024 * 1024 * 10, // 10 MB
		maxRequestSize = 1024 * 1024 * 100 // 100 MB
)

@WebServlet("/UpdateAdmin")
public class UpdateAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		com.rental.model.Admin admin = new com.rental.model.Admin();

		admin.setId(Integer.parseInt(request.getParameter("id")));
		admin.setName(request.getParameter("name"));
		admin.setEmail(request.getParameter("email"));
		admin.setPassword(request.getParameter("password"));
		admin.setAddress(request.getParameter("address"));
		admin.setPhoneNumber(request.getParameter("phoneNumber"));
		/* admin.setFileName(request.getParameter("fileName")); */

		
		Part filePart = request.getPart("profileImage");
		String fileName = null;
		if (filePart != null && filePart.getSize() > 0) {
		    // Create uploads directory if it doesn't exist
		    String uploadPath = getServletContext().getRealPath("") + "uploads";
		    new File(uploadPath).mkdirs();
		    
		    // Save the file
		    fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();
		    filePart.write(uploadPath + File.separator + fileName);
		    admin.setFileName(fileName);
		} else {
		    // Get existing filename from session instead of request parameter
			com.rental.model.Admin currentAdmin = (com.rental.model.Admin) request.getSession().getAttribute("admin");
		    admin.setFileName(currentAdmin != null ? currentAdmin.getFileName() : "default.png");
		}
		 

		com.rental.services.AdminServices service = new com.rental.services.AdminServices();
		service.updateUser(admin);

		HttpSession session = request.getSession();
		session.setAttribute("admin", admin);

		RequestDispatcher dispatcher = request.getRequestDispatcher("DashboardAdmin.jsp");
		dispatcher.forward(request, response);
	}
}
