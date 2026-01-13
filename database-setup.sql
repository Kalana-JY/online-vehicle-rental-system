-- ================================================
-- Online Vehicle Rental System - Database Setup
-- ================================================

-- Create database if it doesn't exist
CREATE DATABASE IF NOT EXISTS onlinerental CHARACTER SET utf8 COLLATE utf8_general_ci;

-- Use the database
USE onlinerental;

-- ================================================
-- Table: admin
-- ================================================
CREATE TABLE IF NOT EXISTS admin (
    admin_id INT PRIMARY KEY AUTO_INCREMENT,
    admin_name VARCHAR(100) NOT NULL,
    admin_email VARCHAR(100) UNIQUE NOT NULL,
    admin_password VARCHAR(255) NOT NULL,
    admin_phone VARCHAR(20),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- ================================================
-- Table: customer
-- ================================================
CREATE TABLE IF NOT EXISTS customer (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(100) NOT NULL,
    customer_email VARCHAR(100) UNIQUE NOT NULL,
    customer_password VARCHAR(255) NOT NULL,
    customer_phone VARCHAR(20),
    customer_address TEXT,
    customer_nic VARCHAR(20),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- ================================================
-- Table: owner
-- ================================================
CREATE TABLE IF NOT EXISTS owner (
    owner_id INT PRIMARY KEY AUTO_INCREMENT,
    owner_name VARCHAR(100) NOT NULL,
    owner_email VARCHAR(100) UNIQUE NOT NULL,
    owner_password VARCHAR(255) NOT NULL,
    owner_phone VARCHAR(20),
    owner_address TEXT,
    owner_nic VARCHAR(20),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- ================================================
-- Table: staff
-- ================================================
CREATE TABLE IF NOT EXISTS staff (
    staff_id INT PRIMARY KEY AUTO_INCREMENT,
    staff_name VARCHAR(100) NOT NULL,
    staff_email VARCHAR(100) UNIQUE NOT NULL,
    staff_password VARCHAR(255) NOT NULL,
    staff_phone VARCHAR(20),
    staff_address TEXT,
    staff_role VARCHAR(50),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- ================================================
-- Table: vehicle
-- ================================================
CREATE TABLE IF NOT EXISTS vehicle (
    vehicle_id INT PRIMARY KEY AUTO_INCREMENT,
    vehicle_name VARCHAR(100) NOT NULL,
    vehicle_type VARCHAR(50) NOT NULL,
    vehicle_model VARCHAR(100),
    vehicle_number VARCHAR(50) UNIQUE NOT NULL,
    vehicle_color VARCHAR(50),
    vehicle_seats INT,
    vehicle_price_per_day DECIMAL(10,2) NOT NULL,
    vehicle_status VARCHAR(20) DEFAULT 'Available',
    vehicle_image VARCHAR(255),
    owner_id INT,
    vehicle_description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (owner_id) REFERENCES owner(owner_id) ON DELETE CASCADE
);

-- ================================================
-- Table: driver
-- ================================================
CREATE TABLE IF NOT EXISTS driver (
    driver_id INT PRIMARY KEY AUTO_INCREMENT,
    driver_name VARCHAR(100) NOT NULL,
    driver_email VARCHAR(100),
    driver_phone VARCHAR(20) NOT NULL,
    driver_nic VARCHAR(20) UNIQUE NOT NULL,
    driver_license VARCHAR(50) NOT NULL,
    driver_address TEXT,
    driver_status VARCHAR(20) DEFAULT 'Available',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- ================================================
-- Table: payment
-- ================================================
CREATE TABLE IF NOT EXISTS payment (
    payment_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    vehicle_id INT,
    payment_amount DECIMAL(10,2) NOT NULL,
    payment_method VARCHAR(50),
    payment_status VARCHAR(20) DEFAULT 'Pending',
    payment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    rental_start_date DATE,
    rental_end_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id) ON DELETE CASCADE,
    FOREIGN KEY (vehicle_id) REFERENCES vehicle(vehicle_id) ON DELETE CASCADE
);

-- ================================================
-- Table: messages
-- ================================================
CREATE TABLE IF NOT EXISTS messages (
    message_id INT PRIMARY KEY AUTO_INCREMENT,
    sender_name VARCHAR(100) NOT NULL,
    sender_email VARCHAR(100) NOT NULL,
    sender_phone VARCHAR(20),
    message_subject VARCHAR(200),
    message_content TEXT NOT NULL,
    message_reply TEXT,
    message_status VARCHAR(20) DEFAULT 'Unread',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    replied_at TIMESTAMP NULL
);

-- ================================================
-- Insert Sample Admin (Optional)
-- Password: admin123 (You should change this!)
-- ================================================
INSERT INTO admin (admin_name, admin_email, admin_password, admin_phone) 
VALUES ('System Admin', 'admin@vehiclerental.com', 'admin123', '1234567890')
ON DUPLICATE KEY UPDATE admin_email = admin_email;

-- ================================================
-- Insert Sample Data (Optional - for testing)
-- ================================================

-- Sample Owner
INSERT INTO owner (owner_name, owner_email, owner_password, owner_phone, owner_address, owner_nic) 
VALUES ('John Doe', 'john@example.com', 'owner123', '0771234567', '123 Main St, City', '123456789V')
ON DUPLICATE KEY UPDATE owner_email = owner_email;

-- Sample Customer
INSERT INTO customer (customer_name, customer_email, customer_password, customer_phone, customer_address, customer_nic) 
VALUES ('Jane Smith', 'jane@example.com', 'customer123', '0779876543', '456 Oak Ave, City', '987654321V')
ON DUPLICATE KEY UPDATE customer_email = customer_email;

-- Sample Staff
INSERT INTO staff (staff_name, staff_email, staff_password, staff_phone, staff_address, staff_role) 
VALUES ('Bob Johnson', 'bob@vehiclerental.com', 'staff123', '0775555555', '789 Pine Rd, City', 'Manager')
ON DUPLICATE KEY UPDATE staff_email = staff_email;

-- Sample Vehicles
INSERT INTO vehicle (vehicle_name, vehicle_type, vehicle_model, vehicle_number, vehicle_color, 
                     vehicle_seats, vehicle_price_per_day, vehicle_status, owner_id, vehicle_description) 
VALUES 
    ('Toyota Prius', 'Sedan', '2022', 'ABC-1234', 'White', 5, 5000.00, 'Available', 1, 'Comfortable hybrid sedan'),
    ('Honda CR-V', 'SUV', '2021', 'XYZ-5678', 'Black', 7, 7500.00, 'Available', 1, 'Spacious family SUV'),
    ('Nissan Leaf', 'Electric', '2023', 'ELC-9999', 'Blue', 5, 6000.00, 'Available', 1, 'Eco-friendly electric vehicle')
ON DUPLICATE KEY UPDATE vehicle_number = vehicle_number;

-- ================================================
-- Display table structure confirmation
-- ================================================
SELECT 'Database and tables created successfully!' AS Status;
SHOW TABLES;

-- ================================================
-- Usage Instructions:
-- 1. Open MySQL Workbench or command line
-- 2. Run this script
-- 3. Verify tables are created: SHOW TABLES;
-- 4. Check sample data: SELECT * FROM admin;
-- ================================================
