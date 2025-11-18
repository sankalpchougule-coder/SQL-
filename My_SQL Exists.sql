CREATE DATABASE mysql_exists;
USE mysql_exists;

-- customer table
CREATE TABLE Customers(
customer_id INT,
name VARCHAR (50),
city VARCHAR(50)
);

-- Orders table
CREATE TABLE Orders(
order_id INT,
customer_id INT,
product VARCHAR (50),
amount DECIMAL(10,2)
);

-- CUATOMERS 

INSERT INTO Customers VALUES
(1, 'Amit', "Pune"),
(2, 'Sneha', "Mumbai"),
(3,'Rahul',"Delhi"),
(4, 'Priya', "Bangalore");

-- Orders
INSERT INTO Orders VALUES
(101, 1, "Laptop", 55000),
(102, 1, "Mouse", 500),
(103, 2, "Mobile", 20000),
(104, 4, "Tablet", 15000);

-- Example 1: Find customers who have placed at least one order

SELECT  name,city
FROM Customers c
WHERE EXISTS (
     SELECT 1
     FROM Orders o 
     WHERE o.customer_id=c.customer_id
     );
     
-- Example 2: Find customers who have not placed any order

SELECT name,city
FROM Customers c
WHERE NOT EXISTS(
     SELECT 1
     FROM Orders o
     WHERE o.customer_id = c.customer_id
);

CREATE TABLE Students (
name VARCHAR(50),
student_id INT,
department VARCHAR(50)
);
CREATE TABLE Enrollments (
    enroll_id INT,
    student_id INT,
    course VARCHAR(50)
);

INSERT INTO Enrollments VALUES
(101, 1, 'Database Systems'),
(102, 1, 'Operating Systems'),
(103, 2, 'Microprocessors'),
(104, 4, 'Artificial Intelligence');

-- Find all students who are enrolled in at least one course.
SELECT name,deprtment
FROM Students s
WHERE EXISTS (
       SELECT 1
       FROM Enrollments e
       WHERE e.student_id = s.student_id
);

-- Find all students who are not enrolled in any course.
SELECT name,student_id
FROM Students s
WHERE NOT EXISTS (
       SELECT 1
       FROM Enrollments e
       WHERE e.enroll_id = s.name
);

-- Find all students from Computer Science who are enrolled in at least one course.

SELECT name
FROM Students s
WHERE EXISTS (
       SELECT 1
       FROM Enrollments e
       WHERE e.enroll_id = s.name
);

DROP TABLE Students;
DROP TABLE Enrollments;

CREATE TABLE Students (
student_id varchar(50),
name VARCHAR(50),
department VARCHAR(50)
);
CREATE TABLE Enrollments (
    enroll_id INT,
    student_id INT,
    course VARCHAR(50)
);

INSERT INTO Students VALUES (1,'AMIT','CSE'),
(2, 'Sneha', 'Electronics'),
(3, 'Rahul', 'Mechanical'),
(4, 'Priya', 'Computer Science'),
(5, 'Karan','Civil');

INSERT INTO Enrollments VALUES
(101, 1, 'Database Systems'),
(102, 1, 'Operating Systems'),
(103, 2, 'Microprocessors'),
(104, 4, 'Artificial Intelligence');

-- Find all students who are not enrolled in any course.
SELECT name, department
FROM Students s
WHERE NOT EXISTS (
    SELECT 1
    FROM Enrollments e
    WHERE e.student_id = s.student_id
);

-- Find all students who are enrolled in at least one course.
SELECT name
FROM Students s
WHERE EXISTS (
       SELECT 1
       FROM Enrollments e
       WHERE e.enroll_id = s.name
);



-- Find all students from Computer Science who are enrolled in at least one course.
SELECT name
FROM Students s
WHERE department = 'Computer Science'
  AND EXISTS (
      SELECT 1
      FROM Enrollments e
      WHERE e.student_id = s.student_id
);

-- Find all students who are enrolled in a course named "Database Systems".

SELECT name
FROM Students s
WHERE EXISTS (
    SELECT 1
    FROM Enrollments e
    WHERE e.student_id = s.student_id
      AND e.course = 'Database Systems'
);


-- Find all students from Electronics department who are not enrolled in any course.
SELECT name
FROM Students s
WHERE department = 'Electronics'
  AND NOT EXISTS (
      SELECT 1
      FROM Enrollments e
      WHERE e.student_id = s.student_id
);
SHOW TABLES;





