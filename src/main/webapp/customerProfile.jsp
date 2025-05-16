<%@ page language="java" contentType="text/html; charset=ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Customer Profile</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" />
</head>
<body class="bg-orange-50 text-gray-800">
	
	
	

    <!-- Welcome Message -->
    <c:if test="${not empty cusDetails}">
        <c:set var="firstCustomer" value="${cusDetails[0]}" />
        <div class="ml-20 mt-20 text-left text-3xl font-bold text-orange-600">
             Welcome ${firstCustomer.firstname} ${firstCustomer.lastname}!
        </div>
    </c:if>

    <!-- Customer Profile Card -->
    <div class="flex flex-col items-center mt-10">
        <div class="w-full max-w-md bg-white border border-orange-300 rounded-lg shadow-xl p-6">
            <h1 class="text-center text-2xl font-bold text-orange-600 mb-6">My Profile</h1>
            <div class="space-y-4">
                <div class="flex items-center">
                    <i class="fas fa-user text-orange-500 mr-2"></i>
                    <span class="font-semibold text-gray-700 mr-2">First Name:</span>
                    <span class="text-gray-800">${firstCustomer.firstname}</span>
                </div>
                <div class="flex items-center">
                    <i class="fas fa-user text-orange-500 mr-2"></i>
                    <span class="font-semibold text-gray-700 mr-2">Last Name:</span>
                    <span class="text-gray-800">${firstCustomer.lastname}</span>
                </div>
                <div class="flex items-center">
                    <i class="fas fa-envelope text-orange-500 mr-2"></i>
                    <span class="font-semibold text-gray-700 mr-2">Email:</span>
                    <span class="text-gray-800">${firstCustomer.email}</span>
                </div>
                <div class="flex items-center">
                    <i class="fas fa-lock text-orange-500 mr-2"></i>
                    <span class="font-semibold text-gray-700 mr-2">Password:</span>
              		<span class="text-gray-800">********</span>
                </div>
            </div>
            <div class="flex flex-wrap justify-around mt-8">
                <!-- Update Button -->
                <c:url value="updateCustomer.jsp" var="cusupdate">
                    <c:param name="id" value="${firstCustomer.id}" />
                    <c:param name="firstname" value="${firstCustomer.firstname}" />
                    <c:param name="lastname" value="${firstCustomer.lastname}" />
                    <c:param name="email" value="${firstCustomer.email}" />
                    <c:param name="password" value="${firstCustomer.password}" />
                </c:url>
                <a href="${cusupdate}" class="bg-orange-500 hover:bg-orange-600 transition-all text-white text-sm font-semibold px-6 py-3 rounded-md shadow flex items-center gap-2">
                    <i class="fas fa-pen"></i> Update My Data
                </a>

                <!-- Delete Button -->
                <c:url value="deleteCustomer.jsp" var="cusdelete">
                    <c:param name="id" value="${firstCustomer.id}" />
                    <c:param name="firstname" value="${firstCustomer.firstname}" />
                    <c:param name="lastname" value="${firstCustomer.lastname}" />
                    <c:param name="email" value="${firstCustomer.email}" />
                    <c:param name="password" value="${firstCustomer.password}" />
                </c:url>
                <a href="${cusdelete}" class="bg-red-500 hover:bg-red-600 transition-all text-white text-sm font-semibold px-6 py-3 rounded-md shadow flex items-center gap-2">
                    <i class="fas fa-trash"></i> Delete My Account
                </a>
                
                <!-- Sign Out Button -->
            <div class="flex justify-center mt-4">
                <a href="customerInsert.jsp" class="bg-orange-500 hover:bg-orange-600 transition-all text-white text-sm font-semibold px-6 py-3 rounded-md shadow flex items-center gap-2">
                    <i class="fas fa-right-from-bracket"></i> Sign Out
                </a>
            </div>
        </div>
    </div>
    
</body>
</html>

