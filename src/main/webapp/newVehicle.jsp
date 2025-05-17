<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Add Vehicle</title>
    <!-- Tailwind CSS CDN -->
    <script src="https://cdn.tailwindcss.com"></script>
    <!-- Font Awesome CDN -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

    <script>
        tailwind.config = {
            theme: {
                extend: {
                    colors: {
                        primary: '#3498db',
                        dark: '#2c3e50',
                    }
                }
            }
        };
    </script>
</head>
<body class="bg-gray-100 text-gray-800">
<%@ include file="/Partials/Header.jsp" %>

<div class="max-w-2xl mx-auto mt-10 bg-white p-8 rounded-xl shadow-lg">
    <h2 class="text-2xl font-bold text-primary flex items-center gap-2 border-b pb-4">
        <i class="fa-solid fa-car-side"></i>
        Add Vehicle
    </h2>

    <form action="addVehicle" method="post" enctype="multipart/form-data" onsubmit="return validateForm()" class="space-y-5 mt-6">
        <!-- Vehicle Type -->
        <div>
            <label class="font-semibold block mb-1"><i class="fa-solid fa-truck-monster mr-1"></i>Vehicle Type</label>
            <select name="vehicletype" class="w-full border rounded px-3 py-2" required>
                <option value="">Select Type</option>
                <option value="Car">Car</option>
                <option value="Van">Van</option>
                <option value="Bus">Bus</option>
                <option value="Motorcycle">Motorcycle</option>
            </select>
        </div>

        <!-- Transmission Type -->
        <div>
            <label class="font-semibold block mb-1"><i class="fa-solid fa-gears mr-1"></i>Transmission Type</label>
            <select name="transmissiontype" class="w-full border rounded px-3 py-2" required>
                <option value="">Select Transmission</option>
                <option value="Manual">Manual</option>
                <option value="Auto">Auto</option>
            </select>
        </div>

        <!-- Vehicle Number -->
        <div>
            <label class="font-semibold block mb-1"><i class="fa-solid fa-hashtag mr-1"></i>Vehicle Number</label>
            <input type="text" name="vehiclenumber" class="w-full border rounded px-3 py-2" required>
        </div>

        <!-- Vehicle Color -->
        <div>
            <label class="font-semibold block mb-1"><i class="fa-solid fa-palette mr-1"></i>Vehicle Color</label>
            <input type="text" name="vehiclecolor" class="w-full border rounded px-3 py-2" required>
        </div>

        <!-- Engine Number -->
        <div>
            <label class="font-semibold block mb-1"><i class="fa-solid fa-engine-warning mr-1"></i>Engine Number</label>
            <input type="text" name="enginenumber" id="enginenumber" class="w-full border rounded px-3 py-2" required>
        </div>

        <!-- Seating Capacity -->
        <div>
            <label class="font-semibold block mb-1"><i class="fa-solid fa-users mr-1"></i>Seating Capacity</label>
            <select name="seatingcapacity" class="w-full border rounded px-3 py-2" required>
                <option value="">Select Capacity</option>
                <option value="2">2</option>
                <option value="4">4</option>
                <option value="6">6</option>
                <option value="8">8</option>
            </select>
        </div>

        <!-- Fuel Type -->
        <div>
            <label class="font-semibold block mb-1"><i class="fa-solid fa-gas-pump mr-1"></i>Fuel Type</label>
            <select name="fueltype" class="w-full border rounded px-3 py-2" required>
                <option value="">Select Fuel</option>
                <option value="Petrol">Petrol</option>
                <option value="Diesel">Diesel</option>
                <option value="Electric">Electric</option>
                <option value="Hybrid">Hybrid</option>
            </select>
        </div>

        <!-- Vehicle Photo -->
        <div>
            <label class="font-semibold block mb-1"><i class="fa-solid fa-camera mr-1"></i>Upload Vehicle Photo</label>
            <input type="file" name="vehiclephoto" id="vehiclephoto" accept="image/*" class="border rounded px-3 py-2 w-full" required>
            <div id="imagePreview" class="mt-3"></div>
        </div>

        <!-- Submit Button -->
        <div class="text-right">
            <button type="submit" class="bg-primary text-white px-6 py-2 rounded hover:bg-blue-700 transition">
                <i class="fa-solid fa-plus mr-1"></i>Add Vehicle
            </button>
        </div>
    </form>
</div>

<script>
    function validateForm() {
        const engineNumber = document.getElementById('enginenumber').value;
        if (!/^[A-Za-z0-9]+$/.test(engineNumber)) {
            alert('Engine number should contain only letters and numbers');
            return false;
        }
        return true;
    }

    // Preview uploaded image
    document.getElementById('vehiclephoto').addEventListener('change', function (e) {
        const file = e.target.files[0];
        if (file) {
            const reader = new FileReader();
            reader.onload = function (event) {
                const preview = document.getElementById('imagePreview');
                preview.innerHTML = `<img src="${event.target.result}" class="max-w-[200px] max-h-[200px] border rounded shadow">`;
            }
            reader.readAsDataURL(file);
        }
    });
</script>

<%@ include file="/Partials/Footer.jsp" %>
</body>
</html>
