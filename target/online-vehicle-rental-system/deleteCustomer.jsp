<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Customer Delete Account</title>
 
  <script src="https://cdn.tailwindcss.com"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" />
  <style>
    body {
      color: black;
    }
  </style>
</head>
<body class="bg-orange-50 text-gray-800 flex items-center justify-center min-h-screen">
  
  <div class="w-full max-w-md bg-white border border-orange-300 rounded-lg shadow-xl p-8">
    <h1 class="text-center text-2xl font-bold text-orange-600 mb-6">Customer Delete Account</h1>
    
    <%
      String id = request.getParameter("id");
      String firstname = request.getParameter("firstname");
      String lastname = request.getParameter("lastname");
      String email = request.getParameter("email");
    %>
    
    <form action="deleteCustomerServlet" method="post" class="space-y-4">
      <div>
        <label for="id" class="block text-sm font-bold text-gray-700 mb-1">ID:</label>
        <input type="text" name="id" id="id" value="<%= id %>"
          class="w-full border border-gray-300 rounded px-3 py-2 focus:outline-none focus:ring-2 focus:ring-orange-500" readonly>
      </div>
      
      <div>
        <label for="firstname" class="block text-sm font-bold text-gray-700 mb-1">First Name:</label>
        <input type="text" name="firstname" id="firstname" value="<%= firstname %>"
          class="w-full border border-gray-300 rounded px-3 py-2 focus:outline-none focus:ring-2 focus:ring-orange-500" readonly>
      </div>
      
      <div>
        <label for="lastname" class="block text-sm font-bold text-gray-700 mb-1">Last Name:</label>
        <input type="text" name="lastname" id="lastname" value="<%= lastname %>"
          class="w-full border border-gray-300 rounded px-3 py-2 focus:outline-none focus:ring-2 focus:ring-orange-500" readonly>
      </div>
      
      <div>
        <label for="email" class="block text-sm font-bold text-gray-700 mb-1">Email:</label>
        <input type="email" name="email" id="email" value="<%= email %>"
          class="w-full border border-gray-300 rounded px-3 py-2 focus:outline-none focus:ring-2 focus:ring-orange-500" readonly>
      </div>
      
      <div>
        <input type="submit" value="Delete My Account"
          class="w-full bg-red-500 hover:bg-red-600 transition-all text-white font-semibold py-2 rounded shadow">
      </div>
    </form>
  </div>
  
  <!-- Confirm deletion -->
  <script>
    document.addEventListener('DOMContentLoaded', function() {
      var form = document.querySelector('form');
      form.addEventListener('submit', function(event) {
        if (!confirm('Are you sure you want to delete your account? This action is irreversible.')) {
          event.preventDefault();
        }
      });
    });
  </script>
  
</body>
</html>
