CREATE DATABASE Practice_of_group_by;
USE Practice_of_group_by;

CREATE TABLE Sales (
    id INT,
    product VARCHAR(50),
    category VARCHAR(50),
    quantity INT,
    price DECIMAL(10,2)
);

INSERT INTO Sales VALUES
(1, 'Laptop', 'Electronics', 2, 50000),
(2, 'Phone', 'Electronics', 5, 20000),
(3, 'Tablet', 'Electronics', 3, 15000),
(4, 'Shirt', 'Clothing', 10, 800),
(5, 'Jeans', 'Clothing', 6, 1200),
(6, 'Shoes', 'Clothing', 4, 2500),
(7, 'Milk', 'Grocery', 15, 50),
(8, 'Bread', 'Grocery', 8, 40),
(9, 'Butter', 'Grocery',5,150);

-- a) Find the total quantity sold per category. Show only those categories where total quantity > 15.

 SELECT category, SUM(quantity) AS total_quantity
FROM Sales
GROUP BY category
HAVING SUM(quantity) > 15;

-- Find the average price per category. Show only categories where average price > 10,000.

SELECT category, AVG(price) AS avg_price
FROM Sales
GROUP BY category
HAVING AVG(price) > 10000;


-- Find the number of products in each category. Display only categories having more than 2 products.

SELECT category, COUNT(*) AS product_count
FROM Sales
GROUP BY category
HAVING COUNT(*) > 2;

-- Find the maximum price per category. Show only categories where maximum price > 2,000.

SELECT category, MAX(price) AS max_price
FROM Sales
GROUP BY category
HAVING MAX(price) > 2000;





CREATE TABLE Employees (
    emp_id INT,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10,2),
    city VARCHAR(50)
);

INSERT INTO Employees VALUES
(1, 'Amit', 'HR', 40000, 'Pune'),
(2, 'Neha', 'IT', 60000, 'Mumbai'),
(3, 'Raj', 'Finance', 55000, 'Delhi'),
(4, 'Sneha', 'IT', 65000, 'Pune'),
(5, 'Karan', 'HR', 42000, 'Delhi'),
(6, 'Meena', 'Finance', 58000, 'Mumbai'),
(7, 'Vikas', 'IT', 70000, 'Delhi'),
(8, 'Pooja', 'HR', 39000, 'Pune'),
(9, 'Arjun', 'Finance', 60000, 'Delhi'),
(10, 'Simran', 'IT', 72000,'Mumbai');

-- Find the average salary per department. Show only those with avg salary > 55,000.

SELECT department, AVG(salary) AS avg_salary
FROM Employees
GROUP BY department
HAVING AVG(salary) > 55000;

-- Find the total salary per department. Show only departments with total salary > 1,50,000.

SELECT department, SUM(salary) AS total_salary
FROM Employees
GROUP BY department
HAVING SUM(salary) > 150000;

-- Find the number of employees per city. Show only cities with more than 2 employees.

SELECT city, COUNT(emp_name) AS emp_count
FROM Employees
GROUP BY city
HAVING COUNT(emp_name) > 2;

-- Find the highest salary in each department. Show only departments where highest salary > 60,000.
SELECT department, MAX(salary) AS highest_salary
FROM Employees
GROUP BY department
HAVING MAX(salary) > 60000;






CREATE TABLE Students (
    roll_no INT,
    name VARCHAR(50),
    class VARCHAR(10),
    marks INT,
    subject VARCHAR(50)
);

INSERT INTO Students VALUES
(1, 'Amit', '10A', 78, 'Math'),
(2, 'Neha', '10A', 85, 'Science'),
(3, 'Raj', '10B', 92, 'Math'),
(4, 'Sneha', '10B', 66, 'Science'),
(5, 'Karan', '10C', 74, 'Math'),
(6, 'Meena', '10A', 89, 'Science'),
(7, 'Vikas', '10B', 55, 'Math'),
(8, 'Pooja', '10C', 95, 'Science'),
(9, 'Simran', '10C',81,'Math');

-- Find the average marks per class. Show only classes with avg marks > 80.
SELECT class, AVG(marks) AS avg_marks
FROM Students
GROUP BY class
HAVING AVG(marks) > 80;

-- Find the total marks per class. Show only those with total marks > 200.
SELECT class, SUM(marks) AS total_marks
FROM Students
GROUP BY class
HAVING SUM(marks) > 200;

-- Count the number of students per class. Show only classes with more than 2 students.
SELECT class, COUNT(name) AS student_count
FROM Students
GROUP BY class
HAVING COUNT(name) > 2;


-- Find the highest marks per class. Show only classes with max marks > 90.
SELECT class, MAX(marks) AS highest_marks
FROM Students
GROUP BY class
HAVING MAX(marks) > 90;




CREATE TABLE Orders (
    order_id INT,
    customer VARCHAR(50),
    city VARCHAR(50),
    amount DECIMAL(10,2),
    order_date DATE
);

INSERT INTO Orders VALUES
(1, 'Rahul', 'Pune', 500, '2025-09-01'),
(2, 'Neha', 'Delhi', 1200, '2025-09-02'),
(3, 'Arjun', 'Mumbai', 800, '2025-09-03'),
(4, 'Sneha', 'Pune', 1500, '2025-09-03'),
(5, 'Meena', 'Delhi', 700, '2025-09-04'),
(6, 'Karan', 'Pune', 2000, '2025-09-04'),
(7, 'Simran', 'Mumbai', 1800, '2025-09-05'),
(8, 'Amit', 'Delhi', 2200, '2025-09-05'),
(9, 'Pooja', 'Pune', 900,'2025-09-06');


-- Find the total order amount per city. Show only cities with total > 3,000.
SELECT city, SUM(amount) AS total_amount
FROM Orders
GROUP BY city
HAVING SUM(amount) > 3000;


-- Find the average order amount per city. Show only those cities where avg amount > 1,000.
SELECT city, AVG(amount) AS avg_amount
FROM Orders
GROUP BY city
HAVING AVG(amount) > 1000;

-- Count the number of orders per city. Show only those with more than 2 orders.
SELECT city, COUNT(order_id) AS order_count
FROM Orders
GROUP BY city
HAVING COUNT(order_id) > 2;


-- Find the maximum order amount per city. Show only those cities with maximum order > 2,000.
SELECT city, MAX(amount) AS max_order
FROM Orders
GROUP BY city
HAVING MAX(amount) > 2000;



CREATE TABLE Products (
    prod_id INT,
    prod_name VARCHAR(50),
    brand VARCHAR(50),
    price DECIMAL(10,2),
    stock INT
);

INSERT INTO Products VALUES
(1, 'iPhone', 'Apple', 80000, 5),
(2, 'MacBook', 'Apple', 120000, 3),
(3, 'Galaxy S23', 'Samsung', 70000, 6),
(4, 'TV', 'Samsung', 45000, 10),
(5, 'ThinkPad', 'Lenovo', 60000, 4),
(6, 'Yoga', 'Lenovo', 55000, 5),
(7, 'Pixel', 'Google', 65000, 7),
(8, 'Nest Hub', 'Google',12000,8);

-- Find the average price per brand. Show only brands with avg price > 50,000.
SELECT brand, AVG(price) AS avg_price
FROM Products
GROUP BY brand
HAVING AVG(price) > 50000;


-- Find the total stock per brand. Show only brands with total stock > 5.
SELECT brand, SUM(stock) AS total_stock
FROM Products
GROUP BY brand
HAVING SUM(stock) > 5;


-- Count the number of products per brand. Show only brands having more than 1 product.
SELECT brand, COUNT(prod_id) AS product_count
FROM Products
GROUP BY brand
HAVING COUNT(prod_id) > 1;


-- Find the maximum product price per brand. Show only brands with max price > 60,000.
SELECT brand, MAX(price) AS max_price
FROM Products
GROUP BY brand
HAVING MAX(price) > 60000;













-- 










