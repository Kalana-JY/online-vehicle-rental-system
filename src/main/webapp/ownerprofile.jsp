<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>User Profile - On The Go Rentals</title>

    <!-- Tailwind CSS CDN -->
    <script src="https://cdn.tailwindcss.com"></script>

    <!-- Font Awesome CDN -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

    <style>
        html, body {
            height: 100%;
        }
    </style>
</head>
<body class="bg-gray-100 min-h-screen flex flex-col">

    <!-- Header -->
    <header>
        <%@ include file="\Partials\Header.jsp" %>
    </header>

    <!-- Main Content -->
    <main class="flex-grow flex items-center justify-center p-4">
        <div class="bg-white shadow-lg rounded-lg p-8 max-w-2xl w-full">
            <c:set var="cus" value="${Owner}" />

            <h2 class="text-2xl font-bold text-blue-600 border-b-2 border-blue-400 pb-2 text-center">
                <i class="fa-solid fa-user-circle text-blue-500 mr-2"></i>User Profile Details
            </h2>
            <h3 class="text-green-600 text-xl font-semibold text-center mt-2">Welcome, ${cus.name}!</h3>

            <!-- Aligned User Info -->
            <div class="grid grid-cols-2 gap-x-4 gap-y-3 mt-6 text-sm text-gray-700 max-w-md mx-auto">
                <div class="text-right font-semibold">Name:</div>
                <div class="text-left">${cus.name}</div>

                <div class="text-right font-semibold">Email:</div>
                <div class="text-left">${cus.email}</div>

                <div class="text-right font-semibold">Password:</div>
                <div class="text-left">${cus.password}</div>

                <div class="text-right font-semibold">Address:</div>
                <div class="text-left">${cus.address}</div>

                <div class="text-right font-semibold">City:</div>
                <div class="text-left">${cus.city}</div>

                <div class="text-right font-semibold">Gender:</div>
                <div class="text-left">${cus.gender}</div>

                <div class="text-right font-semibold">NIC Number:</div>
                <div class="text-left">${cus.idnumber}</div>

                <div class="text-right font-semibold">Contact No:</div>
                <div class="text-left">${cus.contactno}</div>
            </div>

            <!-- Action Buttons -->
            <div class="flex flex-wrap justify-center gap-4 mt-8">
                <!-- Update Button -->
                <form action="ownerUpdate.jsp" method="post">
                    <input type="hidden" name="name" value="${cus.name}">
                    <input type="hidden" name="email" value="${cus.email}">
                    <input type="hidden" name="password" value="${cus.password}">
                    <input type="hidden" name="address" value="${cus.address}">
                    <input type="hidden" name="city" value="${cus.city}">
                    <input type="hidden" name="gender" value="${cus.gender}">
                    <input type="hidden" name="idnumber" value="${cus.idnumber}">
                    <input type="hidden" name="contactno" value="${cus.contactno}">
                    <button type="submit"
                            class="bg-orange-500 hover:bg-orange-600 text-white px-6 py-2 rounded-lg transition">
                        <i class="fa-solid fa-pen-to-square mr-2"></i>Update Data
                    </button>
                </form>

                <!-- Delete Button -->
                <form action="DeleteOwner" method="post" onsubmit="return confirmDelete()">
                    <input type="hidden" name="email" value="${cus.email}">
                    <button type="submit"
                            class="bg-red-500 hover:bg-red-600 text-white px-6 py-2 rounded-lg transition">
                        <i class="fa-solid fa-trash mr-2"></i>Delete Account
                    </button>
                </form>
            </div>

            <!-- Navigation Buttons -->
            <div class="flex flex-col justify-center items-center gap-4 mt-6">
                <!-- Vehicle Details -->
                <form action="adminVehicles" method="post" class="w-full sm:w-auto">
                    <button type="submit"
                            class="bg-blue-500 hover:bg-blue-600 text-white px-5 py-2 rounded-lg w-full sm:w-auto">
                        <i class="fa-solid fa-car mr-2"></i>Vehicle Details
                    </button>
                </form>

                <!-- Add Vehicle -->
                <form action="newVehicle.jsp" method="post" class="w-full sm:w-auto">
                    <button type="submit"
                            class="bg-green-500 hover:bg-green-600 text-white px-5 py-2 rounded-lg w-full sm:w-auto">
                        <i class="fa-solid fa-plus mr-2"></i>Add Vehicle
                    </button>
                </form>
            </div>
        </div>
    </main>

    <!-- Footer -->
    <footer>
        <%@ include file="\Partials\Footer.jsp" %>
    </footer>

    <!-- Confirm Delete JS -->
    <script>
        function confirmDelete() {
            return confirm("Are you sure you want to delete your account? This action cannot be undone.");
        }
    </script>
</body>
</html>
