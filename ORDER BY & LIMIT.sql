-- Sorting results
SELECT * FROM students ORDER BY gpa;           -- Ascending (default)
SELECT * FROM students ORDER BY gpa DESC;        -- Descending
SELECT * FROM students ORDER BY age ASC, gpa DESC; -- Multiple columns

-- LIMIT (MySQL, PostgreSQL, SQLite)
SELECT * FROM students ORDER BY gpa DESC LIMIT 3;

-- OFFSET (pagination)
SELECT * FROM students LIMIT 3 OFFSET 6;        -- Skip 6, show 3
-- MySQL shorthand: LIMIT 6, 3

-- TOP (SQL Server)
SELECT TOP 3 * FROM students ORDER BY gpa DESC;

-- FETCH (Standard SQL / PostgreSQL)
SELECT * FROM students ORDER BY gpa DESC
FETCH FIRST 3 ROWS ONLY;
