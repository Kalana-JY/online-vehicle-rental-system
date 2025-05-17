<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>GO Rentals - Footer</title>
  <!-- Tailwind CSS -->
  <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
  <!-- FontAwesome Icons -->
  <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
</head>
<body class="bg-gray-100 text-gray-900">
  <footer class="bg-gradient-to-r from-red-500 to-orange-400 py-8">
    <div class="container mx-auto px-4">
      <!-- Top Section: Logo & Tagline with Navigation & Social Icons -->
      <div class="flex flex-col md:flex-row items-center md:items-start justify-between">
        <!-- Logo & Tagline -->
        <div class="flex flex-col items-center md:items-start">
          <div class="flex items-center mb-4">
            <!-- Enlarged Logo with border for a wireframe feel -->
            <img src="Images/LOGO.png" alt="GO Rentals Logo" class="h-20 w-auto mr-4 border border-gray-300 p-1 rounded shadow" />
            <span class="text-3xl font-bold text-white drop-shadow-lg">GO Rentals</span>
          </div>
          <p class="max-w-md text-white text-center md:text-left">
            Experience comfort and style with our exceptional car rental services. Your journey starts here.
          </p>
        </div>
        <!-- Navigation & Social Icons -->
        <div class="flex flex-col items-center md:items-end mt-6 md:mt-0">
          <nav>
            <ul class="flex flex-wrap gap-6 text-white font-semibold">
              <li><a href="#" class="hover:text-gray-200 transition">Home</a></li>
              <li><a href="#" class="hover:text-gray-200 transition">About</a></li>
              <li><a href="#" class="hover:text-gray-200 transition">Rentals</a></li>
              <li><a href="#" class="hover:text-gray-200 transition">Contact</a></li>
            </ul>
          </nav>
          <div class="flex space-x-4 mt-4">
            <a href="#" class="text-white hover:text-gray-200"><i class="fab fa-facebook-f"></i></a>
            <a href="#" class="text-white hover:text-gray-200"><i class="fab fa-twitter"></i></a>
            <a href="#" class="text-white hover:text-gray-200"><i class="fab fa-instagram"></i></a>
            <a href="#" class="text-white hover:text-gray-200"><i class="fab fa-linkedin-in"></i></a>
          </div>
        </div>
      </div>
      <!-- Divider & Bottom Section: Copyright -->
      <div class="mt-8 border-t border-white pt-4">
        <p class="text-center text-white text-sm">
          &copy; 2008-2025 On the go rentals is a trademark of Go Rentals Group Corporation Ltd., registered in Colombo at  Wijayaramaya Street, Maharagama, Sri Lanka county, LV-1053. Company number: 40103394295.
        </p>
      </div>
    </div>
  </footer>
</body>
</html>
