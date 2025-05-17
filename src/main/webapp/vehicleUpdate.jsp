<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Update Vehicle</title>

    <!-- Tailwind CSS CDN -->
    <script src="https://cdn.tailwindcss.com"></script>

    <!-- Font Awesome CDN -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" />
</head>
<body class="bg-gray-100 text-gray-800 min-h-screen py-10">

<div class="max-w-xl mx-auto bg-white rounded-xl shadow-lg p-8">
    <h2 class="text-2xl font-bold text-blue-700 flex items-center gap-2 border-b pb-3 mb-6">
        <i class="fa-solid fa-pen-to-square"></i> Update Vehicle Details
    </h2>

    <form method="post" action="adminVehicle" enctype="multipart/form-data" onsubmit="return validateForm()">
        <input type="hidden" name="enginenumber" id="enginenumber" value="${param.enginenumber}" readonly>

        <!-- Vehicle Type -->
        <div class="mb-4">
            <label class="font-semibold block mb-1">Vehicle Type</label>
            <select name="vehicletype" id="vehicletype" class="w-full border border-gray-300 rounded px-3 py-2">
                <option value="">Select Type</option>
                <option value="Car" ${param.vehicletype == 'Car' ? 'selected' : ''}>Car</option>
                <option value="Van" ${param.vehicletype == 'Van' ? 'selected' : ''}>Van</option>
                <option value="Bus" ${param.vehicletype == 'Bus' ? 'selected' : ''}>Bus</option>
                <option value="Motorcycle" ${param.vehicletype == 'Motorcycle' ? 'selected' : ''}>Motorcycle</option>
            </select>
        </div>

        <!-- Transmission Type -->
        <div class="mb-4">
            <label class="font-semibold block mb-1">Transmission Type</label>
            <select name="transmissiontype" id="transmissiontype" class="w-full border border-gray-300 rounded px-3 py-2">
                <option value="">Select Transmission</option>
                <option value="Manual" ${param.transmissiontype == 'Manual' ? 'selected' : ''}>Manual</option>
                <option value="Auto" ${param.transmissiontype == 'Auto' ? 'selected' : ''}>Auto</option>
            </select>
        </div>

        <!-- Vehicle Number -->
        <div class="mb-4">
            <label class="font-semibold block mb-1">Vehicle Number</label>
            <input type="text" name="vehiclenumber" id="vehiclenumber" value="${param.vehiclenumber}" 
                   class="w-full border border-gray-300 rounded px-3 py-2" />
        </div>

        <!-- Vehicle Color -->
        <div class="mb-4">
            <label class="font-semibold block mb-1">Vehicle Color</label>
            <input type="text" name="vehiclecolor" id="vehiclecolor" value="${param.vehiclecolor}" 
                   class="w-full border border-gray-300 rounded px-3 py-2" />
        </div>

        <!-- Seating Capacity -->
        <div class="mb-4">
            <label class="font-semibold block mb-1">Seating Capacity</label>
            <select name="seatingcapacity" id="seatingcapacity" class="w-full border border-gray-300 rounded px-3 py-2">
                <option value="">Select Capacity</option>
                <option value="2" ${param.seatingcapacity == '2' ? 'selected' : ''}>2</option>
                <option value="4" ${param.seatingcapacity == '4' ? 'selected' : ''}>4</option>
                <option value="6" ${param.seatingcapacity == '6' ? 'selected' : ''}>6</option>
                <option value="8" ${param.seatingcapacity == '8' ? 'selected' : ''}>8</option>
            </select>
        </div>

        <!-- Fuel Type -->
        <div class="mb-4">
            <label class="font-semibold block mb-1">Fuel Type</label>
            <select name="fueltype" id="fueltype" class="w-full border border-gray-300 rounded px-3 py-2">
                <option value="">Select Fuel</option>
                <option value="Petrol" ${param.fueltype == 'Petrol' ? 'selected' : ''}>Petrol</option>
                <option value="Diesel" ${param.fueltype == 'Diesel' ? 'selected' : ''}>Diesel</option>
                <option value="Electric" ${param.fueltype == 'Electric' ? 'selected' : ''}>Electric</option>
                <option value="Hybrid" ${param.fueltype == 'Hybrid' ? 'selected' : ''}>Hybrid</option>
            </select>
        </div>

        <!-- Upload Vehicle Photo -->
        <div class="mb-4">
            <label class="font-semibold block mb-1">Upload Vehicle Photo</label>
            <input type="file" name="vehiclephoto" id="vehiclephoto" accept="image/*" 
                   class="block w-full text-sm text-gray-600 file:mr-4 file:py-2 file:px-4
                   file:rounded file:border-0 file:text-sm file:font-semibold
                   file:bg-blue-50 file:text-blue-700 hover:file:bg-blue-100"/>

            <div class="mt-3" id="imagePreview">
                <c:if test="${not empty param.vehiclephoto}">
                    <img id="currentPhoto" src="${param.vehiclephoto}" alt="Current Vehicle Photo" class="w-48 h-48 object-cover border rounded">
                    <p class="text-sm text-gray-500 mt-1">Current photo</p>
                </c:if>
            </div>
        </div>

        <!-- Submit Button -->
        <button type="submit" class="w-full bg-blue-600 hover:bg-blue-700 text-white font-semibold py-2 px-4 rounded flex items-center justify-center gap-2">
            <i class="fa-solid fa-floppy-disk"></i> Update Vehicle
        </button>
    </form>
</div>

<script>
    function validateForm() {
        const vehicleNumber = document.getElementById('vehiclenumber').value;
        if (!vehicleNumber) {
            alert('Please enter vehicle number');
            return false;
        }
        return true;
    }

    // Preview uploaded image
    document.getElementById('vehiclephoto').addEventListener('change', function (e) {
        const file = e.target.files[0];
        if (file) {
            const reader = new FileReader();
            reader.onload = function (event) {
                // Hide old image if present
                const oldImage = document.getElementById('currentPhoto');
                if (oldImage) {
                    oldImage.style.display = 'none';
                }

                const preview = document.getElementById('imagePreview');

                // Remove any previously added new image preview
                const newImage = document.getElementById('newPreviewImage');
                if (newImage) {
                    newImage.remove();
                }

                const newImg = document.createElement('img');
                newImg.id = 'newPreviewImage';
                newImg.src = event.target.result;
                newImg.alt = "New Vehicle Photo";
                newImg.className = "w-48 h-48 object-cover border rounded mt-2";
                preview.appendChild(newImg);
            };
            reader.readAsDataURL(file);
        }
    });
</script>

</body>
</html>
