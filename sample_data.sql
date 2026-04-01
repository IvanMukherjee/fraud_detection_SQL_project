-- Inserting values into 'users' table

INSERT INTO users VALUES
(1, 'Amit', '2023-01-10', 'verified', 'India'),
(2, 'Ravi', '2023-02-15', 'verified', 'India'),
(3, 'John', '2023-03-01', 'pending', 'USA');

-- Inserting values into 'transactions' table

INSERT INTO transactions VALUES
(101, 1, 5000, 'debit', '2023-09-01 10:00:00', 'Amazon', 'Mumbai'),
(102, 1, 7000, 'debit', '2023-09-01 10:05:00', 'Flipkart', 'Mumbai'),
(103, 2, 20000, 'credit', '2023-09-02 12:00:00', 'Unknown', 'Delhi'),
(104, 2, 19500, 'debit', '2023-09-02 12:10:00', 'Unknown', 'Delhi');

-- Inserting values into 'logins' table

INSERT INTO logins VALUES
(1, 1, '2023-09-01 09:55:00', '192.168.1.1', 'Android', 'Mumbai'),
(2, 1, '2023-09-01 09:57:00', '192.168.1.1', 'Android', 'Mumbai'),
(3, 2, '2023-09-02 11:50:00', '10.0.0.1', 'iPhone', 'Delhi');
