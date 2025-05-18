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

@WebServlet("/updateVehicle")
public class updateVehicle extends HttpServlet {
    private static final long serialVersionUID = 1L;
       
    public updateVehicle() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.getWriter().append("Served at: ").append(request.getContextPath());
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        vehicle vehi = new vehicle();
        
        vehi.setVehicletype(request.getParameter("vehicletype"));
        vehi.setTransmissiontype(request.getParameter("transmissiontype"));
        vehi.setVehiclenumber(request.getParameter("vehiclenumber"));
        vehi.setVehiclecolor(request.getParameter("vehiclecolor"));
        vehi.setEnginenumber(request.getParameter("enginenumber"));
        
        String seatStr = request.getParameter("seatingcapacity");
        vehi.setSeatingcapacity(seatStr != null && !seatStr.isEmpty() ? Integer.parseInt(seatStr) : 0);
        
        vehi.setFueltype(request.getParameter("fueltype"));
        
        // Handle the photo upload 
        Part filePart = request.getPart("vehiclephoto");
        if (filePart != null && filePart.getSize() > 0) {
            InputStream fileContent = filePart.getInputStream();
            byte[] imageBytes = fileContent.readAllBytes();
            vehi.setVehiclephoto(imageBytes);
        } else {
            
            String existingPhoto = request.getParameter("vehiclephoto");
            if (existingPhoto != null && !existingPhoto.isEmpty()) {
                
                vehi.setVehiclephoto(null);
            }
        }
        
        vehicleService service = new vehicleService();
        service.updateVehicle(vehi);
        
        RequestDispatcher dispatcher = request.getRequestDispatcher("vehicleDataButton");
        dispatcher.forward(request, response);
    }
}