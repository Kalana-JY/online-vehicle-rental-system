<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Vehicle Profile</title>

    <!-- Tailwind CSS CDN -->
    <script src="https://cdn.tailwindcss.com"></script>

    <!-- Font Awesome CDN -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" />
</head>
<body class="bg-gray-100 min-h-screen text-gray-800">

<%@ include file="\Partials\Header.jsp" %>

<div class="container mx-auto p-6">
    <div class="bg-white shadow-lg rounded-xl p-6">
        <h2 class="text-2xl font-bold text-orange-500 border-b pb-3 flex items-center">
            <i class="fa-solid fa-car-side mr-2"></i> Vehicle Profile
        </h2>

        <c:choose>
            <c:when test="${not empty vehicle}">
                <div class="overflow-x-auto mt-6">
                    <table class="min-w-full divide-y divide-gray-200">
                        <thead class="bg-orange-500 text-white">
                            <tr>
                                <th class="px-4 py-3 text-left text-sm font-semibold">Vehicle Type</th>
                                <th class="px-4 py-3 text-left text-sm font-semibold">Transmission</th>
                                <th class="px-4 py-3 text-left text-sm font-semibold">Number</th>
                                <th class="px-4 py-3 text-left text-sm font-semibold">Color</th>
                                <th class="px-4 py-3 text-left text-sm font-semibold">Engine No</th>
                                <th class="px-4 py-3 text-left text-sm font-semibold">Seats</th>
                                <th class="px-4 py-3 text-left text-sm font-semibold">Fuel</th>
                                <th class="px-4 py-3 text-left text-sm font-semibold">Actions</th>
                            </tr>
                        </thead>
                        <tbody class="divide-y divide-gray-100 bg-white">
                            <c:forEach var="vehi" items="${vehicle}">
                                <tr class="hover:bg-gray-50">
                                    <td class="px-4 py-3">${vehi.vehicletype}</td>
                                    <td class="px-4 py-3">${vehi.transmissiontype}</td>
                                    <td class="px-4 py-3">${vehi.vehiclenumber}</td>
                                    <td class="px-4 py-3">${vehi.vehiclecolor}</td>
                                    <td class="px-4 py-3">${vehi.enginenumber}</td>
                                    <td class="px-4 py-3">${vehi.seatingcapacity}</td>
                                    <td class="px-4 py-3">${vehi.fueltype}</td>
                                    <td class="px-4 py-3">
                                        <div class="flex gap-2">
                                            <form action="vehicleDataButton" method="post">
                                                <input type="hidden" name="enginenumber" value="${vehi.enginenumber}">
                                                <button type="submit" class="bg-orange-500 hover:bg-orange-600 text-white text-sm px-3 py-1 rounded-md">
                                                    <i class="fa-solid fa-eye mr-1"></i> Edit
                                                </button>
                                            </form>
                                            <form action="deleteVehicle" method="post" onsubmit="return confirmDelete()">
                                                <input type="hidden" name="enginenumber" value="${vehi.enginenumber}">
                                                <button type="submit" class="bg-red-500 hover:bg-red-600 text-white text-sm px-3 py-1 rounded-md">
                                                    <i class="fa-solid fa-trash-alt mr-1"></i> Delete
                                                </button>
                                            </form>
                                        </div>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>

                    <!-- Add Vehicle -->
                    <form action="newVehicle.jsp" method="post" class="w-full sm:w-auto mt-4">
                        <button type="submit"
                                class="bg-green-500 hover:bg-green-600 text-white px-5 py-2 rounded-lg w-full sm:w-auto">
                            <i class="fa-solid fa-plus mr-2"></i>Add Vehicle
                        </button>
                    </form>

                    <!-- Profile Button Below Table -->
                    <div class="mt-4 flex justify-start">
                        <a href="ownerprofile.jsp"
                           class="inline-flex items-center bg-gray-700 text-white px-4 py-2 text-sm rounded-md hover:bg-gray-800 transition">
                            <i class="fas fa-user mr-2"></i> Profile
                        </a>
                    </div>
                </div>
            </c:when>

            <c:otherwise>
                <div class="text-center mt-10 text-gray-500">
                    <i class="fa-solid fa-triangle-exclamation text-4xl text-yellow-400 mb-4"></i>
                    <p class="text-lg">No vehicles found. Please add a vehicle.</p>
                </div>
            </c:otherwise>
        </c:choose>
    </div>
</div>

<%@ include file="\Partials\Footer.jsp" %>

<script>
    function confirmDelete() {
        return confirm("Are you sure you want to delete this vehicle? This action cannot be undone.");
    }
</script>

</body>
</html>
