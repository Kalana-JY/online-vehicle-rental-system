<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Customer Update Information</title>
  
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
    <h2 class="text-center text-2xl font-bold text-orange-600 mb-6">Customer Update Information</h2>
    
    <%
      String id = request.getParameter("id");
      String firstname = request.getParameter("firstname");
      String lastname = request.getParameter("lastname");
      String email = request.getParameter("email");
      String password = request.getParameter("password");
    %>
    
    <form action="updateCustomerServlet" method="post" class="space-y-4">
      <div>
        <label for="id" class="block text-sm font-bold text-gray-700 mb-1">ID:</label>
        <input type="text" name="id" id="id"
          class="w-full border border-gray-300 rounded px-3 py-2 focus:outline-none focus:ring-2 focus:ring-orange-500"
          value="<%= id %>" readonly>
      </div>
      
      <div>
        <label for="firstname" class="block text-sm font-bold text-gray-700 mb-1">First Name:</label>
        <input type="text" id="firstname" name="firstname"
          class="w-full border border-gray-300 rounded px-3 py-2 focus:outline-none focus:ring-2 focus:ring-orange-500"
          value="<%= firstname %>" required>
      </div>
      
      <div>
        <label for="lastname" class="block text-sm font-bold text-gray-700 mb-1">Last Name:</label>
        <input type="text" id="lastname" name="lastname"
          class="w-full border border-gray-300 rounded px-3 py-2 focus:outline-none focus:ring-2 focus:ring-orange-500"
          value="<%= lastname %>" required>
      </div>
      
      <div>
        <label for="email" class="block text-sm font-bold text-gray-700 mb-1">Email:</label>
        <input type="email" id="email" name="email"
          class="w-full border border-gray-300 rounded px-3 py-2 focus:outline-none focus:ring-2 focus:ring-orange-500"
          value="<%= email %>" required>
      </div>
      
      <div>
        <label for="password" class="block text-sm font-bold text-gray-700 mb-1">Password:</label>
        <input type="password" id="password" name="password"
          class="w-full border border-gray-300 rounded px-3 py-2 focus:outline-none focus:ring-2 focus:ring-orange-500"
          value="<%= password %>" required>
      </div>
      
      <div>
        <input type="submit" value="Update"
          class="w-full bg-orange-500 hover:bg-orange-600 transition-all text-white font-semibold py-2 rounded shadow">
      </div>
    </form>
  </div>

  <!-- Confirm form submission -->
  <script>
    document.addEventListener('DOMContentLoaded', function() {
      var form = document.querySelector('form');
      form.addEventListener('submit', function(event) {
        if (!confirm('Are you sure you want to update your information?')) {
          event.preventDefault();
        }
      });
    });
  </script>
  
</body>
</html>
