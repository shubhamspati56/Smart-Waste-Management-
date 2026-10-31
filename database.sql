CREATE DATABASE IF NOT EXISTS waste_management_db;
USE waste_management_db;

CREATE TABLE admin (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    password VARCHAR(255) NOT NULL
);

INSERT INTO admin(username,password)
VALUES('admin','admin123');

CREATE TABLE complaints (
    id INT AUTO_INCREMENT PRIMARY KEY,
    citizen_name VARCHAR(100) NOT NULL,
    area VARCHAR(100) NOT NULL,
    complaint TEXT NOT NULL,
    status ENUM('Pending','Resolved') DEFAULT 'Pending',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE vehicles (
    id INT AUTO_INCREMENT PRIMARY KEY,
    vehicle_no VARCHAR(30) NOT NULL,
    driver_name VARCHAR(100) NOT NULL,
    status ENUM('Active','Maintenance') DEFAULT 'Active'
);
