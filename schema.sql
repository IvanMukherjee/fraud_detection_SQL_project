-- Create and use database
CREATE DATABASE fraud_detection;
USE fraud_detection;

-- Users table
CREATE TABLE users (
    user_id INT PRIMARY KEY,
    name VARCHAR(100)
);

-- Transactions table
CREATE TABLE transactions (
    txn_id INT PRIMARY KEY,
    user_id INT,
    txn_amount DECIMAL(10,2),
    txn_type VARCHAR(10),
    txn_time DATETIME
);

-- Logins table
CREATE TABLE logins (
    login_id INT PRIMARY KEY,
    user_id INT,
    location VARCHAR(50),
    device VARCHAR(50),
    login_time DATETIME
);
