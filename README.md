# Fraud Detection Analysis using SQL

## 📌 Overview
This project simulates a transaction monitoring system used in financial institutions to detect fraudulent activities. It analyzes transaction and login data to identify suspicious patterns such as money muling, account takeover (ATO), velocity fraud, and location anomalies.

---

## 🗂️ Dataset
The project is based on relational datasets:

- **Users** – customer information  
- **Transactions** – credit/debit activity  
- **Logins** – user login details (device, location, time)

---

## 🚨 Fraud Scenarios Implemented

### 1. Money Muling Detection
- Identifies accounts receiving funds and quickly transferring them out  
- Logic: Credit followed by debit within 15 minutes with similar amount  

---

### 2. Account Takeover (ATO)
- Detects suspicious login behavior followed by transactions  
- Logic: Login from different device/location followed by debit transaction  

---

### 3. Velocity Fraud
- Detects multiple transactions within a short time window  
- Logic: 3 or more transactions within 5 minutes  

---

### 4. Location Anomaly
- Identifies rapid logins from different locations  
- Logic: Logins from different locations within a short time span  

---

## 🛠️ SQL Concepts Used
- Joins (Self Join, Inner Join)  
- CTEs (Common Table Expressions)  
- Time-based analysis using `TIMESTAMPDIFF`  
- Aggregations (`COUNT`, `GROUP BY`, `HAVING`)  
- Conditional logic  

---

## 🎯 Key Outcome
This project demonstrates how SQL can be used to analyze behavioral patterns and detect potential fraud scenarios in a financial system.

---

## 📎 Tools Used
- MySQL  
