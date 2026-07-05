-- Select all columns
SELECT * FROM students;

-- Select specific columns
SELECT first_name, last_name, gpa FROM students;

-- Aliases (renaming columns)
SELECT first_name AS "First Name", last_name AS "Last Name" FROM students;
SELECT first_name fname, last_name lname FROM students;

-- Expressions in SELECT
SELECT first_name, gpa, gpa * 25 AS percentage_score FROM students;

-- Concatenation
SELECT CONCAT(first_name, ' ', last_name) AS full_name FROM students;  -- MySQL
SELECT first_name || ' ' || last_name AS full_name FROM students;       -- PostgreSQL/SQLite
SELECT first_name + ' ' + last_name AS full_name FROM students;         -- SQL Server

-- DISTINCT (unique values)
SELECT DISTINCT age FROM students;
SELECT COUNT(DISTINCT age) FROM students;
