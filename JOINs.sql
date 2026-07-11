-- Setup sample tables
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

INSERT INTO departments VALUES (1,'Cyber Security'), (2, 'Mathematics'), (3, 'Data Science');

CREATE TABLE professors (
    prof_id INT PRIMARY KEY,
    prof_name VARCHAR(50),
    dept_id INT,
    salary DECIMAL(10,2)
);

INSERT INTO professors VALUES 
    (1, 'Prof Dr. Adnan Ahmad', 1, 250000),
    (2, 'Sir Hubdar Ali', 2, 95000),
    (3, 'Dr. Wazir Ali', 3, 180000),
    (4, 'Dr. Wahaj Ali ', NULL, 20000);

-- INNER JOIN (only matching rows)
SELECT p.prof_name, d.dept_name
FROM professors p
INNER JOIN departments d ON p.dept_id = d.dept_id;

-- LEFT JOIN (all left, matched right)
SELECT p.prof_name, d.dept_name
FROM professors p
LEFT JOIN departments d ON p.dept_id = d.dept_id;

-- RIGHT JOIN (all right, matched left)
SELECT p.prof_name, d.dept_name
FROM professors p
RIGHT JOIN departments d ON p.dept_id = d.dept_id;

-- FULL OUTER JOIN (all rows from both)
SELECT p.prof_name, d.dept_name
FROM professors p
FULL OUTER JOIN departments d ON p.dept_id = d.dept_id;  -- Not in MySQL

-- CROSS JOIN (Cartesian product)
SELECT p.prof_name, d.dept_name
FROM professors p
CROSS JOIN departments d;

-- SELF JOIN
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    manager_id INT
);

SELECT e.emp_name AS employee, m.emp_name AS manager
FROM employees e
LEFT JOIN employees m ON e.manager_id = m.emp_id;

-- Multiple JOINs
SELECT s.first_name, c.course_name, d.dept_name
FROM students s
JOIN enrollments e ON s.student_id = e.student_id
JOIN courses c ON e.course_id = c.course_id
JOIN departments d ON c.dept_id = d.dept_id;
