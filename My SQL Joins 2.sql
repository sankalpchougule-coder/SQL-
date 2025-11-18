CREATE DATABASE MySQL_Joins2;
USE MySQL_Joins2;

CREATE TABLE Students (
student_id INT,
student_name VARCHAR(50),
course_id INT
);

-- Course table(no PK)
CREATE TABLE Courses(
course_id INT,
course_name VARCHAR(50),
teacher VARCHAR(50)
);

-- INSERT INTO Coures
INSERT INTO Courses(course_id,course_name,teache)VALUES
(1,'Mathematics', 'Prof. Sharma'),
(1,'Physics','Dr.Rao'),
(3,'Chemistry','Dr.Nair'),
(4,'Biology','Prof.Sen');

-- INSERT into Students
INSERT INTO Students (student_id,student_name,course_id)VALUES
(201,'Anita',1),
(202,'Rahul',2),
(203,'Meena',2),
(204,'Suresh',5), -- Corse_id 5 does not exist
(205,'Kiran',NULL); -- no course assigned

-- INNER JOIN Students with valid courses

SELECT s.student_id,s.student_name,c.course_name,c.teache
FROM Students S
INNER JOIN Courses c
ON s.course_id=c.course_id;

-- LEFT JOIN All students (even without course)
SELECT s.student_id,s.student_name,c.course_name,c.teache
FROM Students s
LEFT JOIN Courses c
ON s.course_id=c.course_id;

-- RIGHT JOIN All Courses (even without students)

SELECT s.student_id,s.student_name,c.course_name,c.teache
FROM Students s
RIGHT JOIN Courses c
ON s.course_id=c.course_id;

-- FULL OUTER JOIN (MySQL simulation with UNION)
SELECT s.student_id,s.student_name,c.course_name,c.teache
FROM Students s
LEFT JOIN Courses c
ON s.course_id=c.course_id

UNION

SELECT s.student_id,s.student_name,c.course_name,c.teache
FROM Students s
RIGHT JOIN Courses c
ON s.course_id=c.course_id;coursesbusreservationbusreservationbusreservation