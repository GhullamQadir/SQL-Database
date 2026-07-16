-- Current date/time
SELECT CURRENT_DATE;                    -- Date
SELECT CURRENT_TIME;                    -- Time
SELECT NOW();                           -- DateTime (MySQL/PostgreSQL)
SELECT GETDATE();                       -- SQL Server
SELECT CURRENT_TIMESTAMP;               -- Standard

-- Extract components
SELECT EXTRACT(YEAR FROM enrollment_date) FROM students;    -- PostgreSQL/MySQL
SELECT YEAR(enrollment_date) FROM students;                  -- MySQL/SQL Server
SELECT MONTH(enrollment_date), DAY(enrollment_date) FROM students;

-- Date arithmetic
SELECT DATE_ADD(enrollment_date, INTERVAL 30 DAY) FROM students;  -- MySQL
SELECT enrollment_date + INTERVAL '30 days' FROM students;       -- PostgreSQL
SELECT DATEADD(day, 30, enrollment_date) FROM students;           -- SQL Server

-- Date difference
SELECT DATEDIFF(CURRENT_DATE, enrollment_date) FROM students;     -- MySQL
SELECT AGE(CURRENT_DATE, enrollment_date) FROM students;        -- PostgreSQL

-- Formatting
SELECT DATE_FORMAT(enrollment_date, '%Y-%m-%d') FROM students;    -- MySQL
SELECT TO_CHAR(enrollment_date, 'YYYY-MM-DD') FROM students;      -- PostgreSQL/Oracle
