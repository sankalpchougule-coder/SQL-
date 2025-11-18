CREATE DATABASE MySQL_example_with_subqueries;
USE MySQL_example_with_subqueries;

 CREATE TABLE Employees (
 EmpName VARCHAR(50),
 Department VARCHAR(50),
 Salary INT
 );
 INSERT INTO Employees (EmpName,Department,Salary)VALUES
 ('Amit','HR',3000),
 ('Ravi','IT',50000),
 ('Sneha','Finance',45000),
 ('Priya','IT',60000),
 ('Manish','Finance',40000),
 ('Kiran','HR',35000);
 
 -- A) Find employees earning more than the average salary
 SELECT EmpName,salary
 FROM Employees
 WHERE salary>(SELECT AVG(salary)FROM Employees);
 
 -- B)Find employees in the same department as 'Sneha'
 
 SELECT EmpName,Department
 FROM Employees
 Where Department = (SELECT Department FROM Employees WHERE EmpName='Sneha');
 
 -- C)  Get highest salary using a subquery
 
 SELECT EmpName ,salary
 FROM Employees
 WHERE salary=(SELECT MAX(salary) FROM Employees);
 
 
 -- D)Employees who earn less than any IT employee
 
 SELECT EmpName,salary
 From Employees
 Where salary <(SELECT MIN(salary) FROM Employees WHERE Department = 'IT');
  
  -- E) Employees salary less than 30000
  
  SELECT EmpName,salary
  FROM Employees
  where salary< (SELECT (salary) FROM Emloyees);
  
  
  
  
  
 