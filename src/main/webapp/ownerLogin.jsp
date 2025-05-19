<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Log In - On The Go Rentals</title>

    <!-- Tailwind CSS CDN -->
    <script src="https://cdn.tailwindcss.com"></script>

    <!-- Font Awesome CDN -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

    <script>
        function validateLoginForm() {
            const form = document.forms[0];
            if (!form.email.value.trim()) {
                alert('Please enter your email.');
                form.email.focus();
                return false;
            }
            if (!form.password.value) {
                alert('Please enter your password.');
                form.password.focus();
                return false;
            }
            return true;
        }
    </script>
    <style>
        body {
            background-image: url('Images/Untitled design.png');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            height: 100vh;
            margin: 0;
            display: flex;
            align-items: center;
            justify-content: center;
        }
	</style>
</head>
<body class="bg-orange-100 min-h-screen flex items-center justify-center px-4">

    <form action="login" method="post" onsubmit="return validateLoginForm()" 
        class="bg-white shadow-lg rounded-xl p-8 max-w-md w-full">
        
        <div class="text-center mb-6">
            <h2 class="text-2xl font-bold text-gray-800 flex justify-center items-center gap-2">
                <i class="fa-solid fa-right-to-bracket text-orange-500"></i>
                Sign in to <span class="text-orange-500">On The Go Rentals</span>
            </h2>
            <p class="text-sm text-gray-600 mt-1">Welcome back! Manage your rentals with ease.</p>
        </div>

        <!-- Email -->
        <div class="mb-4">
            <label for="email" class="block text-sm font-semibold text-gray-700 mb-1">
                <i class="fa-solid fa-envelope mr-1"></i>Email
            </label>
            <input type="email" id="email" name="email" placeholder="example@email.com"
                class="w-full px-4 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-orange-400"
                required>
        </div>

        <!-- Password -->
        <div class="mb-4">
            <label for="password" class="block text-sm font-semibold text-gray-700 mb-1">
                <i class="fa-solid fa-lock mr-1"></i>Password
            </label>
            <input type="password" id="password" name="password" placeholder="Enter your password"
                class="w-full px-4 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-orange-400"
                required>
        </div>

        <!-- Submit Button -->
        <div>
            <button type="submit"
                class="w-full bg-orange-500 hover:bg-orange-600 text-white font-semibold py-2 rounded-lg transition duration-200">
                <i class="fa-solid fa-sign-in-alt mr-1"></i>Login
            </button>
        </div>

        <!-- Sign Up Link -->
        <div class="text-sm text-center mt-5">
            Don't have an account?
            <a href="ownerSignin.jsp" class="text-orange-500 font-medium hover:underline">
                Sign Up
            </a>
        </div>
    </form>

</body>
</html>
