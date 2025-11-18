CREATE DATABASE Group_by_example;
USE Group_by_example;

CREATE TABLE Sales (
    id INT,
    product VARCHAR(50),
    category VARCHAR(50),
    quantity INT,
    price DECIMAL(10,2)
);
INSERT INTO Sales (id, product, category, quantity, price) VALUES
(1, 'Laptop', 'Electronics', 2, 50000.00),
(2, 'Phone', 'Electronics', 5, 20000.00),
(3, 'Tablet', 'Electronics', 3, 15000.00),
(4, 'Shirt', 'Clothing', 10, 800.00),
(5, 'Jeans', 'Clothing', 6, 1200.00),
(6, 'Shoes', 'Clothing', 4, 2500.00),
(7, 'Milk', 'Grocery', 15, 50.00),
(8, 'Bread', 'Grocery', 8, 40.00),
(9, 'Butter', 'Grocery',5,150.00);

SELECT * FROM Sales;

-- a) Toatal quantiyies sold by category

SELECT category,sum(quantity) AS total_quantity
FROM Sales
Group_by_category;

-- b) AVG price by category

SELECT category,AVG(quantity) AS average_price
FROM Sales
Group_by_category;

--  c) Count of products in each category

SELECT category,COUNT(product) AS total_product
FROM Sales
Group_by_category;

-- d) Highest priced item in each category

SELECT category,MAX(price) AS highest_price
FROM Sales
Group_by_category;






CREATE TABLE Employees (
    emp_id INT,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10,2),
    city VARCHAR(50)
);

INSERT INTO Employees (emp_id, emp_name, department, salary, city) VALUES
(1, 'Amit', 'HR', 40000, 'Pune'),
(2, 'Neha', 'IT', 60000, 'Mumbai'),
(3, 'Raj', 'Finance', 55000, 'Delhi'),
(4, 'Sneha', 'IT', 65000, 'Pune'),
(5, 'Karan', 'HR', 42000, 'Delhi'),
(6, 'Meena', 'Finance', 58000, 'Mumbai'),
(7, 'Vikas', 'IT', 70000, 'Delhi'),
(8, 'Pooja', 'HR', 39000, 'Pune'),
(9, 'Arjun', 'Finance', 60000, 'Delhi'),
(10, 'Simran', 'IT', 72000, 'Mumbai');

SELECT * FROM Employees;

-- A) AVG salary per department

SELECT salary,AVG(Department) AS avg_salary
FROM Employees
GROUP BY Department;

--  b) Highest salary in each city

SELECT city, MAX(salary) AS highest_salary
FROM Employees
GROUP BY city;

-- c) Number of employees in each department
SELECT department, COUNT(emp_id) AS total_employees
FROM Employees
GROUP BY department;

SELECT department, SUM(salary) AS total_salary
FROM Employees
GROUP BY department;



-- HAVING EXAMPLE

-- a) Departments with average salary above 55,000

SELECT department, AVG(salary) AS avg_salary
FROM Employees
GROUP BY department
HAVING AVG(salary)>55000;

-- b) Cities where more than 2 employees work

SELECT city, COUNT(emp_id) AS total_employees
FROM Employees
GROUP BY city
HAVING COUNT(emp_id)>2;

-- c) Departments with total salary greater than 1,50,000

SELECT department, SUM(salary) AS total_salary
FROM Employees
GROUP BY department
HAVING SUM(salary)>150000;
