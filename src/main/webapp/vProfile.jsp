<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Vehicle Details</title>
    <!-- Tailwind CSS CDN -->
    <script src="https://cdn.tailwindcss.com"></script>
    <!-- Font Awesome CDN -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" />
</head>
<body class="bg-gray-100 min-h-screen flex flex-col">

<%@ include file="/Partials/Header.jsp" %>

<div class="flex-1 flex items-center justify-center py-10 px-4">
    <div class="w-full max-w-xl bg-white shadow-md rounded-2xl p-8 space-y-6">
        <h2 class="text-3xl font-bold text-blue-700 border-b pb-4 flex items-center gap-2">
            <i class="fas fa-car-side"></i> Vehicle Details
        </h2>

        <c:set var="vehi" value="${vehicle}"/>

        <fieldset disabled class="flex flex-col gap-6">
            <legend class="sr-only">Vehicle Information (Read Only)</legend>

            <div>
                <label class="text-sm font-semibold text-gray-700 flex items-center gap-2">
                    <i class="fas fa-tags"></i> Vehicle Type
                </label>
                <input type="text" class="mt-1 w-full border rounded px-3 py-2 bg-gray-100 text-gray-700"
                       value="${vehi.vehicletype}">
            </div>

            <div>
                <label class="text-sm font-semibold text-gray-700 flex items-center gap-2">
                    <i class="fas fa-cogs"></i> Transmission Type
                </label>
                <input type="text" class="mt-1 w-full border rounded px-3 py-2 bg-gray-100 text-gray-700"
                       value="${vehi.transmissiontype}">
            </div>

            <div>
                <label class="text-sm font-semibold text-gray-700 flex items-center gap-2">
                    <i class="fas fa-id-card"></i> Vehicle Number
                </label>
                <input type="text" class="mt-1 w-full border rounded px-3 py-2 bg-gray-100 text-gray-700"
                       value="${vehi.vehiclenumber}">
            </div>

            <div>
                <label class="text-sm font-semibold text-gray-700 flex items-center gap-2">
                    <i class="fas fa-fill-drip"></i> Vehicle Color
                </label>
                <input type="text" class="mt-1 w-full border rounded px-3 py-2 bg-gray-100 text-gray-700"
                       value="${vehi.vehiclecolor}">
            </div>

            <div>
                <label class="text-sm font-semibold text-gray-700 flex items-center gap-2">
                    <i class="fas fa-engine-warning"></i> Engine Number
                </label>
                <input type="text" class="mt-1 w-full border rounded px-3 py-2 bg-gray-100 text-gray-700"
                       value="${vehi.enginenumber}">
            </div>

            <div>
                <label class="text-sm font-semibold text-gray-700 flex items-center gap-2">
                    <i class="fas fa-chair"></i> Seating Capacity
                </label>
                <input type="text" class="mt-1 w-full border rounded px-3 py-2 bg-gray-100 text-gray-700"
                       value="${vehi.seatingcapacity}">
            </div>

            <div>
                <label class="text-sm font-semibold text-gray-700 flex items-center gap-2">
                    <i class="fas fa-gas-pump"></i> Fuel Type
                </label>
                <input type="text" class="mt-1 w-full border rounded px-3 py-2 bg-gray-100 text-gray-700"
                       value="${vehi.fueltype}">
            </div>

            <div>
                <label class="text-sm font-semibold text-gray-700 flex items-center gap-2">
                    <i class="fas fa-image"></i> Vehicle Photo
                </label>
                <div class="mt-2">
                    <c:if test="${not empty vehi.vehiclephoto}">
                        <img src="${vehi.vehiclephoto}" alt="Vehicle Photo"
                             class="w-full max-w-xs object-cover rounded shadow border border-gray-300">
                    </c:if>
                    <c:if test="${empty vehi.vehiclephoto}">
                        <p class="text-gray-500 italic">No image available</p>
                    </c:if>
                </div>
            </div>
        </fieldset>

        <form action="vehicleUpdate.jsp" method="post" class="text-right pt-6">
            <!-- Hidden fields to pass data -->
            <input type="hidden" name="vehicletype" value="${vehi.vehicletype}">
            <input type="hidden" name="transmissiontype" value="${vehi.transmissiontype}">
            <input type="hidden" name="vehiclenumber" value="${vehi.vehiclenumber}">
            <input type="hidden" name="vehiclecolor" value="${vehi.vehiclecolor}">
            <input type="hidden" name="enginenumber" value="${vehi.enginenumber}">
            <input type="hidden" name="seatingcapacity" value="${vehi.seatingcapacity}">
            <input type="hidden" name="fueltype" value="${vehi.fueltype}">
            <input type="hidden" name="vehiclephoto" value="${vehi.vehiclephoto}">

            <button type="submit"
                    class="inline-flex items-center gap-2 px-6 py-2 bg-blue-600 text-white rounded hover:bg-blue-700 transition duration-200">
                <i class="fas fa-pen-to-square"></i> Update Vehicle
            </button>
        </form>
    </div>
</div>

<%@ include file="/Partials/Footer.jsp" %>

</body>
</html>
