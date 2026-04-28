-- Create and use database
CREATE DATABASE fraud_detection;
USE fraud_detection;

-- Users table
CREATE TABLE users (
    user_id INT PRIMARY KEY,
    name VARCHAR(100),
    account_created DATE,
    kyc_status VARCHAR(20),
    country VARCHAR(50)
);

-- Transactions table
CREATE TABLE transactions (
    txn_id INT PRIMARY KEY,
    user_id INT,
    txn_amount DECIMAL(10,2),
    txn_type VARCHAR(10),
    txn_time DATETIME
    merchant VARCHAR(50),
    location VARCHAR(50)
);

-- Logins table
CREATE TABLE logins (
    login_id INT PRIMARY KEY,
    user_id INT,
    login_time DATETIME,
    IP_address VARCHAR(50),
    device VARCHAR(50),
    location VARCHAR(50)
);
