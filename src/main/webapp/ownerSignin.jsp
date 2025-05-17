<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Sign Up - On The Go Rentals</title>

    <!-- Tailwind CSS CDN -->
    <script src="https://cdn.tailwindcss.com"></script>

    <!-- Font Awesome CDN -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

    <script>
        function validateForm() {
            const form = document.forms[0];
            const requiredFields = ['name', 'email', 'password', 'address', 'city', 'gender', 'idnumber', 'contactno'];
            for (let field of requiredFields) {
                if (form[field].value.trim() === "") {
                    alert("Please fill in all fields.");
                    form[field].focus();
                    return false;
                }
            }

            const email = form['email'].value;
            const contactNo = form['contactno'].value;

            const emailPattern = /^[^ ]+@[^ ]+\.[a-z]{2,3}$/;
            const phonePattern = /^[0-9]{10}$/;

            if (!emailPattern.test(email)) {
                alert("Please enter a valid email address.");
                return false;
            }

            if (!phonePattern.test(contactNo)) {
                alert("Please enter a valid 10-digit phone number.");
                return false;
            }

            return true;
        }
    </script>
</head>
<body class="bg-gray-100 flex items-center justify-center min-h-screen px-4 py-12">


    <div class="bg-white w-full max-w-md rounded-2xl shadow-lg p-8">
        <h2 class="text-2xl font-bold text-center text-blue-600 mb-1">
            <i class="fa-solid fa-car-side mr-2"></i>Get Started Earning
        </h2>
        <p class="text-center text-gray-500 mb-6">Join us! Sign up to list your vehicles and start earning today.</p>

        <form action="AddOwner" method="post" onsubmit="return validateForm()" class="space-y-4">

            <div>
                <label class="block text-sm font-medium text-gray-700">
                    <i class="fa-solid fa-user mr-1"></i>Name
                </label>
                <input type="text" name="name" class="mt-1 w-full border border-gray-300 rounded-lg px-3 py-2 focus:outline-none focus:ring-2 focus:ring-blue-400" />
            </div>

            <div>
                <label class="block text-sm font-medium text-gray-700">
                    <i class="fa-solid fa-envelope mr-1"></i>Email
                </label>
                <input type="email" name="email" class="mt-1 w-full border border-gray-300 rounded-lg px-3 py-2 focus:outline-none focus:ring-2 focus:ring-blue-400" />
            </div>

            <div>
                <label class="block text-sm font-medium text-gray-700">
                    <i class="fa-solid fa-lock mr-1"></i>Password
                </label>
                <input type="password" name="password" class="mt-1 w-full border border-gray-300 rounded-lg px-3 py-2 focus:outline-none focus:ring-2 focus:ring-blue-400" />
            </div>

            <div>
                <label class="block text-sm font-medium text-gray-700">
                    <i class="fa-solid fa-location-dot mr-1"></i>Address
                </label>
                <input type="text" name="address" class="mt-1 w-full border border-gray-300 rounded-lg px-3 py-2 focus:outline-none focus:ring-2 focus:ring-blue-400" />
            </div>

            <div>
                <label class="block text-sm font-medium text-gray-700">
                    <i class="fa-solid fa-city mr-1"></i>City
                </label>
                <select name="city" class="mt-1 w-full border border-gray-300 rounded-lg px-3 py-2 focus:outline-none focus:ring-2 focus:ring-blue-400">
                    <option value="">Select City</option>
                    <option value="Colombo">Colombo</option>
                    <option value="Kandy">Kandy</option>
                    <option value="Galle">Galle</option>
                    <option value="Jaffna">Jaffna</option>
                </select>
            </div>

            <div>
                <label class="block text-sm font-medium text-gray-700">
                    <i class="fa-solid fa-venus-mars mr-1"></i>Gender
                </label>
                <select name="gender" class="mt-1 w-full border border-gray-300 rounded-lg px-3 py-2 focus:outline-none focus:ring-2 focus:ring-blue-400">
                    <option value="">Select Gender</option>
                    <option value="Male">Male</option>
                    <option value="Female">Female</option>
                </select>
            </div>

            <div>
                <label class="block text-sm font-medium text-gray-700">
                    <i class="fa-solid fa-id-card mr-1"></i>NIC Number
                </label>
                <input type="text" name="idnumber" class="mt-1 w-full border border-gray-300 rounded-lg px-3 py-2 focus:outline-none focus:ring-2 focus:ring-blue-400" />
            </div>

            <div>
                <label class="block text-sm font-medium text-gray-700">
                    <i class="fa-solid fa-phone mr-1"></i>Contact Phone Number
                </label>
                <input type="text" name="contactno" class="mt-1 w-full border border-gray-300 rounded-lg px-3 py-2 focus:outline-none focus:ring-2 focus:ring-blue-400" />
            </div>

            <button type="submit"
                    class="w-full bg-yellow-500 hover:bg-yellow-600 text-white font-semibold py-2 rounded-lg transition duration-300">
                <i class="fa-solid fa-user-plus mr-2"></i>Sign Up
            </button>
        </form>

        <div class="text-center mt-4 text-sm text-gray-600">
            Already have an account?
            <a href="ownerLogin.jsp" class="text-blue-600 hover:underline font-medium">
                <i class="fa-solid fa-right-to-bracket mr-1"></i>Log In
            </a>
        </div>
    </div>

</body>
</html>
