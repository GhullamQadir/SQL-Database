-- Create a database
CREATE DATABASE school;
USE school;                 -- MySQL / SQL Server
-- \c school;               -- PostgreSQL

-- Create a table
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    age INT DEFAULT 18,
    enrollment_date DATE DEFAULT CURRENT_DATE,
    gpa DECIMAL(3,2) CHECK (gpa >= 0.0 AND gpa <= 4.0)
);

-- View table structure
DESCRIBE students;        -- MySQL
-- \d students             -- PostgreSQL
-- sp_help students;      -- SQL Server

-- Drop table (BE CAREFUL!)
DROP TABLE IF EXISTS students;
