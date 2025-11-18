CREATE DATABASE MySQL_Joins;
USE MySQL_Joins;

CREATE TABLE Departments(
dept_id INT,
dept_name VARCHAR(50)
);
 

CREATE TABLE Employees(
emp_id INT,
emp_name VARCHAR(50),
dept_id INT
);


INSERT INTO Departments(dept_id, dept_name) VALUES
(1,'HR'),
(2,'IT'),
(3,'Finance'),
(4,'Marketing');

select * from Departments;
select * from Employees;

INSERT INTO Employees (emp_id,emp_name,dept_id) VALUES
(101,'Alice', 1),
(102, 'Bob',2),
(103, 'Charlie',2),
(104,'David',5),  -- dept_id does not exist in departments
(105,'Eva',NULL); -- no department assigned

-- a) INNER JOIN
-- Employees with a matching department
SELECT e.emp_id,e.emp_name, d.dept_name
FROM Employees e
INNER JOIN Departments d
ON e.dept_id = d.dept_id;
-- SELECT table1.column1, table1.column2, table2.column1, table2.column2
-- FROM table1
-- INNER JOIN table2
-- ON table1.common_column = table2.common_column;


-- b)LEFT JOIN
-- All employees , even if no department exists:

SELECT e.emp_id,e.emp_name,d.dept_name
FROM Employees e
LEFT JOIN Departments d
ON e.dept_id = d.dept_id;

-- SELECT table1.column1, table1.column2, table2.column1, table2.column2
-- FROM table1
-- LEFT JOIN table2
-- ON table1.common_column = table2.common_column;

-- c) RIGHT JOIN
-- All departments,even if no employee is assigned:

SELECT e.emp_id,e.emp_name,d.dept_name
FROM Employees e
RIGHT JOIN Departments d
ON e.dept_id = d.dept_id;

-- SELECT table1.column1, table1.column2, table2.column1, table2.column2
-- FROM table1
-- RIGHT JOIN table2
-- ON table1.common_column = table2.common_column;

-- d) FULL OUTER JOIN

SELECT e.emp_id,e.emp_name,d.dept_name
FROM Employees e
LEFT JOIN Departments d
ON e.dept_id=d.dept_id

UNION

SELECT e.emp_id,e.emp_name,d.dept_name
FROM Employees e
RIGHT JOIN Departments d
ON e.dept_id=d.dept_id;


 