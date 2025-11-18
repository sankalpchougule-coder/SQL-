CREATE DATABASE The_MySQL_union_Operator;
USE The_MySQL_union_Operator;

CREATE TABLE customers(
customerID INT,
customrname VARCHAR(50),
contactname VARCHAR(50),
address VARCHAR(50),
city VARCHAR (50),
postalcode VARCHAR(50),
country VARCHAR(50)
);
-- SELECT * FROM customers;


INSERT INTO customers (customerID, customername, contactname, address, city, postalcode, country) 
VALUES
(1, 'Balaji Traders', 'Harshal Chougule', 'Main road Nerli', 'Kolhapur', '416234', 'India'),
(2, 'Bhairvanath Bazar', 'Bali Patil', 'Main road Nerli', 'Kolhapur', '434563', 'India'),
(3, 'Kavita Electronics', 'Amit Patel', 'Shahu Stadium', 'Sangli', '456644', 'India'),
(4, 'Sai Industries', 'Pravin Gavali', 'MIDC Gokul Shirgaon', 'Mumbai', '647384', 'India'),
(5, 'Tirupati Couriers', 'Manthan Chougule', 'Shahupuri 3rd Lane', 'Pune', '464783', 'India');


DROP TABLE customers;


CREATE TABLE customers (
customer_id INT PRIMARY KEY AUTO_INCREMENT,
customer_name VARCHAR(100),
city VARCHAR(100),
country VARCHAR(100)
);

CREATE TABLE suppliers (
supplier_id INT PRIMARY KEY AUTO_INCREMENT,
supplier_name VARCHAR(100),
city VARCHAR(100),
country VARCHAR(100)
);

-- Insert into customers
INSERT INTO customers (customer_name, city, country) VALUES
('Rahul Sharma', 'Mumbai', 'India'),
('Anita Desai', 'Pune', 'India'),
('John Smith', 'New York', 'USA'),
('Maria Garcia', 'Madrid', 'Spain');

-- Insert into suppliers
INSERT INTO suppliers (supplier_name, city, country) VALUES
('Tata Supplies', 'Mumbai', 'India'),
('Infosys Vendor', 'Bangalore', 'India'),
('Amazon Wholesale', 'New York', 'USA'),
('Ikea Distributors', 'Stockholm','sweden');

-- Combine customers and supppliers nito a single result set

SELECT customer_name AS  name, city, country, 'customer' AS type 
FROM customers
UNION
SELECT supplier_name AS name,city,country,'supplier'AS type 
FROM suppliers;

-- UNION SYNTAX

-- SELECT column_name(s) FROM table1 
-- UNION
-- SELECT column_name(s) FROM table2;

-- UNION ALL (It keeps duplicate data)

SELECT customer_name AS name, city, country, 'Customer' AS type
FROM customers
UNION ALL
SELECT supplier_name AS name, city, country, 'Supplier' AS type
FROM suppliers;




