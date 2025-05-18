package com.rental.servlet;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.rental.model.vehicle;
import com.rental.services.vehicleService;


@WebServlet("/vehicleDataButton")
public class vehicleDataButton extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public vehicleDataButton() {
        super();
       
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		vehicle vehi = new vehicle();
//		vehi.setVehicletype(request.getParameter("vehicletype"));
//		vehi.setTransmissiontype(request.getParameter("transmissiontype"));
//		vehi.setVehiclenumber(request.getParameter("vehiclenumber"));
//		vehi.setVehiclecolor(request.getParameter("vehiclecolor"));
		vehi.setEnginenumber(request.getParameter("enginenumber"));
//		vehi.setSeatingcapacity(Integer.parseInt(request.getParameter("seatingcapacity")));
//		vehi.setFueltype(request.getParameter("fueltype"));
//		vehi.setVehiclephoto(request.getParameter("vehiclephoto"));
		
//		Part filePart = request.getPart("vehiclephoto");
//        InputStream inputStream = filePart.getInputStream();
//        byte[] imageBytes = inputStream.readAllBytes();
//        vehi.setVehiclephoto(imageBytes);
        
		vehicleService service = new vehicleService();
		vehicle vehicle = service.vehicleDataButton(vehi);
		RequestDispatcher dispatcher = request.getRequestDispatcher("vProfile.jsp");
		request.setAttribute("vehicle",vehicle);
		
		
		dispatcher.forward(request, response);
	}

}
