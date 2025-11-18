CREATE DATABASE Operator_Practice_Exp;
USE Operator_Practice_Exp;

CREATE TABLE Employees (
    emp_id INT,
    name VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    join_date DATE
);

INSERT INTO Employees VALUES
(1, 'Amit', 'HR', 40000, '2021-05-10'),
(2, 'Sneha', 'IT', 55000, '2020-02-15'),
(3, 'Rohit', 'Finance', 60000, '2019-11-20'),
(4, 'Priya', 'IT', 75000, '2022-01-12'),
(5, 'Vikas', 'HR', 30000, '2023-07-05');

SELECT * FROM Employees;

-- Find all employees with salary greater than 50,000.
SELECT salary
FROM Employees
WHERE salary > 50000;

-- List employees who work in IT department.
SELECT emp_id,name
FROM Employees
WHERE department = 'IT';

-- Show employees who joined between 2020 and 2022.

SELECT emp_id,name
FROM Employees
WHERE join_date BETWEEN '2020-01-01' AND '2022-12-31';

-- Find employees whose name starts with “S”.
SELECT emp_id,name
FROM Employees
WHERE name like 's%';

-- Show employees not in HR.
SELECT emp_id,name
FROM Employees
WHERE NOT department='HR';


CREATE TABLE Students (
    student_id INT,
    name VARCHAR(50),
    course VARCHAR(50),
    marks INT,
    city VARCHAR(50)
);

INSERT INTO Students VALUES
(101, 'Raj', 'Math', 85, 'Pune'),
(102, 'Simran', 'Science', 92, 'Delhi'),
(103, 'Aman', 'History', 76, 'Mumbai'),
(104, 'Neha', 'Math', 65, 'Pune'),
(105, 'Arjun', 'Science', 55, 'Chennai');

SELECT*FROM Students;


-- Find students who scored more than 80 marks.
SELECT name   
FROM Students
WHERE marks>80;

-- List students from Pune.
SELECT name
FROM Students
WHERE city='pune';

-- Show students who scored between 60 and 90.
SELECT name,marks
FROM Students
WHERE marks between 60 and 90;

-- Get all students who study Science or Math.
SELECT name,course
FROM Students
WHERE course='science' or 'maths';

-- Find students whose name ends with “n”.
SELECT name
FROM Students
WHERE name like '%n';


CREATE TABLE Products (
    product_id INT,
    name VARCHAR(50),
    category VARCHAR(50),
    price INT,
    stock INT
);

INSERT INTO Products VALUES
(1, 'Laptop', 'Electronics', 60000, 10),
(2, 'Mobile', 'Electronics', 25000, 20),
(3, 'Table', 'Furniture', 7000, 15),
(4, 'Chair', 'Furniture', 3000, 25),
(5, 'Book', 'Stationery', 500, 50);


-- Find all products with price greater than 10,000.
SELECT product_id,name
FROM Products
WHERE price>10000;

-- List all furniture items.
SELECT name
FROM Products
WHERE category='furniture';

-- Show products with stock less than 20.
SELECT product_id,name,category
FROM Products
WHERE stock<20;

-- Find items whose name contains “a”.
SELECT product_id,name
FROM Products
WHERE name like '%a%';


-- Show products in category Electronics or Stationery.
SELECT name 
FROM Products
WHERE category = 'electronics' or 'stationary';




CREATE TABLE Orders (
    order_id INT,
    customer_name VARCHAR(50),
    product VARCHAR(50),
    quantity INT,
    order_date DATE
);

INSERT INTO Orders VALUES
(201, 'Ramesh', 'Laptop', 1, '2023-03-10'),
(202, 'Sita', 'Book', 5, '2023-04-12'),
(203, 'Aman', 'Mobile', 2, '2023-05-15'),
(204, 'Neha', 'Chair', 4, '2023-06-18'),
(205, 'Vikas', 'Table', 1, '2023-07-20');


-- Find orders placed after June 2023.
SELECT order_id,customer_name
FROM Orders
WHERE order_date >'2023-06-01';

-- List all customers who bought more than 2 items.
SELECT order_id,customer_name
FROM Orders
WHERE quantity>2;

-- Show orders where product is Laptop or Mobile.
SELECT order_id,customer_name
FROM Orders
WHERE product = 'laptop' OR product='mobile';

-- Find orders by customer whose name starts with “A”.
SELECT order_id,customer_name
FROM Orders
WHERE customer_name like 'a%';

-- Show all orders not containing “Book”.
SELECT order_id,customer_name,product
FROM Orders
WHERE NOT product ='book';


CREATE TABLE Library (
    book_id INT,
    title VARCHAR(100),
    author VARCHAR(50),
    genre VARCHAR(50),
    price INT
);

INSERT INTO Library VALUES
(1, 'The Alchemist', 'Paulo Coelho', 'Fiction', 400),
(2, 'Wings of Fire', 'A.P.J. Abdul Kalam', 'Autobiography', 350),
(3, 'Rich Dad Poor Dad', 'Robert Kiyosaki', 'Finance', 500),
(4, '1984', 'George Orwell', 'Fiction', 300),
(5, 'Clean Code', 'Robert C. Martin', 'Programming', 800);


-- Find all books priced above 400.
SELECT book_id,title,author,genre
FROM Library
WHERE price>400;

-- List books of genre Fiction.
SELECT book_id,title,author,genre
FROM Library
WHERE genre='fiction';

-- Show books written by authors whose name starts with “R”.
SELECT book_id,title,author,genre
FROM Library
WHERE author like 'r%';

-- Find books not in genre Programming.
SELECT book_id,title,author,genre
FROM Library
WHERE NOT genre IN ('programming');


-- Show books with price between 300 and 600.
SELECT book_id,title,author,genre,price
FROM Library
WHERE price between 300 and 600;







