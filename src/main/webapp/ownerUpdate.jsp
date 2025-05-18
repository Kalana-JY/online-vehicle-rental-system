<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Update Owner - On The Go Rentals</title>

    <!-- Tailwind CSS -->
    <script src="https://cdn.tailwindcss.com"></script>

    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

    <script>
        function setSelectedValue(selectId, value) {
            const select = document.getElementsByName(selectId)[0];
            for (let option of select.options) {
                if (option.value === value) {
                    option.selected = true;
                    break;
                }
            }
        }

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

            const emailPattern = /^[^ ]+@[^ ]+\.[a-z]{2,3}$/;
            const phonePattern = /^[0-9]{10}$/;

            if (!emailPattern.test(form['email'].value)) {
                alert("Please enter a valid email address.");
                return false;
            }

            if (!phonePattern.test(form['contactno'].value)) {
                alert("Please enter a valid 10-digit contact number.");
                return false;
            }

            return true;
        }

        window.onload = function () {
            setSelectedValue('city', "<%= request.getParameter("city") != null ? request.getParameter("city") : "" %>");
            setSelectedValue('gender', "<%= request.getParameter("gender") != null ? request.getParameter("gender") : "" %>");
        };
    </script>
</head>
<body class="bg-gray-100 min-h-screen flex items-center justify-center px-4 py-12">

    <div class="w-full max-w-lg bg-white rounded-2xl shadow-md p-8">
        <h2 class="text-2xl font-bold text-center text-orange-600 mb-6">
            <i class="fa-solid fa-pen-to-square mr-2"></i>Update Owner Details
        </h2>

        <form action="UpdateOwner" method="post" onsubmit="return validateForm()" class="space-y-4">

            <div>
                <label class="block text-sm font-medium text-gray-700">
                    <i class="fa-solid fa-user mr-1"></i>Name
                </label>
                <input type="text" name="name" value="${param.name}" class="mt-1 w-full border rounded-lg px-3 py-2 focus:outline-none focus:ring-2 focus:ring-orange-400" />
            </div>

            <div>
                <label class="block text-sm font-medium text-gray-700">
                    <i class="fa-solid fa-envelope mr-1"></i>Email
                </label>
                <input type="email" name="email" value="${param.email}" class="mt-1 w-full border rounded-lg px-3 py-2 focus:outline-none focus:ring-2 focus:ring-orange-400" />
            </div>

            <div>
                <label class="block text-sm font-medium text-gray-700">
                    <i class="fa-solid fa-lock mr-1"></i>Password
                </label>
                <input type="text" name="password" value="${param.password}" class="mt-1 w-full border rounded-lg px-3 py-2 focus:outline-none focus:ring-2 focus:ring-orange-400" />
            </div>

            <div>
                <label class="block text-sm font-medium text-gray-700">
                    <i class="fa-solid fa-location-dot mr-1"></i>Address
                </label>
                <input type="text" name="address" value="${param.address}" class="mt-1 w-full border rounded-lg px-3 py-2 focus:outline-none focus:ring-2 focus:ring-orange-400" />
            </div>

            <div>
                <label class="block text-sm font-medium text-gray-700">
                    <i class="fa-solid fa-city mr-1"></i>City
                </label>
                <select name="city" class="mt-1 w-full border rounded-lg px-3 py-2 focus:outline-none focus:ring-2 focus:ring-orange-400">
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
                <select name="gender" class="mt-1 w-full border rounded-lg px-3 py-2 focus:outline-none focus:ring-2 focus:ring-orange-400">
                    <option value="">Select Gender</option>
                    <option value="Male">Male</option>
                    <option value="Female">Female</option>
                </select>
            </div>

            <div>
                <label class="block text-sm font-medium text-gray-700">
                    <i class="fa-solid fa-id-card mr-1"></i>NIC Number
                </label>
                <input type="text" name="idnumber" value="${param.idnumber}" class="mt-1 w-full border rounded-lg px-3 py-2 focus:outline-none focus:ring-2 focus:ring-orange-400" />
            </div>

            <div>
                <label class="block text-sm font-medium text-gray-700">
                    <i class="fa-solid fa-phone mr-1"></i>Contact Number
                </label>
                <input type="text" name="contactno" value="${param.contactno}" class="mt-1 w-full border rounded-lg px-3 py-2 focus:outline-none focus:ring-2 focus:ring-orange-400" />
            </div>

            <button type="submit" name="submit"
                class="w-full bg-orange-600 hover:bg-orange-700 text-white font-semibold py-2 rounded-lg transition duration-300">
                <i class="fa-solid fa-floppy-disk mr-2"></i>Submit
            </button>
        </form>
    </div>

</body>
</html>
